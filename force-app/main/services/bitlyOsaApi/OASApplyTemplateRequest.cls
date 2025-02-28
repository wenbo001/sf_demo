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
 * OASApplyTemplateRequest
 */
public class OASApplyTemplateRequest implements OAS.MappedProperties {
    /**
     * Get templateGuid
     * @return templateGuid
     */
    public String templateGuid { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'template_guid' => 'templateGuid'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASApplyTemplateRequest getExample() {
        OASApplyTemplateRequest applyTemplateRequest = new OASApplyTemplateRequest();
          applyTemplateRequest.templateGuid = 'T1234567890';
        return applyTemplateRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASApplyTemplateRequest) {           
            OASApplyTemplateRequest applyTemplateRequest = (OASApplyTemplateRequest) obj;
            return this.templateGuid == applyTemplateRequest.templateGuid;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (templateGuid == null ? 0 : System.hashCode(templateGuid));
        return hashCode;
    }
}