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
 * Request to create a preview of a QRCode
 */
public class OASPreviewQRCodeRequestV2 implements OAS.MappedProperties {
    /**
     * Get renderCustomizations
     * @return renderCustomizations
     */
    public OASQRCodeCustomizations renderCustomizations { get; set; }

    /**
     * Get staticContent
     * @return staticContent
     */
    public OASQRCodeStatic staticContent { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'render_customizations' => 'renderCustomizations',
        'static_content' => 'staticContent'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASPreviewQRCodeRequestV2 getExample() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV2 = new OASPreviewQRCodeRequestV2();
          previewQRCodeRequestV2.renderCustomizations = OASQRCodeCustomizations.getExample();
          previewQRCodeRequestV2.staticContent = OASQRCodeStatic.getExample();
        return previewQRCodeRequestV2;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASPreviewQRCodeRequestV2) {           
            OASPreviewQRCodeRequestV2 previewQRCodeRequestV2 = (OASPreviewQRCodeRequestV2) obj;
            return this.renderCustomizations == previewQRCodeRequestV2.renderCustomizations
                && this.staticContent == previewQRCodeRequestV2.staticContent;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (renderCustomizations == null ? 0 : System.hashCode(renderCustomizations));
        hashCode = (17 * hashCode) + (staticContent == null ? 0 : System.hashCode(staticContent));
        return hashCode;
    }
}