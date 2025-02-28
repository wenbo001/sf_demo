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
 * OASLinkClicks
 */
public class OASLinkClicks implements OAS.MappedProperties {
    /**
     * Get clicks
     * @return clicks
     */
    public Integer clicks { get; set; }

    /**
     * Get r_date
     * @return r_date
     */
    public String r_date { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'date' => 'r_date'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASLinkClicks getExample() {
        OASLinkClicks linkClicks = new OASLinkClicks();
          linkClicks.clicks = 0;
          linkClicks.r_date = '';
        return linkClicks;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASLinkClicks) {           
            OASLinkClicks linkClicks = (OASLinkClicks) obj;
            return this.clicks == linkClicks.clicks
                && this.r_date == linkClicks.r_date;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (clicks == null ? 0 : System.hashCode(clicks));
        hashCode = (17 * hashCode) + (r_date == null ? 0 : System.hashCode(r_date));
        return hashCode;
    }
}