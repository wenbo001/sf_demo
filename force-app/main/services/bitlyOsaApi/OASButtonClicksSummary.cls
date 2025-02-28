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
 * OASButtonClicksSummary
 */
public class OASButtonClicksSummary implements OAS.MappedProperties {
    /**
     * Get totalButtonClicks
     * @return totalButtonClicks
     */
    public Integer totalButtonClicks { get; set; }

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
        'total_button_clicks' => 'totalButtonClicks',
        'unit_reference' => 'unitReference'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }


    public static OASButtonClicksSummary getExample() {
        OASButtonClicksSummary buttonClicksSummary = new OASButtonClicksSummary();
          buttonClicksSummary.totalButtonClicks = 0;
          buttonClicksSummary.units = 0;
          buttonClicksSummary.unit = UnitEnum.MINUTE;
          buttonClicksSummary.unitReference = '';
        return buttonClicksSummary;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASButtonClicksSummary) {           
            OASButtonClicksSummary buttonClicksSummary = (OASButtonClicksSummary) obj;
            return this.totalButtonClicks == buttonClicksSummary.totalButtonClicks
                && this.units == buttonClicksSummary.units
                && this.unit == buttonClicksSummary.unit
                && this.unitReference == buttonClicksSummary.unitReference;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (totalButtonClicks == null ? 0 : System.hashCode(totalButtonClicks));
        hashCode = (17 * hashCode) + (units == null ? 0 : System.hashCode(units));
        hashCode = (17 * hashCode) + (unit == null ? 0 : System.hashCode(unit));
        hashCode = (17 * hashCode) + (unitReference == null ? 0 : System.hashCode(unitReference));
        return hashCode;
    }
}