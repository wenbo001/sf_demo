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
 * OASBitlinkUpdate
 */
public class OASBitlinkUpdate implements OAS.MappedProperties {
    /**
     * Get link
     * @return link
     */
    public String link { get; set; }

    /**
     * Get id
     * @return id
     */
    public String id { get; set; }

    /**
     * Get longUrl
     * @return longUrl
     */
    public String longUrl { get; set; }

    /**
     * Get title
     * @return title
     */
    public String title { get; set; }

    /**
     * Get archived
     * @return archived
     */
    public Boolean archived { get; set; }

    /**
     * Get createdAt
     * @return createdAt
     */
    public String createdAt { get; set; }

    /**
     * Get createdBy
     * @return createdBy
     */
    public String createdBy { get; set; }

    /**
     * Get clientId
     * @return clientId
     */
    public String clientId { get; set; }

    /**
     * list of previously edited backhalfs for the bitlink - these are in reverse chronological order, with the most recently edited backhalf first
     * @return customBitlinks
     */
    public List<String> customBitlinks { get; set; }

    /**
     * Get tags
     * @return tags
     */
    public List<String> tags { get; set; }

    /**
     * Get launchpadIds
     * @return launchpadIds
     */
    public List<String> launchpadIds { get; set; }

    /**
     * Get deeplinks
     * @return deeplinks
     */
    public List<OASDeeplinkRule> deeplinks { get; set; }

    /**
     * Get isDeleted
     * @return isDeleted
     */
    public Boolean isDeleted { get; set; }

    /**
     * Get campaignIds
     * @return campaignIds
     */
    public List<String> campaignIds { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'long_url' => 'longUrl',
        'created_at' => 'createdAt',
        'created_by' => 'createdBy',
        'client_id' => 'clientId',
        'custom_bitlinks' => 'customBitlinks',
        'launchpad_ids' => 'launchpadIds',
        'is_deleted' => 'isDeleted',
        'campaign_ids' => 'campaignIds'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASBitlinkUpdate() {
        customBitlinks = new List<String>();
        tags = new List<String>();
        launchpadIds = new List<String>();
        deeplinks = new List<OASDeeplinkRule>();
        campaignIds = new List<String>();
    }

    public static OASBitlinkUpdate getExample() {
        OASBitlinkUpdate bitlinkUpdate = new OASBitlinkUpdate();
          bitlinkUpdate.link = '';
          bitlinkUpdate.id = '';
          bitlinkUpdate.longUrl = '';
          bitlinkUpdate.title = '';
          bitlinkUpdate.archived = true;
          bitlinkUpdate.createdAt = '';
          bitlinkUpdate.createdBy = '';
          bitlinkUpdate.clientId = '';
          bitlinkUpdate.customBitlinks = new List<String>{''};
          bitlinkUpdate.tags = new List<String>{''};
          bitlinkUpdate.launchpadIds = new List<String>{''};
          bitlinkUpdate.deeplinks = new List<OASDeeplinkRule>{OASDeeplinkRule.getExample()};
          bitlinkUpdate.isDeleted = true;
          bitlinkUpdate.campaignIds = new List<String>{''};
        return bitlinkUpdate;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBitlinkUpdate) {           
            OASBitlinkUpdate bitlinkUpdate = (OASBitlinkUpdate) obj;
            return this.link == bitlinkUpdate.link
                && this.id == bitlinkUpdate.id
                && this.longUrl == bitlinkUpdate.longUrl
                && this.title == bitlinkUpdate.title
                && this.archived == bitlinkUpdate.archived
                && this.createdAt == bitlinkUpdate.createdAt
                && this.createdBy == bitlinkUpdate.createdBy
                && this.clientId == bitlinkUpdate.clientId
                && this.customBitlinks == bitlinkUpdate.customBitlinks
                && this.tags == bitlinkUpdate.tags
                && this.launchpadIds == bitlinkUpdate.launchpadIds
                && this.deeplinks == bitlinkUpdate.deeplinks
                && this.isDeleted == bitlinkUpdate.isDeleted
                && this.campaignIds == bitlinkUpdate.campaignIds;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (link == null ? 0 : System.hashCode(link));
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (longUrl == null ? 0 : System.hashCode(longUrl));
        hashCode = (17 * hashCode) + (title == null ? 0 : System.hashCode(title));
        hashCode = (17 * hashCode) + (archived == null ? 0 : System.hashCode(archived));
        hashCode = (17 * hashCode) + (createdAt == null ? 0 : System.hashCode(createdAt));
        hashCode = (17 * hashCode) + (createdBy == null ? 0 : System.hashCode(createdBy));
        hashCode = (17 * hashCode) + (clientId == null ? 0 : System.hashCode(clientId));
        hashCode = (17 * hashCode) + (customBitlinks == null ? 0 : System.hashCode(customBitlinks));
        hashCode = (17 * hashCode) + (tags == null ? 0 : System.hashCode(tags));
        hashCode = (17 * hashCode) + (launchpadIds == null ? 0 : System.hashCode(launchpadIds));
        hashCode = (17 * hashCode) + (deeplinks == null ? 0 : System.hashCode(deeplinks));
        hashCode = (17 * hashCode) + (isDeleted == null ? 0 : System.hashCode(isDeleted));
        hashCode = (17 * hashCode) + (campaignIds == null ? 0 : System.hashCode(campaignIds));
        return hashCode;
    }
}