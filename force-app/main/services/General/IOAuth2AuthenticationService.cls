/**
 * Created by wenboliu on 04/09/2024.
 */

public interface IOAuth2AuthenticationService {

    /**
     * @description get the access token using the OAuth 2.0 protocol
     * @param endpoint the endpoint url
     * @param clientId the client Id
     * @param clientSecret the client secret
     * @param scopes the scopes
     * @return the access token
     */
    String getAccessToken(String endpoint, String clientId, String clientSecret, Set<String> scopes);
    String getAuthCode(String endpoint, String scope, String redirectURL, String clientId, Boolean includeGrantedScopes, String accessType);

    }