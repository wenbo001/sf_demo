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
 * update custom domain fields
 */
public class OASDomainUpdate implements OAS.MappedProperties {
    /**
     * Get rootRedirect
     * @return rootRedirect
     */
    public String rootRedirect { get; set; }

    /**
     * Get wildcardRedirect
     * @return wildcardRedirect
     */
    public String wildcardRedirect { get; set; }

    /**
     * Get httpsEnabled
     * @return httpsEnabled
     */
    public Boolean httpsEnabled { get; set; }

    /**
     * Get hstsEnabled
     * @return hstsEnabled
     */
    public Boolean hstsEnabled { get; set; }

    /**
     * Get upgradeInsecureRequests
     * @return upgradeInsecureRequests
     */
    public Boolean upgradeInsecureRequests { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'root_redirect' => 'rootRedirect',
        'wildcard_redirect' => 'wildcardRedirect',
        'https_enabled' => 'httpsEnabled',
        'hsts_enabled' => 'hstsEnabled',
        'upgrade_insecure_requests' => 'upgradeInsecureRequests'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASDomainUpdate getExample() {
        OASDomainUpdate domainUpdate = new OASDomainUpdate();
          domainUpdate.rootRedirect = '';
          domainUpdate.wildcardRedirect = '';
          domainUpdate.httpsEnabled = true;
          domainUpdate.hstsEnabled = true;
          domainUpdate.upgradeInsecureRequests = true;
        return domainUpdate;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDomainUpdate) {           
            OASDomainUpdate domainUpdate = (OASDomainUpdate) obj;
            return this.rootRedirect == domainUpdate.rootRedirect
                && this.wildcardRedirect == domainUpdate.wildcardRedirect
                && this.httpsEnabled == domainUpdate.httpsEnabled
                && this.hstsEnabled == domainUpdate.hstsEnabled
                && this.upgradeInsecureRequests == domainUpdate.upgradeInsecureRequests;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (rootRedirect == null ? 0 : System.hashCode(rootRedirect));
        hashCode = (17 * hashCode) + (wildcardRedirect == null ? 0 : System.hashCode(wildcardRedirect));
        hashCode = (17 * hashCode) + (httpsEnabled == null ? 0 : System.hashCode(httpsEnabled));
        hashCode = (17 * hashCode) + (hstsEnabled == null ? 0 : System.hashCode(hstsEnabled));
        hashCode = (17 * hashCode) + (upgradeInsecureRequests == null ? 0 : System.hashCode(upgradeInsecureRequests));
        return hashCode;
    }
}