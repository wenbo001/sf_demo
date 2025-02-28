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
 * OASSortedLinks
 */
public class OASSortedLinks implements OAS.MappedProperties {
    /**
     * Get links
     * @return links
     */
    public List<OASBitlinkBody> links { get; set; }

    /**
     * Get sortedLinks
     * @return sortedLinks
     */
    public List<OASClickLink> sortedLinks { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'sorted_links' => 'sortedLinks'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }

    public OASSortedLinks() {
        links = new List<OASBitlinkBody>();
        sortedLinks = new List<OASClickLink>();
    }

    public static OASSortedLinks getExample() {
        OASSortedLinks sortedLinks = new OASSortedLinks();
          sortedLinks.links = new List<OASBitlinkBody>{OASBitlinkBody.getExample()};
          sortedLinks.sortedLinks = new List<OASClickLink>{OASClickLink.getExample()};
        return sortedLinks;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSortedLinks) {           
            OASSortedLinks sortedLinks = (OASSortedLinks) obj;
            return this.links == sortedLinks.links
                && this.sortedLinks == sortedLinks.sortedLinks;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (links == null ? 0 : System.hashCode(links));
        hashCode = (17 * hashCode) + (sortedLinks == null ? 0 : System.hashCode(sortedLinks));
        return hashCode;
    }
}