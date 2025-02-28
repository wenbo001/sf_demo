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
 * Info needed for domain validation
 */
public class OASPublicValidate implements OAS.MappedProperties {
    /**
     * Get organizationGuid
     * @return organizationGuid
     */
    public String organizationGuid { get; set; }

    /**
     * Get customDomain
     * @return customDomain
     */
    public String customDomain { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'organization_guid' => 'organizationGuid',
        'custom_domain' => 'customDomain'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASPublicValidate getExample() {
        OASPublicValidate publicValidate = new OASPublicValidate();
          publicValidate.organizationGuid = '';
          publicValidate.customDomain = '';
        return publicValidate;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASPublicValidate) {           
            OASPublicValidate publicValidate = (OASPublicValidate) obj;
            return this.organizationGuid == publicValidate.organizationGuid
                && this.customDomain == publicValidate.customDomain;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (organizationGuid == null ? 0 : System.hashCode(organizationGuid));
        hashCode = (17 * hashCode) + (customDomain == null ? 0 : System.hashCode(customDomain));
        return hashCode;
    }
}