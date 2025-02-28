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
 * OASCampaignAddBitlinkResponse
 */
public class OASCampaignAddBitlinkResponse {
    /**
     * Get message
     * @return message
     */
    public String message { get; set; }

    /**
     * Get data
     * @return data
     */
    public OASCampaignAddBitlinkResponseData data { get; set; }

    public static OASCampaignAddBitlinkResponse getExample() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse = new OASCampaignAddBitlinkResponse();
          campaignAddBitlinkResponse.message = '';
          campaignAddBitlinkResponse.data = OASCampaignAddBitlinkResponseData.getExample();
        return campaignAddBitlinkResponse;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASCampaignAddBitlinkResponse) {           
            OASCampaignAddBitlinkResponse campaignAddBitlinkResponse = (OASCampaignAddBitlinkResponse) obj;
            return this.message == campaignAddBitlinkResponse.message
                && this.data == campaignAddBitlinkResponse.data;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (message == null ? 0 : System.hashCode(message));
        hashCode = (17 * hashCode) + (data == null ? 0 : System.hashCode(data));
        return hashCode;
    }
}