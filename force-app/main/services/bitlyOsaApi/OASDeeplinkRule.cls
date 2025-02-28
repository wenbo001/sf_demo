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
 * OASDeeplinkRule
 */
public class OASDeeplinkRule implements OAS.MappedProperties {
    /**
     * Get guid
     * @return guid
     */
    public String guid { get; set; }

    /**
     * Get bitlink
     * @return bitlink
     */
    public String bitlink { get; set; }

    /**
     * Get appUriPath
     * @return appUriPath
     */
    public String appUriPath { get; set; }

    /**
     * Get installUrl
     * @return installUrl
     */
    public String installUrl { get; set; }

    /**
     * Get appGuid
     * @return appGuid
     */
    public String appGuid { get; set; }

    /**
     * Get os
     * @return os
     */
    public OASMobileOS os { get; set; }

    /**
     * Get installType
     * @return installType
     */
    public OASInstallPreference installType { get; set; }

    /**
     * ISO timestamp
     * @return created
     */
    public String created { get; set; }

    /**
     * ISO timestamp
     * @return modified
     */
    public String modified { get; set; }

    /**
     * Get brandGuid
     * @return brandGuid
     */
    public String brandGuid { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'app_uri_path' => 'appUriPath',
        'install_url' => 'installUrl',
        'app_guid' => 'appGuid',
        'install_type' => 'installType',
        'brand_guid' => 'brandGuid'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASDeeplinkRule getExample() {
        OASDeeplinkRule deeplinkRule = new OASDeeplinkRule();
          deeplinkRule.guid = '';
          deeplinkRule.bitlink = '';
          deeplinkRule.appUriPath = '';
          deeplinkRule.installUrl = '';
          deeplinkRule.appGuid = '';
          deeplinkRule.os = OASMobileOS.IOS;
          deeplinkRule.installType = OASInstallPreference.AUTO_INSTALL;
          deeplinkRule.created = '';
          deeplinkRule.modified = '';
          deeplinkRule.brandGuid = '';
        return deeplinkRule;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDeeplinkRule) {           
            OASDeeplinkRule deeplinkRule = (OASDeeplinkRule) obj;
            return this.guid == deeplinkRule.guid
                && this.bitlink == deeplinkRule.bitlink
                && this.appUriPath == deeplinkRule.appUriPath
                && this.installUrl == deeplinkRule.installUrl
                && this.appGuid == deeplinkRule.appGuid
                && this.os == deeplinkRule.os
                && this.installType == deeplinkRule.installType
                && this.created == deeplinkRule.created
                && this.modified == deeplinkRule.modified
                && this.brandGuid == deeplinkRule.brandGuid;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (guid == null ? 0 : System.hashCode(guid));
        hashCode = (17 * hashCode) + (bitlink == null ? 0 : System.hashCode(bitlink));
        hashCode = (17 * hashCode) + (appUriPath == null ? 0 : System.hashCode(appUriPath));
        hashCode = (17 * hashCode) + (installUrl == null ? 0 : System.hashCode(installUrl));
        hashCode = (17 * hashCode) + (appGuid == null ? 0 : System.hashCode(appGuid));
        hashCode = (17 * hashCode) + (os == null ? 0 : System.hashCode(os));
        hashCode = (17 * hashCode) + (installType == null ? 0 : System.hashCode(installType));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (modified == null ? 0 : System.hashCode(modified));
        hashCode = (17 * hashCode) + (brandGuid == null ? 0 : System.hashCode(brandGuid));
        return hashCode;
    }
}