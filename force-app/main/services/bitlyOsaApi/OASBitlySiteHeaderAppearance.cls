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
 * OASBitlySiteHeaderAppearance
 */
public class OASBitlySiteHeaderAppearance implements OAS.MappedProperties {
    /**
     * Get bannerType
     * @return bannerType
     */
    public OASSiteBannerType bannerType { get; set; }

    /**
     * Get profileImageSize
     * @return profileImageSize
     */
    public OASSiteProfileImageSize profileImageSize { get; set; }

    /**
     * Get profileImageShape
     * @return profileImageShape
     */
    public OASSiteProfileImageShape profileImageShape { get; set; }

    /**
     * Get profileImageBorderSize
     * @return profileImageBorderSize
     */
    public OASSiteProfileImageBorderSize profileImageBorderSize { get; set; }

    /**
     * Get profileImageType
     * @return profileImageType
     */
    public OASSiteProfileImageType profileImageType { get; set; }

    /**
     * Get profileImageLocation
     * @return profileImageLocation
     */
    public OASSiteProfileImageLocation profileImageLocation { get; set; }

    /**
     * Get profileImageOverflow
     * @return profileImageOverflow
     */
    public Boolean profileImageOverflow { get; set; }

    /**
     * Get textLocation
     * @return textLocation
     */
    public OASSiteTextLocation textLocation { get; set; }

    /**
     * Get titleSize
     * @return titleSize
     */
    public OASSiteTextSizeEnum titleSize { get; set; }

    /**
     * Get titleAlignment
     * @return titleAlignment
     */
    public OASSiteTextAlignmentEnum titleAlignment { get; set; }

    /**
     * Get titleWeight
     * @return titleWeight
     */
    public OASSiteTextWeightEnum titleWeight { get; set; }

    /**
     * Get titleBorderType
     * @return titleBorderType
     */
    public OASSiteTextBorderTypeEnum titleBorderType { get; set; }

    /**
     * Get descriptionSize
     * @return descriptionSize
     */
    public OASSiteTextSizeEnum descriptionSize { get; set; }

    /**
     * Get descriptionAlignment
     * @return descriptionAlignment
     */
    public OASSiteTextAlignmentEnum descriptionAlignment { get; set; }

    /**
     * Get descriptionWeight
     * @return descriptionWeight
     */
    public OASSiteTextWeightEnum descriptionWeight { get; set; }

    /**
     * Get descriptionBorderType
     * @return descriptionBorderType
     */
    public OASSiteTextBorderTypeEnum descriptionBorderType { get; set; }

    /**
     * Get headerBackgroundColor
     * @return headerBackgroundColor
     */
    public String headerBackgroundColor { get; set; }

    /**
     * Get bannerImageUrl
     * @return bannerImageUrl
     */
    public String bannerImageUrl { get; set; }

    /**
     * Get headerStylePreference
     * @return headerStylePreference
     */
    public OASSiteStylePreference headerStylePreference { get; set; }

