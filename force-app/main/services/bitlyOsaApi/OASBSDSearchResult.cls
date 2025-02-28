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
 * OASBSDSearchResult
 */
public class OASBSDSearchResult {
    /**
     * Get domain
     * @return domain
     */
    public String domain { get; set; }

    public static OASBSDSearchResult getExample() {
        OASBSDSearchResult bsDSearchResult = new OASBSDSearchResult();
          bsDSearchResult.domain = '';
        return bsDSearchResult;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASBSDSearchResult) {           
            OASBSDSearchResult bsDSearchResult = (OASBSDSearchResult) obj;
            return this.domain == bsDSearchResult.domain;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (domain == null ? 0 : System.hashCode(domain));
        return hashCode;
    }
}