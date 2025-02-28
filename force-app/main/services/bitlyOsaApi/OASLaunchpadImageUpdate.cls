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
 * OASLaunchpadImageUpdate
 */
public class OASLaunchpadImageUpdate implements OAS.MappedProperties {
    /**
     * Get imageUrl
     * @return imageUrl
     */
    public String imageUrl { get; set; }

    /**
     * Get imageGuid
     * @return imageGuid
     */
    public String imageGuid { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'image_url' => 'imageUrl',
        'image_guid' => 'imageGuid'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASLaunchpadImageUpdate getExample() {
        OASLaunchpadImageUpdate launchpadImageUpdate = new OASLaunchpadImageUpdate();
          launchpadImageUpdate.imageUrl = '';
          launchpadImageUpdate.imageGuid = '';
        return launchpadImageUpdate;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASLaunchpadImageUpdate) {           
            OASLaunchpadImageUpdate launchpadImageUpdate = (OASLaunchpadImageUpdate) obj;
            return this.imageUrl == launchpadImageUpdate.imageUrl
                && this.imageGuid == launchpadImageUpdate.imageGuid;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (imageUrl == null ? 0 : System.hashCode(imageUrl));
        hashCode = (17 * hashCode) + (imageGuid == null ? 0 : System.hashCode(imageGuid));
        return hashCode;
    }
}