/*
 * Bitly API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 4.0.0
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASOAuthApp
 */
public class OASOAuthApp implements OAS.MappedProperties {
    /**
     * Get name
     * @return name
     */
    public String name { get; set; }

    /**
     * Get clientId
     * @return clientId
     */
    public String clientId { get; set; }

    /**
     * Get description
     * @return description
     */
    public String description { get; set; }

    /**
     * Get link
     * @return link
     */
    public String link { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'client_id' => 'clientId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASOAuthApp getExample() {
        OASOAuthApp oauthApp = new OASOAuthApp();
          oauthApp.name = '';
          oauthApp.clientId = '';
          oauthApp.description = '';
          oauthApp.link = '';
        return oauthApp;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASOAuthApp) {           
            OASOAuthApp oauthApp = (OASOAuthApp) obj;
            return this.name == oauthApp.name
                && this.clientId == oauthApp.clientId
                && this.description == oauthApp.description
                && this.link == oauthApp.link;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (clientId == null ? 0 : System.hashCode(clientId));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        hashCode = (17 * hashCode) + (link == null ? 0 : System.hashCode(link));
        return hashCode;
    }
}