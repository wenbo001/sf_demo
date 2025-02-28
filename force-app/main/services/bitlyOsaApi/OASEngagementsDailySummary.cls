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
 * OASEngagementsDailySummary
 */
public class OASEngagementsDailySummary implements OAS.MappedProperties {
    /**
     * Get engagements
     * @return engagements
     */
    public List<OASEngagementMetrics> engagements { get; set; }

    /**
     * Get refDate
     * @return refDate
     */
    public String refDate { get; set; }

    /**
     * Get days
     * @return days
     */
    public Double days { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'ref_date' => 'refDate'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASEngagementsDailySummary() {
        engagements = new List<OASEngagementMetrics>();
    }

    public static OASEngagementsDailySummary getExample() {
        OASEngagementsDailySummary engagementsDailySummary = new OASEngagementsDailySummary();
          engagementsDailySummary.engagements = new List<OASEngagementMetrics>{OASEngagementMetrics.getExample()};
          engagementsDailySummary.refDate = '1970-01-01T00:00:00Z';
          engagementsDailySummary.days = 1.3579;
        return engagementsDailySummary;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASEngagementsDailySummary) {           
            OASEngagementsDailySummary engagementsDailySummary = (OASEngagementsDailySummary) obj;
            return this.engagements == engagementsDailySummary.engagements
                && this.refDate == engagementsDailySummary.refDate
                && this.days == engagementsDailySummary.days;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (engagements == null ? 0 : System.hashCode(engagements));
        hashCode = (17 * hashCode) + (refDate == null ? 0 : System.hashCode(refDate));
        hashCode = (17 * hashCode) + (days == null ? 0 : System.hashCode(days));
        return hashCode;
    }
}