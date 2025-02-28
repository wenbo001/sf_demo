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
 * Request to redirect a QRCode
 */
public class OASRedirectQRCodeRequest implements OAS.MappedProperties {
    /**
     * Get brandGuid
     * @return brandGuid
     */
    public String brandGuid { get; set; }

    /**
     * Get longUrl
     * @return longUrl
     */
    public String longUrl { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'brand_guid' => 'brandGuid',
        'long_url' => 'longUrl'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASRedirectQRCodeRequest getExample() {
        OASRedirectQRCodeRequest redirectQRCodeRequest = new OASRedirectQRCodeRequest();
          redirectQRCodeRequest.brandGuid = 'B1234567890';
          redirectQRCodeRequest.longUrl = 'https://www.google.com';
        return redirectQRCodeRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRedirectQRCodeRequest) {           
            OASRedirectQRCodeRequest redirectQRCodeRequest = (OASRedirectQRCodeRequest) obj;
            return this.brandGuid == redirectQRCodeRequest.brandGuid
                && this.longUrl == redirectQRCodeRequest.longUrl;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (brandGuid == null ? 0 : System.hashCode(brandGuid));
        hashCode = (17 * hashCode) + (longUrl == null ? 0 : System.hashCode(longUrl));
        return hashCode;
    }
}