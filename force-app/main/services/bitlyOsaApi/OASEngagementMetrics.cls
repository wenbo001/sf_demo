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
 * OASEngagementMetrics
 */
public class OASEngagementMetrics implements OAS.MappedProperties {
    /**
     * Get r_date
     * @return r_date
     */
    public String r_date { get; set; }

    /**
     * Get clicks
     * @return clicks
     */
    public Double clicks { get; set; }

    /**
     * Get scans
     * @return scans
     */
    public Double scans { get; set; }

    /**
     * Get buttonClicks
     * @return buttonClicks
     */
    public Double buttonClicks { get; set; }

    /**
     * Get total
     * @return total
     */
    public Double total { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'date' => 'r_date',
        'button_clicks' => 'buttonClicks'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASEngagementMetrics getExample() {
        OASEngagementMetrics engagementMetrics = new OASEngagementMetrics();
          engagementMetrics.r_date = '1970-01-01T00:00:00Z';
          engagementMetrics.clicks = 1.3579;
          engagementMetrics.scans = 1.3579;
          engagementMetrics.buttonClicks = 1.3579;
          engagementMetrics.total = 1.3579;
        return engagementMetrics;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASEngagementMetrics) {           
            OASEngagementMetrics engagementMetrics = (OASEngagementMetrics) obj;
            return this.r_date == engagementMetrics.r_date
                && this.clicks == engagementMetrics.clicks
                && this.scans == engagementMetrics.scans
                && this.buttonClicks == engagementMetrics.buttonClicks
                && this.total == engagementMetrics.total;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (r_date == null ? 0 : System.hashCode(r_date));
        hashCode = (17 * hashCode) + (clicks == null ? 0 : System.hashCode(clicks));
        hashCode = (17 * hashCode) + (scans == null ? 0 : System.hashCode(scans));
        hashCode = (17 * hashCode) + (buttonClicks == null ? 0 : System.hashCode(buttonClicks));
        hashCode = (17 * hashCode) + (total == null ? 0 : System.hashCode(total));
        return hashCode;
    }
}