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
 * OASViewsSummary
 */
public class OASViewsSummary implements OAS.MappedProperties {
    /**
     * Get totalViews
     * @return totalViews
     */
    public Integer totalViews { get; set; }

    /**
     * Get units
     * @return units
     */
    public Integer units { get; set; }

    /**
     * Gets or Sets unit
     */
    public enum UnitEnum {
        MINUTE,
        HOUR,
        DAY,
        WEEK,
        MONTH
    }

    /**
     * Get unit
     * @return unit
     */
    public UnitEnum unit { get; set; }

    /**
     * Get unitReference
     * @return unitReference
     */
    public String unitReference { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'total_views' => 'totalViews',
        'unit_reference' => 'unitReference'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASViewsSummary getExample() {
        OASViewsSummary viewsSummary = new OASViewsSummary();
          viewsSummary.totalViews = 0;
          viewsSummary.units = 0;
          viewsSummary.unit = UnitEnum.MINUTE;
          viewsSummary.unitReference = '';
        return viewsSummary;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASViewsSummary) {           
            OASViewsSummary viewsSummary = (OASViewsSummary) obj;
            return this.totalViews == viewsSummary.totalViews
                && this.units == viewsSummary.units
                && this.unit == viewsSummary.unit
                && this.unitReference == viewsSummary.unitReference;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (totalViews == null ? 0 : System.hashCode(totalViews));
        hashCode = (17 * hashCode) + (units == null ? 0 : System.hashCode(units));
        hashCode = (17 * hashCode) + (unit == null ? 0 : System.hashCode(unit));
        hashCode = (17 * hashCode) + (unitReference == null ? 0 : System.hashCode(unitReference));
        return hashCode;
    }
}