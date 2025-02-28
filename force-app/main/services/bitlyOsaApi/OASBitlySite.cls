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
 * OASBitlySite
 */
public class OASBitlySite implements OAS.MappedProperties {
    /**
     * Get siteGuid
     * @return siteGuid
     */
    public String siteGuid { get; set; }

    /**
     * Get groupGuid
     * @return groupGuid
     */
    public String groupGuid { get; set; }

    /**
     * Get status
     * @return status
     */
    public String status { get; set; }

    /**
     * Get isEdited
     * @return isEdited
     */
    public Boolean isEdited { get; set; }

    /**
     * Get uri
     * @return uri
     */
    public String uri { get; set; }

    /**
     * Get content
     * @return content
     */
    public OASBitlySiteContent content { get; set; }

    /**
     * Get appearance
     * @return appearance
     */
    public OASBitlySiteAppearance appearance { get; set; }

    /**
     * Get buttonCount
     * @return buttonCount
     */
    public Integer buttonCount { get; set; }

    /**
     * Get lastPublished
     * @return lastPublished
     */
    public String lastPublished { get; set; }

    /**
     * Get created
     * @return created
     */
    public String created { get; set; }

    /**
     * Get modified
     * @return modified
     */
    public String modified { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'site_guid' => 'siteGuid',
        'group_guid' => 'groupGuid',
        'is_edited' => 'isEdited',
        'button_count' => 'buttonCount',
        'last_published' => 'lastPublished'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASBitlySite getExample() {
        OASBitlySite bitlySite = new OASBitlySite();
          bitlySite.siteGuid = '';
          bitlySite.groupGuid = '';
          bitlySite.status = '';
          bitlySite.isEdited = true;
          bitlySite.uri = '';
          bitlySite.content = OASBitlySiteContent.getExample();
          bitlySite.appearance = OASBitlySiteAppearance.getExample();
          bitlySite.buttonCount = 0;
          bitlySite.lastPublished = '';
          bitlySite.created = '';
          bitlySite.modified = '';
        return bitlySite;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBitlySite) {           
            OASBitlySite bitlySite = (OASBitlySite) obj;
            return this.siteGuid == bitlySite.siteGuid
                && this.groupGuid == bitlySite.groupGuid
                && this.status == bitlySite.status
                && this.isEdited == bitlySite.isEdited
                && this.uri == bitlySite.uri
                && this.content == bitlySite.content
                && this.appearance == bitlySite.appearance
                && this.buttonCount == bitlySite.buttonCount
                && this.lastPublished == bitlySite.lastPublished
                && this.created == bitlySite.created
                && this.modified == bitlySite.modified;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (siteGuid == null ? 0 : System.hashCode(siteGuid));
        hashCode = (17 * hashCode) + (groupGuid == null ? 0 : System.hashCode(groupGuid));
        hashCode = (17 * hashCode) + (status == null ? 0 : System.hashCode(status));
        hashCode = (17 * hashCode) + (isEdited == null ? 0 : System.hashCode(isEdited));
        hashCode = (17 * hashCode) + (uri == null ? 0 : System.hashCode(uri));
        hashCode = (17 * hashCode) + (content == null ? 0 : System.hashCode(content));
        hashCode = (17 * hashCode) + (appearance == null ? 0 : System.hashCode(appearance));
        hashCode = (17 * hashCode) + (buttonCount == null ? 0 : System.hashCode(buttonCount));
        hashCode = (17 * hashCode) + (lastPublished == null ? 0 : System.hashCode(lastPublished));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (modified == null ? 0 : System.hashCode(modified));
        return hashCode;
    }
}