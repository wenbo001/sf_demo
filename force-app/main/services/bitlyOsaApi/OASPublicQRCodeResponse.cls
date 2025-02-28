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
 * Public QR code Response
 */
public class OASPublicQRCodeResponse implements OAS.MappedProperties {
    /**
     * Get qrCode
     * @return qrCode
     */
    public OASQRCodeMinimal qrCode { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'qr_code' => 'qrCode'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASPublicQRCodeResponse getExample() {
        OASPublicQRCodeResponse publicQRCodeResponse = new OASPublicQRCodeResponse();
          publicQRCodeResponse.qrCode = OASQRCodeMinimal.getExample();
        return publicQRCodeResponse;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASPublicQRCodeResponse) {           
            OASPublicQRCodeResponse publicQRCodeResponse = (OASPublicQRCodeResponse) obj;
            return this.qrCode == publicQRCodeResponse.qrCode;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (qrCode == null ? 0 : System.hashCode(qrCode));
        return hashCode;
    }
}