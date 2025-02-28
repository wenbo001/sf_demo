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
 * the add on settings associated with the tier
 */
public class OASAddOnSetting implements OAS.MappedProperties {
    /**
     * Get featureName
     * @return featureName
     */
    public String featureName { get; set; }

    /**
     * Get r_limit
     * @return r_limit
     */
    public Integer r_limit { get; set; }

    /**
     * Get product
     * @return product
     */
    public String product { get; set; }

    /**
     * Get incr
     * @return incr
     */
    public Integer incr { get; set; }

    /**
     * Get price
     * @return price
     */
    public Double price { get; set; }

    /**
     * Get priceMap
     * @return priceMap
     */
    public OASPriceMap priceMap { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'feature_name' => 'featureName',
        'limit' => 'r_limit',
        'price_map' => 'priceMap'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

//    private static final Map<String, String> propertyMappings = new Map<String, String>{
//        'feature_name' => 'featureName',
//        'limit' => 'r_limit',
//        'price_map' => 'priceMap'
//    };

    //public Map<String, String> getPropertyMappings() {
        //return propertyMappings;
   //}

//    private static final Map<String, String> propertyMappings = new Map<String, String>{
//        'feature_name' => 'featureName',
//        'limit' => 'r_limit',
//        'price_map' => 'priceMap'
//    };

    //public Map<String, String> getPropertyMappings() {
        //return propertyMappings;
   //}

    public static OASAddOnSetting getExample() {
        OASAddOnSetting addOnSetting = new OASAddOnSetting();
          addOnSetting.featureName = '';
          addOnSetting.r_limit = 0;
          addOnSetting.product = '';
          addOnSetting.incr = 0;
          addOnSetting.price = 1.3579;
          addOnSetting.priceMap = OASPriceMap.getExample();
        return addOnSetting;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASAddOnSetting) {           
            OASAddOnSetting addOnSetting = (OASAddOnSetting) obj;
            return this.featureName == addOnSetting.featureName
                && this.r_limit == addOnSetting.r_limit
                && this.product == addOnSetting.product
                && this.incr == addOnSetting.incr
                && this.price == addOnSetting.price
                && this.priceMap == addOnSetting.priceMap;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (featureName == null ? 0 : System.hashCode(featureName));
        hashCode = (17 * hashCode) + (r_limit == null ? 0 : System.hashCode(r_limit));
        hashCode = (17 * hashCode) + (product == null ? 0 : System.hashCode(product));
        hashCode = (17 * hashCode) + (incr == null ? 0 : System.hashCode(incr));
        hashCode = (17 * hashCode) + (price == null ? 0 : System.hashCode(price));
        hashCode = (17 * hashCode) + (priceMap == null ? 0 : System.hashCode(priceMap));
        return hashCode;
    }
}