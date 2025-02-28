/**
 * Created by wenboliu on 05/09/2024.
 */
public inherited sharing class EventDomain extends fflib_SObjectDomain implements IEventDomain {

    public class Constructor implements fflib_SObjectDomain.IConstructable {
        public fflib_SObjectDomain construct(List<SObject> records){
            return new EventDomain(records);
        }
    }
    public EventDomain(List<Event> events) {
        super(events);
    }

    public override void onAfterInsert() {
        for(Event eve : (List<Event>) Records) {
            String email = [SELECT Email from User Where Id =: eve.OwnerId ].Email;

            String requestBody = '{'+
                    '  "attendees": ['+
                    '    {'+
                    '      "email": "'+email+'"'+
                    '    }'+
                    '  ],'+
                    '  "end": {'+
                    '    "dateTime": "'+eve.EndDateTime.format('yyyy-MM-dd\'T\'HH:mm:ss-HH:mm')+'"'+
                    '  },'+
                    '  "reminders": {'+
                    '    "useDefault": true'+
                    '  },'+
                    '  "start": {'+
                    '    "dateTime": "'+eve.StartDateTime.format('yyyy-MM-dd\'T\'HH:mm:ss-HH:mm')+'"'+
                    '  },'+
                    '  "summary": "'+eve.Subject+'",'+
                    '  "location": "On LINE."'+
                    '}';

            System.debug('eve::' + eve);
            createGoogleEvent(requestBody);
        }
    }

    @future(callout = true)
    public static void createGoogleEvent(String requestBody) {

        Google_Config__mdt config = Google_Config__mdt.getInstance(Constant.GOOGLE_CONFIG_NAME);

        if (config == null || (config != null && String.isBlank(config.access_token__c))) {
            return;
        }

        String errorMessage = '';
        String endPoint = config.Event_Url__c;
        endPoint = endPoint.replace('{calendarId}', 'liuwenbozccheer@gmail.com');

        String accessToken = config.access_token__c;

        //Boolean isValid = Assignment_GoogleAPITokenUtils.isValid(config);
        //Map<String, Object> refreshTokenMap = new Map<String, Object>();

//        if (!isValid) {
//            refreshTokenMap = Assignment_GoogleAPITokenUtils.refreshToken(config);
//            accessToken = (String) refreshTokenMap.get('access_token__c');
//        }

        Http http = new Http();
        HttpRequest httpReq = GoogleEventService.prepareRequest(endPoint, accessToken, 'POST', requestBody,'application/json');
        HttpResponse response = new HttpResponse();

        try {
            response = http.send(httpReq);
            if (response.getStatusCode() == 200 || response.getStatusCode() == 201) {
                String body = response.getBody();
                System.debug(' Google Event Response ' + body);
//                if (!isValid) {
//                    String fullName = 'Google_Config.' + System.Label.PS_GoogleTokenLabel;
//                    CreateUpdateMetadataUtils.createUpdateMetadata(fullName, System.Label.PS_GoogleTokenLabel, refreshTokenMap);
//                }

            } else {
                errorMessage = 'Unexpected Error while communicating with API. '
                        + 'Status ' + response.getStatus() + ' and Status Code ' + response.getStatuscode();
                System.debug(System.LoggingLevel.DEBUG, 'Exeception Executed ' + response.getBody());
            }
        } catch (System.Exception e) {
            if (String.valueOf(e.getMessage()).startsWith('Unauthorized endpoint')) {
                errorMessage = 'Unauthorize endpoint: An Administer must go to Setup -> Administer -> Security Control ->'
                        + ' Remote Site Setting and add ' + ' ' + endPoint + ' Endpoint';
            } else {
                errorMessage = 'Unexpected Error while communicating with API. '
                        + 'Status ' + response.getStatus() + ' and Status Code ' + response.getStatuscode();
            }
            System.debug(System.LoggingLevel.DEBUG, 'Exeception Executed ' + errorMessage);
        }
    }

}