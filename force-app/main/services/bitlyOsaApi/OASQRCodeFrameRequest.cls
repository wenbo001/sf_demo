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
 * OASQRCodeFrameRequest
 */
public class OASQRCodeFrameRequest {
    /**
     * Get id
     * @return id
     */
    public OASQRCodeFrameType id { get; set; }

    /**
     * Get colors
     * @return colors
     */
    public OASQRCodeFrameRequestColors colors { get; set; }

    /**
     * Get text
     * @return text
     */
    public OASQRCodeFrameRequestText text { get; set; }

    public static OASQRCodeFrameRequest getExample() {
        OASQRCodeFrameRequest qrCodeFrameRequest = new OASQRCodeFrameRequest();
          qrCodeFrameRequest.id = OASQRCodeFrameType.URL;
          qrCodeFrameRequest.colors = OASQRCodeFrameRequestColors.getExample();
          qrCodeFrameRequest.text = OASQRCodeFrameRequestText.getExample();
        return qrCodeFrameRequest;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASQRCodeFrameRequest) {           
            OASQRCodeFrameRequest qrCodeFrameRequest = (OASQRCodeFrameRequest) obj;
            return this.id == qrCodeFrameRequest.id
                && this.colors == qrCodeFrameRequest.colors
                && this.text == qrCodeFrameRequest.text;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (colors == null ? 0 : System.hashCode(colors));
        hashCode = (17 * hashCode) + (text == null ? 0 : System.hashCode(text));
        return hashCode;
    }
}