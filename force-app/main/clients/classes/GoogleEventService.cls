
/**
 * Created by wenboliu on 10/09/2024.
 */

public with sharing class GoogleEventService {

    public static Boolean isValid(Google_Config__mdt config){
        Boolean isValid = true;
        if(config.expires_in_time__c < System.now()){
            isValid = false;
        }
        return isValid;
    }

    public static HttpRequest prepareRequest(String endPoint, String accessToken, String method, String requestBody,
            String contentType){

        httpRequest httpReq = new httpRequest();
        httpReq.setMethod(method);
        httpReq.setEndpoint(endPoint);
        httpReq.setHeader('Content-Type', contentType);
        httpReq.setHeader('Accept', 'application/json');
        if(!String.isBlank(accessToken)){
            httpReq.setHeader('Authorization', 'Bearer '+accessToken);
        }
        if(!String.isBlank(requestBody)){
            httpReq.setBody(requestBody);
        }
        return httpReq;

    }

//    public static Map<String, Object> refreshToken(Google_Config__mdt config){
//
//        String tokenUrl = config.token_url__c;
//
//        String requestBody = 'grant_type=refresh_token&client_id='+config.client_id__c
//                +'&client_secret='+config.client_secret__c+'&refresh_token='+config.refresh_token__c;
//
//        System.debug(requestBody);
//        HttpRequest httpReq = GoogleEventService.prepareRequest(tokenUrl,'POST',requestBody,'application/json', 'application/x-www-form-urlencoded');
//        Map<String, Object> fieldWithValuesMap = new Map<String, Object>();
//        try{
//            HttpResponse httpRes = (new Http()).send(httpReq);
//            if(httpRes.getStatusCode() == 200 || httpRes.getStatusCode() == 201 ){
//                //Assignment_GoogleTokenWrapper wrapper = (Assignment_GoogleTokenWrapper)System.JSON.deserialize(httpRes.getBody(), Assignment_GoogleTokenWrapper.class);
//                //fieldWithValuesMap.put('access_token__c', wrapper.access_token);
//                //fieldWithValuesMap.put('expires_in_time__c', System.now().addSeconds(wrapper.expires_in) );
//            }else{
//
//            }
//        }catch(System.CalloutException ex){
//
//        }catch(System.Exception ex){
//
//        }
//        return fieldWithValuesMap;
//    }
}