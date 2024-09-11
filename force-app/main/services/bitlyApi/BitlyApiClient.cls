/**
 * Created by wenboliu on 28/08/2024.
 */

public class BitlyApiClient extends OAS.ApiClient {

    @TestVisible
    private static final String BITLY_CREDENTIAL_NAME = 'Bitly_API';
    private static final String API_TOKEN_ENDPOINT_PATH = '/oauth/access_token';
    private static final String TEST_ACCESS_TOKEN = '12345';
    private static final String SCOPE = '';
    private static Boolean isTestingAccessToken = false;

    private static String accessToken {
        get {
            if (String.isBlank(accessToken)) {
                if (!Test.isRunningTest() || isTestingAccessToken) {
                    try {
                        String clientId = SettingsService.getValueFromSettings(Constant.BITLY_API_CLIENT_ID_SETTING_NAME);
                        String clientSecret = SettingsService.getValueFromSettings(Constant.BITLY_API_CLIENT_SECRET_SETTING_NAME);
                        String endpoint = endpoint;
                        System.debug('clientId::' + clientId + ', clientSecret:: ' + clientSecret + ', endpoint::' + endpoint);

                        if (String.isBlank(clientId) || String.isBlank(clientSecret) || String.isBlank(endpoint)) {
                           //todo error
                        }

                        return new BitlyApiClient().getAccessToken(endpoint, clientId, clientSecret, new Set<String>{
                                ''
                        });
                    } catch (Exception ex) {
                        throw ex;
                    }
                } else {
                    accessToken = TEST_ACCESS_TOKEN;
                }
            }
            return accessToken;
        }
        set;
    }

    private static String endpoint {
        get {
            if (String.isBlank(endpoint)) {
                endpoint = SettingsService.getValueFromSettings(Constant.BITLY_API_ENDPOINT_NAME);
            }
            return endpoint;
        }
        set {
            endpoint = value;
        }
    }

    public String getAccessToken(String accessEndpoint, String clientId, String clientSecret, Set<String> scopes) {
        accessEndpoint = accessEndpoint == null ? endpoint : accessEndpoint;
        scopes = scopes == null ? new Set<String>{
                ''
        } : scopes;
        System.debug('OAuth2AuthenticationService getAccessToken:: ' + OAuth2AuthenticationService.getAccessToken(
                accessEndpoint + API_TOKEN_ENDPOINT_PATH,
                clientId,
                clientSecret,
                scopes));
        return OAuth2AuthenticationService.getAccessToken(
                accessEndpoint + API_TOKEN_ENDPOINT_PATH,
                clientId,
                clientSecret,
                scopes);
    }

    public BitlyApiClient() {
        basePath = 'https://api-ssl.bitly.com';
        calloutName = 'Bitly_API';
    }

    protected override void applyAuthentication(List<String> names, Map<String, Object> headers, List<OAS.Param> query) {
//        headers.put('Authorization', 'Bearer {!$Credential.Password}');
        System.debug('Authorization::' + accessToken);
        headers.put('Authorization', 'Bearer ' + accessToken);

    }

    protected override HttpResponse getResponse(
            String method, String path, Object body, List<Param> query, List<Param> form,
            Map<String, Object> pathParams, Map<String, Object> headers, List<String> accepts,
            List<String> contentTypes, List<String> authMethods) {

        HttpRequest req = new HttpRequest();
        applyAuthentication(authMethods, headers, query);
        req.setMethod(method);
        req.setEndpoint(toEndpoint(path, pathParams, query));
        String contentType = setContentTypeHeader(contentTypes, headers);
        setAcceptHeader(accepts, headers);
        setHeaders(req, headers);

        System.debug('Author::' + req.getHeader('Authorization'));
        System.debug('Endpoint::'+req.getEndpoint());

        if (method != 'GET') {
            req.setBody(toBody(contentType, body, form));
            System.debug('body::' + req.getBody().toString());
        }

        return new Http().send(req);
    }



}