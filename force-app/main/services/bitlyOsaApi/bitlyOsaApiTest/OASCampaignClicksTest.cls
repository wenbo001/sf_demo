@isTest
private class OASCampaignClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = campaignClicks1;
        OASCampaignClicks campaignClicks3 = new OASCampaignClicks();
        OASCampaignClicks campaignClicks4 = campaignClicks3;

        System.assert(campaignClicks1.equals(campaignClicks2));
        System.assert(campaignClicks2.equals(campaignClicks1));
        System.assert(campaignClicks1.equals(campaignClicks1));
        System.assert(campaignClicks3.equals(campaignClicks4));
        System.assert(campaignClicks4.equals(campaignClicks3));
        System.assert(campaignClicks3.equals(campaignClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks3 = new OASCampaignClicks();
        OASCampaignClicks campaignClicks4 = new OASCampaignClicks();

        System.assert(campaignClicks1.equals(campaignClicks2));
        System.assert(campaignClicks2.equals(campaignClicks1));
        System.assert(campaignClicks3.equals(campaignClicks4));
        System.assert(campaignClicks4.equals(campaignClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = new OASCampaignClicks();

        System.assertEquals(false, campaignClicks1.equals('foo'));
        System.assertEquals(false, campaignClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = new OASCampaignClicks();
        OASCampaignClicks campaignClicks3;

        System.assertEquals(false, campaignClicks1.equals(campaignClicks3));
        System.assertEquals(false, campaignClicks2.equals(campaignClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = new OASCampaignClicks();

        System.assertEquals(campaignClicks1.hashCode(), campaignClicks1.hashCode());
        System.assertEquals(campaignClicks2.hashCode(), campaignClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignClicks campaignClicks1 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks2 = OASCampaignClicks.getExample();
        OASCampaignClicks campaignClicks3 = new OASCampaignClicks();
        OASCampaignClicks campaignClicks4 = new OASCampaignClicks();

        System.assert(campaignClicks1.equals(campaignClicks2));
        System.assert(campaignClicks3.equals(campaignClicks4));
        System.assertEquals(campaignClicks1.hashCode(), campaignClicks2.hashCode());
        System.assertEquals(campaignClicks3.hashCode(), campaignClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignClicks campaignClicks = new OASCampaignClicks();
        Map<String, String> propertymappings = campaignClicks.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('r_limit', propertymappings.get('limit'));
    }
}