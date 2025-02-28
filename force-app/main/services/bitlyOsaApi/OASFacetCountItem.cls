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
 * OASFacetCountItem
 */
public class OASFacetCountItem {
    /**
     * Get count
     * @return count
     */
    public Integer count { get; set; }

    /**
     * Get value
     * @return value
     */
    public String value { get; set; }

    public static OASFacetCountItem getExample() {
        OASFacetCountItem facetCountItem = new OASFacetCountItem();
          facetCountItem.count = 0;
          facetCountItem.value = '';
        return facetCountItem;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASFacetCountItem) {           
            OASFacetCountItem facetCountItem = (OASFacetCountItem) obj;
            return this.count == facetCountItem.count
                && this.value == facetCountItem.value;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (count == null ? 0 : System.hashCode(count));
        hashCode = (17 * hashCode) + (value == null ? 0 : System.hashCode(value));
        return hashCode;
    }
}