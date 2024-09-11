@isTest
private class OASCampaignModifyTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = campaignModify1;
        OASCampaignModify campaignModify3 = new OASCampaignModify();
        OASCampaignModify campaignModify4 = campaignModify3;

        System.assert(campaignModify1.equals(campaignModify2));
        System.assert(campaignModify2.equals(campaignModify1));
        System.assert(campaignModify1.equals(campaignModify1));
        System.assert(campaignModify3.equals(campaignModify4));
        System.assert(campaignModify4.equals(campaignModify3));
        System.assert(campaignModify3.equals(campaignModify3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify3 = new OASCampaignModify();
        OASCampaignModify campaignModify4 = new OASCampaignModify();

        System.assert(campaignModify1.equals(campaignModify2));
        System.assert(campaignModify2.equals(campaignModify1));
        System.assert(campaignModify3.equals(campaignModify4));
        System.assert(campaignModify4.equals(campaignModify3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = new OASCampaignModify();

        System.assertEquals(false, campaignModify1.equals('foo'));
        System.assertEquals(false, campaignModify2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = new OASCampaignModify();
        OASCampaignModify campaignModify3;

        System.assertEquals(false, campaignModify1.equals(campaignModify3));
        System.assertEquals(false, campaignModify2.equals(campaignModify3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = new OASCampaignModify();

        System.assertEquals(campaignModify1.hashCode(), campaignModify1.hashCode());
        System.assertEquals(campaignModify2.hashCode(), campaignModify2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignModify campaignModify1 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify2 = OASCampaignModify.getExample();
        OASCampaignModify campaignModify3 = new OASCampaignModify();
        OASCampaignModify campaignModify4 = new OASCampaignModify();

        System.assert(campaignModify1.equals(campaignModify2));
        System.assert(campaignModify3.equals(campaignModify4));
        System.assertEquals(campaignModify1.hashCode(), campaignModify2.hashCode());
        System.assertEquals(campaignModify3.hashCode(), campaignModify4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignModify campaignModify = new OASCampaignModify();
        Map<String, String> propertymappings = campaignModify.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('channelGuids', propertymappings.get('channel_guids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaignModify campaignModify = new OASCampaignModify();
        System.assertEquals(new List<String>(), campaignModify.channelGuids);
        System.assertEquals(null, campaignModify.groupGuid);
        System.assertEquals(null, campaignModify.name);
        System.assertEquals(null, campaignModify.description);
    }
}