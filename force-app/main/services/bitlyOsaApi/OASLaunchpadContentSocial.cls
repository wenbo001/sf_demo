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
 * OASLaunchpadContentSocial
 */
public class OASLaunchpadContentSocial {
    /**
     * Get url
     * @return url
     */
    public String url { get; set; }

    /**
     * Get channel
     * @return channel
     */
    public String channel { get; set; }

    public static OASLaunchpadContentSocial getExample() {
        OASLaunchpadContentSocial launchpadContentSocial = new OASLaunchpadContentSocial();
          launchpadContentSocial.url = 'facebook.com/profile';
          launchpadContentSocial.channel = 'facebook';
        return launchpadContentSocial;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASLaunchpadContentSocial) {           
            OASLaunchpadContentSocial launchpadContentSocial = (OASLaunchpadContentSocial) obj;
            return this.url == launchpadContentSocial.url
                && this.channel == launchpadContentSocial.channel;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (url == null ? 0 : System.hashCode(url));
        hashCode = (17 * hashCode) + (channel == null ? 0 : System.hashCode(channel));
        return hashCode;
    }
}