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
 * OASLaunchpad
 */
public class OASLaunchpad implements OAS.MappedProperties {
    /**
     * Get launchpadId
     * @return launchpadId
     */
    public String launchpadId { get; set; }

    /**
     * Get draftId
     * @return draftId
     */
    public String draftId { get; set; }

    /**
     * Get isEdited
     * @return isEdited
     */
    public Boolean isEdited { get; set; }

    /**
     * Get domain
     * @return domain
     */
    public String domain { get; set; }

    /**
     * Get keyword
     * @return keyword
     */
    public String keyword { get; set; }

    /**
     * Get uri
     * @return uri
     */
    public String uri { get; set; }

    /**
     * Get isActive
     * @return isActive
     */
    public Boolean isActive { get; set; }

    /**
     * Get launchpadAppearance
     * @return launchpadAppearance
     */
    public OASLaunchpadAppearance launchpadAppearance { get; set; }

    /**
     * Get images
     * @return images
     */
    public OASLaunchpadImages images { get; set; }

    /**
     * Get buttons
     * @return buttons
     */
    public List<OASLaunchpadButton> buttons { get; set; }

    /**
     * Get socials
     * @return socials
     */
    public List<OASLaunchpadSocial> socials { get; set; }

    /**
     * Get scheme
     * @return scheme
     */
    public String scheme { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'launchpad_id' => 'launchpadId',
        'draft_id' => 'draftId',
        'is_edited' => 'isEdited',
        'is_active' => 'isActive',
        'launchpad_appearance' => 'launchpadAppearance'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public OASLaunchpad() {
        buttons = new List<OASLaunchpadButton>();
        socials = new List<OASLaunchpadSocial>();
    }

    public static OASLaunchpad getExample() {
        OASLaunchpad launchpad = new OASLaunchpad();
          launchpad.launchpadId = 'M1234567890';
          launchpad.draftId = 'M1234567890';
          launchpad.isEdited = true;
          launchpad.domain = 'bit.ly';
          launchpad.keyword = 'bitlySocial';
          launchpad.uri = 'bit.ly/bio/bitlySocial';
          launchpad.isActive = true;
          launchpad.launchpadAppearance = null;
          launchpad.images = null;
          launchpad.buttons = new List<OASLaunchpadButton>{OASLaunchpadButton.getExample()};
          launchpad.socials = new List<OASLaunchpadSocial>{OASLaunchpadSocial.getExample()};
          launchpad.scheme = 'https';
        return launchpad;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASLaunchpad) {           
            OASLaunchpad launchpad = (OASLaunchpad) obj;
            return this.launchpadId == launchpad.launchpadId
                && this.draftId == launchpad.draftId
                && this.isEdited == launchpad.isEdited
                && this.domain == launchpad.domain
                && this.keyword == launchpad.keyword
                && this.uri == launchpad.uri
                && this.isActive == launchpad.isActive
                && this.launchpadAppearance == launchpad.launchpadAppearance
                && this.images == launchpad.images
                && this.buttons == launchpad.buttons
                && this.socials == launchpad.socials
                && this.scheme == launchpad.scheme;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (launchpadId == null ? 0 : System.hashCode(launchpadId));
        hashCode = (17 * hashCode) + (draftId == null ? 0 : System.hashCode(draftId));
        hashCode = (17 * hashCode) + (isEdited == null ? 0 : System.hashCode(isEdited));
        hashCode = (17 * hashCode) + (domain == null ? 0 : System.hashCode(domain));
        hashCode = (17 * hashCode) + (keyword == null ? 0 : System.hashCode(keyword));
        hashCode = (17 * hashCode) + (uri == null ? 0 : System.hashCode(uri));
        hashCode = (17 * hashCode) + (isActive == null ? 0 : System.hashCode(isActive));
        hashCode = (17 * hashCode) + (launchpadAppearance == null ? 0 : System.hashCode(launchpadAppearance));
        hashCode = (17 * hashCode) + (images == null ? 0 : System.hashCode(images));
        hashCode = (17 * hashCode) + (buttons == null ? 0 : System.hashCode(buttons));
        hashCode = (17 * hashCode) + (socials == null ? 0 : System.hashCode(socials));
        hashCode = (17 * hashCode) + (scheme == null ? 0 : System.hashCode(scheme));
        return hashCode;
    }
}