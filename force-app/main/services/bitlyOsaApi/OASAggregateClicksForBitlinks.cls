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
 * OASAggregateClicksForBitlinks
 */
public class OASAggregateClicksForBitlinks implements OAS.MappedProperties {
    /**
     * Get unitReference
     * @return unitReference
     */
    public String unitReference { get; set; }

    /**
     * Get unit
     * @return unit
     */
    public String unit { get; set; }

    /**
     * Get units
     * @return units
     */
    public Double units { get; set; }

    /**
     * Get clicks
     * @return clicks
     */
    public List<OASClicksForAggregate> clicks { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'unit_reference' => 'unitReference'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASAggregateClicksForBitlinks() {
        clicks = new List<OASClicksForAggregate>();
    }

    public static OASAggregateClicksForBitlinks getExample() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks = new OASAggregateClicksForBitlinks();
          aggregateClicksForBitlinks.unitReference = '';
          aggregateClicksForBitlinks.unit = '';
          aggregateClicksForBitlinks.units = 1.3579;
          aggregateClicksForBitlinks.clicks = new List<OASClicksForAggregate>{OASClicksForAggregate.getExample()};
        return aggregateClicksForBitlinks;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASAggregateClicksForBitlinks) {           
            OASAggregateClicksForBitlinks aggregateClicksForBitlinks = (OASAggregateClicksForBitlinks) obj;
            return this.unitReference == aggregateClicksForBitlinks.unitReference
                && this.unit == aggregateClicksForBitlinks.unit
                && this.units == aggregateClicksForBitlinks.units
                && this.clicks == aggregateClicksForBitlinks.clicks;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (unitReference == null ? 0 : System.hashCode(unitReference));
        hashCode = (17 * hashCode) + (unit == null ? 0 : System.hashCode(unit));
        hashCode = (17 * hashCode) + (units == null ? 0 : System.hashCode(units));
        hashCode = (17 * hashCode) + (clicks == null ? 0 : System.hashCode(clicks));
        return hashCode;
    }
}