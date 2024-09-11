@isTest
private class OASCampaignChannelClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = campaignChannelClicks1;
        OASCampaignChannelClicks campaignChannelClicks3 = new OASCampaignChannelClicks();
        OASCampaignChannelClicks campaignChannelClicks4 = campaignChannelClicks3;

        System.assert(campaignChannelClicks1.equals(campaignChannelClicks2));
        System.assert(campaignChannelClicks2.equals(campaignChannelClicks1));
        System.assert(campaignChannelClicks1.equals(campaignChannelClicks1));
        System.assert(campaignChannelClicks3.equals(campaignChannelClicks4));
        System.assert(campaignChannelClicks4.equals(campaignChannelClicks3));
        System.assert(campaignChannelClicks3.equals(campaignChannelClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks3 = new OASCampaignChannelClicks();
        OASCampaignChannelClicks campaignChannelClicks4 = new OASCampaignChannelClicks();

        System.assert(campaignChannelClicks1.equals(campaignChannelClicks2));
        System.assert(campaignChannelClicks2.equals(campaignChannelClicks1));
        System.assert(campaignChannelClicks3.equals(campaignChannelClicks4));
        System.assert(campaignChannelClicks4.equals(campaignChannelClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = new OASCampaignChannelClicks();

        System.assertEquals(false, campaignChannelClicks1.equals('foo'));
        System.assertEquals(false, campaignChannelClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = new OASCampaignChannelClicks();
        OASCampaignChannelClicks campaignChannelClicks3;

        System.assertEquals(false, campaignChannelClicks1.equals(campaignChannelClicks3));
        System.assertEquals(false, campaignChannelClicks2.equals(campaignChannelClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = new OASCampaignChannelClicks();

        System.assertEquals(campaignChannelClicks1.hashCode(), campaignChannelClicks1.hashCode());
        System.assertEquals(campaignChannelClicks2.hashCode(), campaignChannelClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignChannelClicks campaignChannelClicks1 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks2 = OASCampaignChannelClicks.getExample();
        OASCampaignChannelClicks campaignChannelClicks3 = new OASCampaignChannelClicks();
        OASCampaignChannelClicks campaignChannelClicks4 = new OASCampaignChannelClicks();

        System.assert(campaignChannelClicks1.equals(campaignChannelClicks2));
        System.assert(campaignChannelClicks3.equals(campaignChannelClicks4));
        System.assertEquals(campaignChannelClicks1.hashCode(), campaignChannelClicks2.hashCode());
        System.assertEquals(campaignChannelClicks3.hashCode(), campaignChannelClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignChannelClicks campaignChannelClicks = new OASCampaignChannelClicks();
        Map<String, String> propertymappings = campaignChannelClicks.getPropertyMappings();
        System.assertEquals('channelGuid', propertymappings.get('channel_guid'));
        System.assertEquals('channelName', propertymappings.get('channel_name'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('totalClicks', propertymappings.get('total_clicks'));
        System.assertEquals('channelBitlinks', propertymappings.get('channel_bitlinks'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaignChannelClicks campaignChannelClicks = new OASCampaignChannelClicks();
        System.assertEquals(new List<OASCampaignClickData>(), campaignChannelClicks.clicks);
        System.assertEquals(null, campaignChannelClicks.channelGuid);
        System.assertEquals(null, campaignChannelClicks.channelName);
        System.assertEquals(null, campaignChannelClicks.createdTs);
        System.assertEquals(null, campaignChannelClicks.totalClicks);
        System.assertEquals(null, campaignChannelClicks.channelBitlinks);
    }
}