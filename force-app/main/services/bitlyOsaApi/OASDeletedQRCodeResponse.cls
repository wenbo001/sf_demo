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
 * OASDeletedQRCodeResponse
 */
public class OASDeletedQRCodeResponse implements OAS.MappedProperties {
    /**
     * The QR code\'s id, as a guid
     * @return qrcodeId
     */
    public String qrcodeId { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'qrcode_id' => 'qrcodeId'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASDeletedQRCodeResponse getExample() {
        OASDeletedQRCodeResponse deletedQRCodeResponse = new OASDeletedQRCodeResponse();
          deletedQRCodeResponse.qrcodeId = '';
        return deletedQRCodeResponse;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASDeletedQRCodeResponse) {           
            OASDeletedQRCodeResponse deletedQRCodeResponse = (OASDeletedQRCodeResponse) obj;
            return this.qrcodeId == deletedQRCodeResponse.qrcodeId;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (qrcodeId == null ? 0 : System.hashCode(qrcodeId));
        return hashCode;
    }
}