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
 * OASContentRequestBitlink
 */
public class OASContentRequestBitlink implements OAS.MappedProperties {
    /**
     * Get bitlink
     * @return bitlink
     */
    public String bitlink { get; set; }

    /**
     * Get title
     * @return title
     */
    public String title { get; set; }

    /**
     * Get isPinned
     * @return isPinned
     */
    public Boolean isPinned { get; set; }

    /**
     * Get description
     * @return description
     */
    public String description { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_pinned' => 'isPinned'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public static OASContentRequestBitlink getExample() {
        OASContentRequestBitlink contentRequestBitlink = new OASContentRequestBitlink();
          contentRequestBitlink.bitlink = 'https://bit.ly/GzmMT6';
          contentRequestBitlink.title = 'Short links, big results';
          contentRequestBitlink.isPinned = true;
          contentRequestBitlink.description = 'my description';
        return contentRequestBitlink;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASContentRequestBitlink) {           
            OASContentRequestBitlink contentRequestBitlink = (OASContentRequestBitlink) obj;
            return this.bitlink == contentRequestBitlink.bitlink
                && this.title == contentRequestBitlink.title
                && this.isPinned == contentRequestBitlink.isPinned
                && this.description == contentRequestBitlink.description;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (bitlink == null ? 0 : System.hashCode(bitlink));
        hashCode = (17 * hashCode) + (title == null ? 0 : System.hashCode(title));
        hashCode = (17 * hashCode) + (isPinned == null ? 0 : System.hashCode(isPinned));
        hashCode = (17 * hashCode) + (description == null ? 0 : System.hashCode(description));
        return hashCode;
    }
}