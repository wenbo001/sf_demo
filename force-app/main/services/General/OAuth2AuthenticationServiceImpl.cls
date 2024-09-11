/**
 * Created by wenboliu on 04/09/2024.
 */

public inherited sharing class OAuth2AuthenticationServiceImpl implements IOAuth2AuthenticationService {
    private static final String ACCESS_TOKEN_PARAMETER_NAME = 'access_token';
    private static final String CODE_PARAMETER_NAME = 'code';

    //public static final String ERROR_PARAMETER_NAME = 'error';
    //public static final String CREDENTIALS_ERROR_MESSAGE = 'invalid_client';

    public String getAuthCode(String endpoint, String scope, String redirectURL, String clientId, Boolean includeGrantedScopes, String accessType) {
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        request.setBody(String.join(new List <String>{
                'response_type=code',
                'access_type=' + accessType,
                'redirect_uri=' + redirectURL,
                'scope=' + scope,
                'include_granted_scopes=' + includeGrantedScopes,
                'client_id=' + clientId
        }, '&'));
        HttpResponse response = new Http().send(request);
        System.debug('response::' + response.getBody());

        if (response.getStatusCode() == 200) {
            return response.getBody();
//            Map <String, String> responseMap = (Map <String, String>) JSON.deserialize(response.getBody(), Map <String, String>.class);
//            return responseMap.get(CODE_PARAMETER_NAME);
        } else {
            //throw new Exception();
            return null;
        }
    }

    public PageReference initiate(String authorizationUrl, String clientId, String redirect_uri, String scope, String state) {
        String url = authorizationUrl +
                '?scope=' + scope +
                '&client_id=' + clientId +
                '&redirect_uri=' +
                redirect_uri +
                '&state=' + state +
                '&response_type=code' +
                '&access_typ=offline';
        System.debug('code:::' + new PageReference(url));
        return new PageReference(url);
    }

    public String getAccessToken(String tokenUrl, String clientId, String clientSecret, String code, String redirectUri, String currentUrl){
        String codeFromUrl = getCodeFromUrl(currentUrl);
        if(String.isNotEmpty(codeFromUrl)) {
            code = codeFromUrl;
        }
        System.debug(' input code::' + code);
        Map<String, String> parametersMap = new Map<String, String>();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(tokenUrl);
        req.setHeader('Accept', 'application/json');
        req.setHeader('Content-Type','application/x-www-form-urlencoded');
        req.setMethod('POST');
        parametersMap.put('client_id', clientId);
        parametersMap.put('client_secret', clientSecret);
        parametersMap.put('code', code);
        parametersMap.put('redirect_uri', redirectUri);
        parametersMap.put('grant_type', 'authorization_code');
        req.setBody(getStringFromParametersMap(parametersMap));

        HttpResponse res = new Http().send(req);

        if (res.getStatusCode() == 200) {
            Map<String, String> responseMap = (Map<String, String>) JSON.deserialize(res.getBody(), Map<String, String>.class);
            return responseMap.get(ACCESS_TOKEN_PARAMETER_NAME);
        } else {
            System.debug('error::' + res.getStatusCode());
            return null;
        }
    }
    public String getAccessToken(String endpoint, String clientId, String clientSecret, Set<String> scopes) {
        HttpRequest request = new HttpRequest();
        request.setHeader('Authorization', 'Basic ' + EncodingUtil.base64Encode(Blob.valueOf(clientId + ':' + clientSecret)));
        request.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        String userName = SettingsService.getValueFromSettings(Constant.BITLY_API_USER_NAME_NAME);
        String password = SettingsService.getValueFromSettings(Constant.BITLY_API_PASSWORD_NAME);
        request.setBody(String.join(new List <String>{
                'grant_type=password',
                'username=' + userName,
                'password=' + password,
                'scope=' + String.join(new List<String>(scopes), ' ')
        }, '&'));
        HttpResponse response = new Http().send(request);

        if (response.getStatusCode() == 200) {
            Map <String, String> responseMap = (Map <String, String>) JSON.deserialize(response.getBody(), Map <String, String>.class);
            return responseMap.get(ACCESS_TOKEN_PARAMETER_NAME);
        } else {
            //throw new Exception();
            return null;
        }
    }

    private String getStringFromParametersMap(Map<String, String> parametersMap) {
        List<String> parametersList = new List<String>();

        for (String key : parametersMap.keySet()) {
            parametersList.add(key + '=' + parametersMap.get(key));
        }

        return String.join(parametersList, '&');
    }

    public static Map<String, String> parseQueryString(String url) {
        Map<String, String> queryParams = new Map<String, String>();

        // Extract query string from URL
        String queryString = url.contains('?') ? url.substring(url.indexOf('?') + 1) : url;

        // Split query string into key-value pairs
        List<String> pairs = queryString.split('&');

        for (String pair : pairs) {
            List<String> keyValue = pair.split('=');

            if (keyValue.size() == 2) {
                String key = EncodingUtil.urlDecode(keyValue[0], 'UTF-8');
                String value = EncodingUtil.urlDecode(keyValue[1], 'UTF-8');
                queryParams.put(key, value);
            }
        }

        return queryParams;
    }

    public static String getCodeFromUrl(String url) {
        Map<String, String> queryParams = parseQueryString(url);
        return queryParams.get('code');
    }

}