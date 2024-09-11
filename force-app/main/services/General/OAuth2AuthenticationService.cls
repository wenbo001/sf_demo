/**
 * Created by wenboliu on 04/09/2024.
 */

public inherited sharing class OAuth2AuthenticationService {

    /**
     * @description get the access token using the OAuth 2.0 protocol
     * @param endpoint the endpoint url
     * @param clientId the client Id
     * @param clientSecret the client secret
     * @param scopes the scopes
     * @return the access token
     */
    public static String getAccessToken(String endpoint, String clientId, String clientSecret, Set<String> scopes){
        return newInstance().getAccessToken(endpoint, clientId, clientSecret, scopes);
    }

    public static String getAuthCode(String endpoint, String scope, String redirectURL, String clientId, Boolean includeGrantedScopes, String accessType) {
        return newInstance().getAuthCode(endpoint, scope, redirectURL, clientId, includeGrantedScopes, accessType);
    }

        private static IOAuth2AuthenticationService newInstance() {
        return (IOAuth2AuthenticationService) Application.Service.newInstance(IOAuth2AuthenticationService.class);
    }
}