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
 * OASCampaign
 */
public class OASCampaign implements OAS.MappedProperties {
    /**
     * Get references
     * @return references
     */
    public Map<String, String> references { get; set; }

    /**
     * Get guid
     * @return guid
     */
    public String guid { get; set; }

    /**
     * Get groupGuid
     * @return groupGuid
     */
    public String groupGuid { get; set; }

    /**
     * Get createdBy
     * @return createdBy
     */
    public String createdBy { get; set; }

    /**
     * Get name
     * @return name
     */
    public String name { get; set; }

    /**
     * Get description
     * @return description
     */
    public String description { get; set; }

    /**
     * ISO timestamp
     * @return created
     */
    public String created { get; set; }

    /**
     * ISO timestamp
     * @return modified
     */
    public String modified { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'group_guid' => 'groupGuid',
        'created_by' => 'createdBy'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public OASCampaign() {
        references = new Map<String, String>();
    }

    public static OASCampaign getExample() {
        OASCampaign campaign = new OASCampaign();
          campaign.references = new Map<String, String>{'key'=>''};
          campaign.guid = '';
          campaign.groupGuid = '';
          campaign.createdBy = '';
          campaign.name = '';
          campaign.description = '';
          campaign.created = '';
          campaign.modified = '';
        return campaign;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASCampaign) {           
            OASCampaign campaign = (OASCampaign) obj;
            return this.references == campaign.references
                && this.guid == campaign.guid
                && this.groupGuid == campaign.groupGuid
                && this.createdBy == campaign.createdBy
                && this.name == campaign.name
                && this.description == campaign.description
                && this.created == campaign.created
                && this.modified == campaign.modified;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (references == null ? 0 : System.hashCode(references));
        hashCode = (17 * hashCode) + (guid == null ? 0 : System.hashCode(guid));
        hashCode = (17 * hashCode) + (groupGuid == null ? 0 : System.hashCode(groupGuid));
        hashCode = (17 * hashCode) + (createdBy == null ? 0 : System.hashCode(createdBy));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (modified == null ? 0 : System.hashCode(modified));
        return hashCode;
    }
}