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
 * OASBasicInfo
 */
public class OASBasicInfo implements OAS.MappedProperties {
    /**
     * Get companyName
     * @return companyName
     */
    public String companyName { get; set; }

    /**
     * Get vatId
     * @return vatId
     */
    public String vatId { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'company_name' => 'companyName',
        'vat_id' => 'vatId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

//    private static final Map<String, String> propertyMappings = new Map<String, String>{
//        'company_name' => 'companyName',
//        'vat_id' => 'vatId'
//    };

    //public Map<String, String> getPropertyMappings() {
        //return propertyMappings;
   //}

    public static OASBasicInfo getExample() {
        OASBasicInfo basicInfo = new OASBasicInfo();
          basicInfo.companyName = '';
          basicInfo.vatId = '';
        return basicInfo;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBasicInfo) {           
            OASBasicInfo basicInfo = (OASBasicInfo) obj;
            return this.companyName == basicInfo.companyName
                && this.vatId == basicInfo.vatId;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (companyName == null ? 0 : System.hashCode(companyName));
        hashCode = (17 * hashCode) + (vatId == null ? 0 : System.hashCode(vatId));
        return hashCode;
    }
}