    /**
     * Get bannerImageAlignment
     * @return bannerImageAlignment
     */
    public OASSiteImageAlignment bannerImageAlignment { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'banner_type' => 'bannerType',
        'profile_image_size' => 'profileImageSize',
        'profile_image_shape' => 'profileImageShape',
        'profile_image_border_size' => 'profileImageBorderSize',
        'profile_image_type' => 'profileImageType',
        'profile_image_location' => 'profileImageLocation',
        'profile_image_overflow' => 'profileImageOverflow',
        'text_location' => 'textLocation',
        'title_size' => 'titleSize',
        'title_alignment' => 'titleAlignment',
        'title_weight' => 'titleWeight',
        'title_border_type' => 'titleBorderType',
        'description_size' => 'descriptionSize',
        'description_alignment' => 'descriptionAlignment',
        'description_weight' => 'descriptionWeight',
        'description_border_type' => 'descriptionBorderType',
        'header_background_color' => 'headerBackgroundColor',
        'banner_image_url' => 'bannerImageUrl',
        'header_style_preference' => 'headerStylePreference',
        'banner_image_alignment' => 'bannerImageAlignment'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASBitlySiteHeaderAppearance getExample() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance = new OASBitlySiteHeaderAppearance();
          bitlySiteHeaderAppearance.bannerType = OASSiteBannerType.FRAME;
          bitlySiteHeaderAppearance.profileImageSize = OASSiteProfileImageSize.LG;
          bitlySiteHeaderAppearance.profileImageShape = OASSiteProfileImageShape.ROUND;
          bitlySiteHeaderAppearance.profileImageBorderSize = OASSiteProfileImageBorderSize.LG;
          bitlySiteHeaderAppearance.profileImageType = OASSiteProfileImageType.REPEATING;
          bitlySiteHeaderAppearance.profileImageLocation = OASSiteProfileImageLocation.CENTER;
          bitlySiteHeaderAppearance.profileImageOverflow = true;
          bitlySiteHeaderAppearance.textLocation = OASSiteTextLocation.BOTTOM;
          bitlySiteHeaderAppearance.titleSize = OASSiteTextSizeEnum.LG;
          bitlySiteHeaderAppearance.titleAlignment = OASSiteTextAlignmentEnum.CENTER;
          bitlySiteHeaderAppearance.titleWeight = OASSiteTextWeightEnum.BOLD;
          bitlySiteHeaderAppearance.titleBorderType = OASSiteTextBorderTypeEnum.ABOVE_AND_BELOW;
          bitlySiteHeaderAppearance.descriptionSize = OASSiteTextSizeEnum.LG;
          bitlySiteHeaderAppearance.descriptionAlignment = OASSiteTextAlignmentEnum.CENTER;
          bitlySiteHeaderAppearance.descriptionWeight = OASSiteTextWeightEnum.BOLD;
          bitlySiteHeaderAppearance.descriptionBorderType = OASSiteTextBorderTypeEnum.ABOVE_AND_BELOW;
          bitlySiteHeaderAppearance.headerBackgroundColor = '';
          bitlySiteHeaderAppearance.bannerImageUrl = '';
          bitlySiteHeaderAppearance.headerStylePreference = OASSiteStylePreference.CUSTOM;
          bitlySiteHeaderAppearance.bannerImageAlignment = OASSiteImageAlignment.FIT;
        return bitlySiteHeaderAppearance;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBitlySiteHeaderAppearance) {           
            OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance = (OASBitlySiteHeaderAppearance) obj;
            return this.bannerType == bitlySiteHeaderAppearance.bannerType
                && this.profileImageSize == bitlySiteHeaderAppearance.profileImageSize
                && this.profileImageShape == bitlySiteHeaderAppearance.profileImageShape
                && this.profileImageBorderSize == bitlySiteHeaderAppearance.profileImageBorderSize
                && this.profileImageType == bitlySiteHeaderAppearance.profileImageType
                && this.profileImageLocation == bitlySiteHeaderAppearance.profileImageLocation
                && this.profileImageOverflow == bitlySiteHeaderAppearance.profileImageOverflow
                && this.textLocation == bitlySiteHeaderAppearance.textLocation
                && this.titleSize == bitlySiteHeaderAppearance.titleSize
                && this.titleAlignment == bitlySiteHeaderAppearance.titleAlignment
                && this.titleWeight == bitlySiteHeaderAppearance.titleWeight
                && this.titleBorderType == bitlySiteHeaderAppearance.titleBorderType
                && this.descriptionSize == bitlySiteHeaderAppearance.descriptionSize
                && this.descriptionAlignment == bitlySiteHeaderAppearance.descriptionAlignment
                && this.descriptionWeight == bitlySiteHeaderAppearance.descriptionWeight
                && this.descriptionBorderType == bitlySiteHeaderAppearance.descriptionBorderType
                && this.headerBackgroundColor == bitlySiteHeaderAppearance.headerBackgroundColor
                && this.bannerImageUrl == bitlySiteHeaderAppearance.bannerImageUrl
                && this.headerStylePreference == bitlySiteHeaderAppearance.headerStylePreference
                && this.bannerImageAlignment == bitlySiteHeaderAppearance.bannerImageAlignment;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (bannerType == null ? 0 : System.hashCode(bannerType));
        hashCode = (17 * hashCode) + (profileImageSize == null ? 0 : System.hashCode(profileImageSize));
        hashCode = (17 * hashCode) + (profileImageShape == null ? 0 : System.hashCode(profileImageShape));
        hashCode = (17 * hashCode) + (profileImageBorderSize == null ? 0 : System.hashCode(profileImageBorderSize));
        hashCode = (17 * hashCode) + (profileImageType == null ? 0 : System.hashCode(profileImageType));
        hashCode = (17 * hashCode) + (profileImageLocation == null ? 0 : System.hashCode(profileImageLocation));
        hashCode = (17 * hashCode) + (profileImageOverflow == null ? 0 : System.hashCode(profileImageOverflow));
        hashCode = (17 * hashCode) + (textLocation == null ? 0 : System.hashCode(textLocation));
        hashCode = (17 * hashCode) + (titleSize == null ? 0 : System.hashCode(titleSize));
        hashCode = (17 * hashCode) + (titleAlignment == null ? 0 : System.hashCode(titleAlignment));
        hashCode = (17 * hashCode) + (titleWeight == null ? 0 : System.hashCode(titleWeight));
        hashCode = (17 * hashCode) + (titleBorderType == null ? 0 : System.hashCode(titleBorderType));
        hashCode = (17 * hashCode) + (descriptionSize == null ? 0 : System.hashCode(descriptionSize));
        hashCode = (17 * hashCode) + (descriptionAlignment == null ? 0 : System.hashCode(descriptionAlignment));
        hashCode = (17 * hashCode) + (descriptionWeight == null ? 0 : System.hashCode(descriptionWeight));
        hashCode = (17 * hashCode) + (descriptionBorderType == null ? 0 : System.hashCode(descriptionBorderType));
        hashCode = (17 * hashCode) + (headerBackgroundColor == null ? 0 : System.hashCode(headerBackgroundColor));
        hashCode = (17 * hashCode) + (bannerImageUrl == null ? 0 : System.hashCode(bannerImageUrl));
        hashCode = (17 * hashCode) + (headerStylePreference == null ? 0 : System.hashCode(headerStylePreference));
        hashCode = (17 * hashCode) + (bannerImageAlignment == null ? 0 : System.hashCode(bannerImageAlignment));
        return hashCode;
    }
}