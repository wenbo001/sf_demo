@isTest
private class OASCampaignClickDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = campaignClickData1;
        OASCampaignClickData campaignClickData3 = new OASCampaignClickData();
        OASCampaignClickData campaignClickData4 = campaignClickData3;

        System.assert(campaignClickData1.equals(campaignClickData2));
        System.assert(campaignClickData2.equals(campaignClickData1));
        System.assert(campaignClickData1.equals(campaignClickData1));
        System.assert(campaignClickData3.equals(campaignClickData4));
        System.assert(campaignClickData4.equals(campaignClickData3));
        System.assert(campaignClickData3.equals(campaignClickData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData3 = new OASCampaignClickData();
        OASCampaignClickData campaignClickData4 = new OASCampaignClickData();

        System.assert(campaignClickData1.equals(campaignClickData2));
        System.assert(campaignClickData2.equals(campaignClickData1));
        System.assert(campaignClickData3.equals(campaignClickData4));
        System.assert(campaignClickData4.equals(campaignClickData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = new OASCampaignClickData();

        System.assertEquals(false, campaignClickData1.equals('foo'));
        System.assertEquals(false, campaignClickData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = new OASCampaignClickData();
        OASCampaignClickData campaignClickData3;

        System.assertEquals(false, campaignClickData1.equals(campaignClickData3));
        System.assertEquals(false, campaignClickData2.equals(campaignClickData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = new OASCampaignClickData();

        System.assertEquals(campaignClickData1.hashCode(), campaignClickData1.hashCode());
        System.assertEquals(campaignClickData2.hashCode(), campaignClickData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignClickData campaignClickData1 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData2 = OASCampaignClickData.getExample();
        OASCampaignClickData campaignClickData3 = new OASCampaignClickData();
        OASCampaignClickData campaignClickData4 = new OASCampaignClickData();

        System.assert(campaignClickData1.equals(campaignClickData2));
        System.assert(campaignClickData3.equals(campaignClickData4));
        System.assertEquals(campaignClickData1.hashCode(), campaignClickData2.hashCode());
        System.assertEquals(campaignClickData3.hashCode(), campaignClickData4.hashCode());
    }
}