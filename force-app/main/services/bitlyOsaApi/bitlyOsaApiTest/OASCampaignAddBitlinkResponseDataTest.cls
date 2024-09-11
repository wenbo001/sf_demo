@isTest
private class OASCampaignAddBitlinkResponseDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = campaignAddBitlinkResponseData1;
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData3 = new OASCampaignAddBitlinkResponseData();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData4 = campaignAddBitlinkResponseData3;

        System.assert(campaignAddBitlinkResponseData1.equals(campaignAddBitlinkResponseData2));
        System.assert(campaignAddBitlinkResponseData2.equals(campaignAddBitlinkResponseData1));
        System.assert(campaignAddBitlinkResponseData1.equals(campaignAddBitlinkResponseData1));
        System.assert(campaignAddBitlinkResponseData3.equals(campaignAddBitlinkResponseData4));
        System.assert(campaignAddBitlinkResponseData4.equals(campaignAddBitlinkResponseData3));
        System.assert(campaignAddBitlinkResponseData3.equals(campaignAddBitlinkResponseData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData3 = new OASCampaignAddBitlinkResponseData();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData4 = new OASCampaignAddBitlinkResponseData();

        System.assert(campaignAddBitlinkResponseData1.equals(campaignAddBitlinkResponseData2));
        System.assert(campaignAddBitlinkResponseData2.equals(campaignAddBitlinkResponseData1));
        System.assert(campaignAddBitlinkResponseData3.equals(campaignAddBitlinkResponseData4));
        System.assert(campaignAddBitlinkResponseData4.equals(campaignAddBitlinkResponseData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = new OASCampaignAddBitlinkResponseData();

        System.assertEquals(false, campaignAddBitlinkResponseData1.equals('foo'));
        System.assertEquals(false, campaignAddBitlinkResponseData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = new OASCampaignAddBitlinkResponseData();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData3;

        System.assertEquals(false, campaignAddBitlinkResponseData1.equals(campaignAddBitlinkResponseData3));
        System.assertEquals(false, campaignAddBitlinkResponseData2.equals(campaignAddBitlinkResponseData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = new OASCampaignAddBitlinkResponseData();

        System.assertEquals(campaignAddBitlinkResponseData1.hashCode(), campaignAddBitlinkResponseData1.hashCode());
        System.assertEquals(campaignAddBitlinkResponseData2.hashCode(), campaignAddBitlinkResponseData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData1 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData2 = OASCampaignAddBitlinkResponseData.getExample();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData3 = new OASCampaignAddBitlinkResponseData();
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData4 = new OASCampaignAddBitlinkResponseData();

        System.assert(campaignAddBitlinkResponseData1.equals(campaignAddBitlinkResponseData2));
        System.assert(campaignAddBitlinkResponseData3.equals(campaignAddBitlinkResponseData4));
        System.assertEquals(campaignAddBitlinkResponseData1.hashCode(), campaignAddBitlinkResponseData2.hashCode());
        System.assertEquals(campaignAddBitlinkResponseData3.hashCode(), campaignAddBitlinkResponseData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData = new OASCampaignAddBitlinkResponseData();
        Map<String, String> propertymappings = campaignAddBitlinkResponseData.getPropertyMappings();
        System.assertEquals('shortenFailures', propertymappings.get('shorten_failures'));
        System.assertEquals('otherLinkFailures', propertymappings.get('other_link_failures'));
        System.assertEquals('createBitlinkFailures', propertymappings.get('create_bitlink_failures'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaignAddBitlinkResponseData campaignAddBitlinkResponseData = new OASCampaignAddBitlinkResponseData();
        System.assertEquals(new List<OASAddBitlinkResult>(), campaignAddBitlinkResponseData.results);
        System.assertEquals(null, campaignAddBitlinkResponseData.successes);
        System.assertEquals(null, campaignAddBitlinkResponseData.shortenFailures);
        System.assertEquals(null, campaignAddBitlinkResponseData.otherLinkFailures);
        System.assertEquals(null, campaignAddBitlinkResponseData.createBitlinkFailures);
    }
}