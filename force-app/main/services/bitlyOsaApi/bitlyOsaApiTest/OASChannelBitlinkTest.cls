@isTest
private class OASChannelBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = channelBitlink1;
        OASChannelBitlink channelBitlink3 = new OASChannelBitlink();
        OASChannelBitlink channelBitlink4 = channelBitlink3;

        System.assert(channelBitlink1.equals(channelBitlink2));
        System.assert(channelBitlink2.equals(channelBitlink1));
        System.assert(channelBitlink1.equals(channelBitlink1));
        System.assert(channelBitlink3.equals(channelBitlink4));
        System.assert(channelBitlink4.equals(channelBitlink3));
        System.assert(channelBitlink3.equals(channelBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink3 = new OASChannelBitlink();
        OASChannelBitlink channelBitlink4 = new OASChannelBitlink();

        System.assert(channelBitlink1.equals(channelBitlink2));
        System.assert(channelBitlink2.equals(channelBitlink1));
        System.assert(channelBitlink3.equals(channelBitlink4));
        System.assert(channelBitlink4.equals(channelBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = new OASChannelBitlink();

        System.assertEquals(false, channelBitlink1.equals('foo'));
        System.assertEquals(false, channelBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = new OASChannelBitlink();
        OASChannelBitlink channelBitlink3;

        System.assertEquals(false, channelBitlink1.equals(channelBitlink3));
        System.assertEquals(false, channelBitlink2.equals(channelBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = new OASChannelBitlink();

        System.assertEquals(channelBitlink1.hashCode(), channelBitlink1.hashCode());
        System.assertEquals(channelBitlink2.hashCode(), channelBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannelBitlink channelBitlink1 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink2 = OASChannelBitlink.getExample();
        OASChannelBitlink channelBitlink3 = new OASChannelBitlink();
        OASChannelBitlink channelBitlink4 = new OASChannelBitlink();

        System.assert(channelBitlink1.equals(channelBitlink2));
        System.assert(channelBitlink3.equals(channelBitlink4));
        System.assertEquals(channelBitlink1.hashCode(), channelBitlink2.hashCode());
        System.assertEquals(channelBitlink3.hashCode(), channelBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChannelBitlink channelBitlink = new OASChannelBitlink();
        Map<String, String> propertymappings = channelBitlink.getPropertyMappings();
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
        System.assertEquals('campaignGuid', propertymappings.get('campaign_guid'));
        System.assertEquals('channelGuid', propertymappings.get('channel_guid'));
        System.assertEquals('totalClicks', propertymappings.get('total_clicks'));
        System.assertEquals('keywordLink', propertymappings.get('keyword_link'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('campaignIds', propertymappings.get('campaign_ids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannelBitlink channelBitlink = new OASChannelBitlink();
        System.assertEquals(new List<OASCampaignClickData>(), channelBitlink.clicks);
        System.assertEquals(new List<String>(), channelBitlink.campaignIds);
        System.assertEquals(null, channelBitlink.createdTs);
        System.assertEquals(null, channelBitlink.bitlinkId);
        System.assertEquals(null, channelBitlink.campaignGuid);
        System.assertEquals(null, channelBitlink.channelGuid);
        System.assertEquals(null, channelBitlink.title);
        System.assertEquals(null, channelBitlink.totalClicks);
        System.assertEquals(null, channelBitlink.keywordLink);
        System.assertEquals(null, channelBitlink.link);
        System.assertEquals(null, channelBitlink.longUrl);
    }
}