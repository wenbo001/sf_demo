@isTest
private class OASCampaignAddBitlinkResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = campaignAddBitlinkResponse1;
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse3 = new OASCampaignAddBitlinkResponse();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse4 = campaignAddBitlinkResponse3;

        System.assert(campaignAddBitlinkResponse1.equals(campaignAddBitlinkResponse2));
        System.assert(campaignAddBitlinkResponse2.equals(campaignAddBitlinkResponse1));
        System.assert(campaignAddBitlinkResponse1.equals(campaignAddBitlinkResponse1));
        System.assert(campaignAddBitlinkResponse3.equals(campaignAddBitlinkResponse4));
        System.assert(campaignAddBitlinkResponse4.equals(campaignAddBitlinkResponse3));
        System.assert(campaignAddBitlinkResponse3.equals(campaignAddBitlinkResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse3 = new OASCampaignAddBitlinkResponse();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse4 = new OASCampaignAddBitlinkResponse();

        System.assert(campaignAddBitlinkResponse1.equals(campaignAddBitlinkResponse2));
        System.assert(campaignAddBitlinkResponse2.equals(campaignAddBitlinkResponse1));
        System.assert(campaignAddBitlinkResponse3.equals(campaignAddBitlinkResponse4));
        System.assert(campaignAddBitlinkResponse4.equals(campaignAddBitlinkResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = new OASCampaignAddBitlinkResponse();

        System.assertEquals(false, campaignAddBitlinkResponse1.equals('foo'));
        System.assertEquals(false, campaignAddBitlinkResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = new OASCampaignAddBitlinkResponse();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse3;

        System.assertEquals(false, campaignAddBitlinkResponse1.equals(campaignAddBitlinkResponse3));
        System.assertEquals(false, campaignAddBitlinkResponse2.equals(campaignAddBitlinkResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = new OASCampaignAddBitlinkResponse();

        System.assertEquals(campaignAddBitlinkResponse1.hashCode(), campaignAddBitlinkResponse1.hashCode());
        System.assertEquals(campaignAddBitlinkResponse2.hashCode(), campaignAddBitlinkResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse1 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse2 = OASCampaignAddBitlinkResponse.getExample();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse3 = new OASCampaignAddBitlinkResponse();
        OASCampaignAddBitlinkResponse campaignAddBitlinkResponse4 = new OASCampaignAddBitlinkResponse();

        System.assert(campaignAddBitlinkResponse1.equals(campaignAddBitlinkResponse2));
        System.assert(campaignAddBitlinkResponse3.equals(campaignAddBitlinkResponse4));
        System.assertEquals(campaignAddBitlinkResponse1.hashCode(), campaignAddBitlinkResponse2.hashCode());
        System.assertEquals(campaignAddBitlinkResponse3.hashCode(), campaignAddBitlinkResponse4.hashCode());
    }
}