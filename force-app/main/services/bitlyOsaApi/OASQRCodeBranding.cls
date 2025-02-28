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
 * OASQRCodeBranding
 */
public class OASQRCodeBranding implements OAS.MappedProperties {
    /**
     * A boolean that determines if the QR code should have the bitly brand in its bottom right corner
     * @return bitlyBrand
     */
    public Boolean bitlyBrand { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'bitly_brand' => 'bitlyBrand'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASQRCodeBranding getExample() {
        OASQRCodeBranding qrCodeBranding = new OASQRCodeBranding();
          qrCodeBranding.bitlyBrand = true;
        return qrCodeBranding;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASQRCodeBranding) {           
            OASQRCodeBranding qrCodeBranding = (OASQRCodeBranding) obj;
            return this.bitlyBrand == qrCodeBranding.bitlyBrand;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (bitlyBrand == null ? 0 : System.hashCode(bitlyBrand));
        return hashCode;
    }
}