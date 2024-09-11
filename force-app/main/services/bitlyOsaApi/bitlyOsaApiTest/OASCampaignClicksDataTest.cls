@isTest
private class OASCampaignClicksDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = campaignClicksData1;
        OASCampaignClicksData campaignClicksData3 = new OASCampaignClicksData();
        OASCampaignClicksData campaignClicksData4 = campaignClicksData3;

        System.assert(campaignClicksData1.equals(campaignClicksData2));
        System.assert(campaignClicksData2.equals(campaignClicksData1));
        System.assert(campaignClicksData1.equals(campaignClicksData1));
        System.assert(campaignClicksData3.equals(campaignClicksData4));
        System.assert(campaignClicksData4.equals(campaignClicksData3));
        System.assert(campaignClicksData3.equals(campaignClicksData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData3 = new OASCampaignClicksData();
        OASCampaignClicksData campaignClicksData4 = new OASCampaignClicksData();

        System.assert(campaignClicksData1.equals(campaignClicksData2));
        System.assert(campaignClicksData2.equals(campaignClicksData1));
        System.assert(campaignClicksData3.equals(campaignClicksData4));
        System.assert(campaignClicksData4.equals(campaignClicksData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = new OASCampaignClicksData();

        System.assertEquals(false, campaignClicksData1.equals('foo'));
        System.assertEquals(false, campaignClicksData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = new OASCampaignClicksData();
        OASCampaignClicksData campaignClicksData3;

        System.assertEquals(false, campaignClicksData1.equals(campaignClicksData3));
        System.assertEquals(false, campaignClicksData2.equals(campaignClicksData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = new OASCampaignClicksData();

        System.assertEquals(campaignClicksData1.hashCode(), campaignClicksData1.hashCode());
        System.assertEquals(campaignClicksData2.hashCode(), campaignClicksData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignClicksData campaignClicksData1 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData2 = OASCampaignClicksData.getExample();
        OASCampaignClicksData campaignClicksData3 = new OASCampaignClicksData();
        OASCampaignClicksData campaignClicksData4 = new OASCampaignClicksData();

        System.assert(campaignClicksData1.equals(campaignClicksData2));
        System.assert(campaignClicksData3.equals(campaignClicksData4));
        System.assertEquals(campaignClicksData1.hashCode(), campaignClicksData2.hashCode());
        System.assertEquals(campaignClicksData3.hashCode(), campaignClicksData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignClicksData campaignClicksData = new OASCampaignClicksData();
        Map<String, String> propertymappings = campaignClicksData.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
        System.assertEquals('createdBy', propertymappings.get('created_by'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('totalClicks', propertymappings.get('total_clicks'));
        System.assertEquals('campaignChannels', propertymappings.get('campaign_channels'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaignClicksData campaignClicksData = new OASCampaignClicksData();
        System.assertEquals(new List<OASCampaignChannelClicks>(), campaignClicksData.campaignChannels);
        System.assertEquals(null, campaignClicksData.guid);
        System.assertEquals(null, campaignClicksData.brandGuid);
        System.assertEquals(null, campaignClicksData.createdBy);
        System.assertEquals(null, campaignClicksData.name);
        System.assertEquals(null, campaignClicksData.description);
        System.assertEquals(null, campaignClicksData.createdTs);
        System.assertEquals(null, campaignClicksData.totalClicks);
    }
}