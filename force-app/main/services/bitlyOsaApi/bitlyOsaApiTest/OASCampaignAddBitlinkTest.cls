@isTest
private class OASCampaignAddBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = campaignAddBitlink1;
        OASCampaignAddBitlink campaignAddBitlink3 = new OASCampaignAddBitlink();
        OASCampaignAddBitlink campaignAddBitlink4 = campaignAddBitlink3;

        System.assert(campaignAddBitlink1.equals(campaignAddBitlink2));
        System.assert(campaignAddBitlink2.equals(campaignAddBitlink1));
        System.assert(campaignAddBitlink1.equals(campaignAddBitlink1));
        System.assert(campaignAddBitlink3.equals(campaignAddBitlink4));
        System.assert(campaignAddBitlink4.equals(campaignAddBitlink3));
        System.assert(campaignAddBitlink3.equals(campaignAddBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink3 = new OASCampaignAddBitlink();
        OASCampaignAddBitlink campaignAddBitlink4 = new OASCampaignAddBitlink();

        System.assert(campaignAddBitlink1.equals(campaignAddBitlink2));
        System.assert(campaignAddBitlink2.equals(campaignAddBitlink1));
        System.assert(campaignAddBitlink3.equals(campaignAddBitlink4));
        System.assert(campaignAddBitlink4.equals(campaignAddBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = new OASCampaignAddBitlink();

        System.assertEquals(false, campaignAddBitlink1.equals('foo'));
        System.assertEquals(false, campaignAddBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = new OASCampaignAddBitlink();
        OASCampaignAddBitlink campaignAddBitlink3;

        System.assertEquals(false, campaignAddBitlink1.equals(campaignAddBitlink3));
        System.assertEquals(false, campaignAddBitlink2.equals(campaignAddBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = new OASCampaignAddBitlink();

        System.assertEquals(campaignAddBitlink1.hashCode(), campaignAddBitlink1.hashCode());
        System.assertEquals(campaignAddBitlink2.hashCode(), campaignAddBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignAddBitlink campaignAddBitlink1 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink2 = OASCampaignAddBitlink.getExample();
        OASCampaignAddBitlink campaignAddBitlink3 = new OASCampaignAddBitlink();
        OASCampaignAddBitlink campaignAddBitlink4 = new OASCampaignAddBitlink();

        System.assert(campaignAddBitlink1.equals(campaignAddBitlink2));
        System.assert(campaignAddBitlink3.equals(campaignAddBitlink4));
        System.assertEquals(campaignAddBitlink1.hashCode(), campaignAddBitlink2.hashCode());
        System.assertEquals(campaignAddBitlink3.hashCode(), campaignAddBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignAddBitlink campaignAddBitlink = new OASCampaignAddBitlink();
        Map<String, String> propertymappings = campaignAddBitlink.getPropertyMappings();
        System.assertEquals('channelGuids', propertymappings.get('channel_guids'));
        System.assertEquals('addUtmParams', propertymappings.get('add_utm_params'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaignAddBitlink campaignAddBitlink = new OASCampaignAddBitlink();
        System.assertEquals(new List<String>(), campaignAddBitlink.channelGuids);
        System.assertEquals(null, campaignAddBitlink.url);
        System.assertEquals(null, campaignAddBitlink.addUtmParams);
    }
}