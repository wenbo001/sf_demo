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
 * OASOrgTierHistory
 */
public class OASOrgTierHistory implements OAS.MappedProperties {
    /**
     * Get orgGuid
     * @return orgGuid
     */
    public String orgGuid { get; set; }

    /**
     * Get status
     * @return status
     */
    public String status { get; set; }

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

    /**
     * Get tierName
     * @return tierName
     */
    public String tierName { get; set; }

    /**
     * ISO timestamp
     * @return tierChangeDate
     */
    public String tierChangeDate { get; set; }

    /**
     * ISO timestamp
     * @return activated
     */
    public String activated { get; set; }

    /**
     * ISO timestamp
     * @return deactivated
     */
    public String deactivated { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'org_guid' => 'orgGuid',
        'tier_name' => 'tierName',
        'tier_change_date' => 'tierChangeDate'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASOrgTierHistory getExample() {
        OASOrgTierHistory orgTierHistory = new OASOrgTierHistory();
          orgTierHistory.orgGuid = '';
          orgTierHistory.status = '';
          orgTierHistory.created = '';
          orgTierHistory.modified = '';
          orgTierHistory.tierName = '';
          orgTierHistory.tierChangeDate = '';
          orgTierHistory.activated = '';
          orgTierHistory.deactivated = '';
        return orgTierHistory;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASOrgTierHistory) {           
            OASOrgTierHistory orgTierHistory = (OASOrgTierHistory) obj;
            return this.orgGuid == orgTierHistory.orgGuid
                && this.status == orgTierHistory.status
                && this.created == orgTierHistory.created
                && this.modified == orgTierHistory.modified
                && this.tierName == orgTierHistory.tierName
                && this.tierChangeDate == orgTierHistory.tierChangeDate
                && this.activated == orgTierHistory.activated
                && this.deactivated == orgTierHistory.deactivated;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (orgGuid == null ? 0 : System.hashCode(orgGuid));
        hashCode = (17 * hashCode) + (status == null ? 0 : System.hashCode(status));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (modified == null ? 0 : System.hashCode(modified));
        hashCode = (17 * hashCode) + (tierName == null ? 0 : System.hashCode(tierName));
        hashCode = (17 * hashCode) + (tierChangeDate == null ? 0 : System.hashCode(tierChangeDate));
        hashCode = (17 * hashCode) + (activated == null ? 0 : System.hashCode(activated));
        hashCode = (17 * hashCode) + (deactivated == null ? 0 : System.hashCode(deactivated));
        return hashCode;
    }
}