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
 * Options for customizing a QR Code\&#39;s appearance
 */
public class OASQRCodeCustomizations implements OAS.MappedProperties {
    /**
     * The QR code\'s background color in hex code format with values for alpha channel
     * @return backgroundColor
     */
    public String backgroundColor { get; set; }

    /**
     * The QR code\'s dot pattern color in hex code format
     * @return dotPatternColor
     */
    public String dotPatternColor { get; set; }

    /**
     * Get dotPatternType
     * @return dotPatternType
     */
    public OASQRCodeDotPatternType dotPatternType { get; set; }

    /**
     * Get corners
     * @return corners
     */
    public OASQRCodeCorners corners { get; set; }

    /**
     * Get gradient
     * @return gradient
     */
    public OASQRCodeGradient gradient { get; set; }

    /**
     * Get backgroundGradient
     * @return backgroundGradient
     */
    public OASQRCodeGradient backgroundGradient { get; set; }

    /**
     * Get logo
     * @return logo
     */
    public OASQRCodeLogo logo { get; set; }

    /**
     * Get frame
     * @return frame
     */
    public OASQRCodeFrameRequest frame { get; set; }

    /**
     * Get text
     * @return text
     */
    public OASQRCodeText text { get; set; }

    /**
     * Get shape
     * @return shape
     */
    public OASQRCodeShape shape { get; set; }

    /**
     * Get branding
     * @return branding
     */
    public OASQRCodeBranding branding { get; set; }

    /**
     * Get specSettings
     * @return specSettings
     */
    public OASQRCodeSpecSettings specSettings { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'background_color' => 'backgroundColor',
        'dot_pattern_color' => 'dotPatternColor',
        'dot_pattern_type' => 'dotPatternType',
        'background_gradient' => 'backgroundGradient',
        'spec_settings' => 'specSettings'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASQRCodeCustomizations getExample() {
        OASQRCodeCustomizations qrCodeCustomizations = new OASQRCodeCustomizations();
          qrCodeCustomizations.backgroundColor = '#ff07d280';
          qrCodeCustomizations.dotPatternColor = '#ff07d2';
          qrCodeCustomizations.dotPatternType = OASQRCodeDotPatternType.x_BLOB;
          qrCodeCustomizations.corners = OASQRCodeCorners.getExample();
          qrCodeCustomizations.gradient = OASQRCodeGradient.getExample();
          qrCodeCustomizations.backgroundGradient = OASQRCodeGradient.getExample();
          qrCodeCustomizations.logo = OASQRCodeLogo.getExample();
          qrCodeCustomizations.frame = OASQRCodeFrameRequest.getExample();
          qrCodeCustomizations.text = OASQRCodeText.getExample();
          qrCodeCustomizations.shape = OASQRCodeShape.getExample();
          qrCodeCustomizations.branding = OASQRCodeBranding.getExample();
          qrCodeCustomizations.specSettings = OASQRCodeSpecSettings.getExample();
        return qrCodeCustomizations;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASQRCodeCustomizations) {           
            OASQRCodeCustomizations qrCodeCustomizations = (OASQRCodeCustomizations) obj;
            return this.backgroundColor == qrCodeCustomizations.backgroundColor
                && this.dotPatternColor == qrCodeCustomizations.dotPatternColor
                && this.dotPatternType == qrCodeCustomizations.dotPatternType
                && this.corners == qrCodeCustomizations.corners
                && this.gradient == qrCodeCustomizations.gradient
                && this.backgroundGradient == qrCodeCustomizations.backgroundGradient
                && this.logo == qrCodeCustomizations.logo
                && this.frame == qrCodeCustomizations.frame
                && this.text == qrCodeCustomizations.text
                && this.shape == qrCodeCustomizations.shape
                && this.branding == qrCodeCustomizations.branding
                && this.specSettings == qrCodeCustomizations.specSettings;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (backgroundColor == null ? 0 : System.hashCode(backgroundColor));
        hashCode = (17 * hashCode) + (dotPatternColor == null ? 0 : System.hashCode(dotPatternColor));
        hashCode = (17 * hashCode) + (dotPatternType == null ? 0 : System.hashCode(dotPatternType));
        hashCode = (17 * hashCode) + (corners == null ? 0 : System.hashCode(corners));
        hashCode = (17 * hashCode) + (gradient == null ? 0 : System.hashCode(gradient));
        hashCode = (17 * hashCode) + (backgroundGradient == null ? 0 : System.hashCode(backgroundGradient));
        hashCode = (17 * hashCode) + (logo == null ? 0 : System.hashCode(logo));
        hashCode = (17 * hashCode) + (frame == null ? 0 : System.hashCode(frame));
        hashCode = (17 * hashCode) + (text == null ? 0 : System.hashCode(text));
        hashCode = (17 * hashCode) + (shape == null ? 0 : System.hashCode(shape));
        hashCode = (17 * hashCode) + (branding == null ? 0 : System.hashCode(branding));
        hashCode = (17 * hashCode) + (specSettings == null ? 0 : System.hashCode(specSettings));
        return hashCode;
    }
}