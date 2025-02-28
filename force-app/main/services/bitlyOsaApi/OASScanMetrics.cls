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
 * OASScanMetrics
 */
public class OASScanMetrics implements OAS.MappedProperties {
    /**
     * Get unit
     * @return unit
     */
    public String unit { get; set; }

    /**
     * Get units
     * @return units
     */
    public Integer units { get; set; }

    /**
     * Gets or Sets facet
     */
    public enum FacetEnum {
        COUNTRIES,
        CITIES,
        DEVICE_OS,
        BROWSERS
    }

    /**
     * Get facet
     * @return facet
     */
    public FacetEnum facet { get; set; }

    /**
     * Get unitReference
     * @return unitReference
     */
    public String unitReference { get; set; }

    /**
     * Get metrics
     * @return metrics
     */
    public List<OASScanMetric> metrics { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'unit_reference' => 'unitReference'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASScanMetrics() {
        metrics = new List<OASScanMetric>();
    }

    public static OASScanMetrics getExample() {
        OASScanMetrics scanMetrics = new OASScanMetrics();
          scanMetrics.unit = '';
          scanMetrics.units = 0;
          scanMetrics.facet = FacetEnum.COUNTRIES;
          scanMetrics.unitReference = '';
          scanMetrics.metrics = new List<OASScanMetric>{OASScanMetric.getExample()};
        return scanMetrics;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASScanMetrics) {           
            OASScanMetrics scanMetrics = (OASScanMetrics) obj;
            return this.unit == scanMetrics.unit
                && this.units == scanMetrics.units
                && this.facet == scanMetrics.facet
                && this.unitReference == scanMetrics.unitReference
                && this.metrics == scanMetrics.metrics;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (unit == null ? 0 : System.hashCode(unit));
        hashCode = (17 * hashCode) + (units == null ? 0 : System.hashCode(units));
        hashCode = (17 * hashCode) + (facet == null ? 0 : System.hashCode(facet));
        hashCode = (17 * hashCode) + (unitReference == null ? 0 : System.hashCode(unitReference));
        hashCode = (17 * hashCode) + (metrics == null ? 0 : System.hashCode(metrics));
        return hashCode;
    }
}