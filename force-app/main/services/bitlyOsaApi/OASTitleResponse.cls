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
 * OASTitleResponse
 */
public class OASTitleResponse {
    /**
     * Get url
     * @return url
     */
    public String url { get; set; }

    /**
     * Get title
     * @return title
     */
    public String title { get; set; }

    public static OASTitleResponse getExample() {
        OASTitleResponse titleResponse = new OASTitleResponse();
          titleResponse.url = '';
          titleResponse.title = '';
        return titleResponse;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASTitleResponse) {           
            OASTitleResponse titleResponse = (OASTitleResponse) obj;
            return this.url == titleResponse.url
                && this.title == titleResponse.title;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (url == null ? 0 : System.hashCode(url));
        hashCode = (17 * hashCode) + (title == null ? 0 : System.hashCode(title));
        return hashCode;
    }
}