@isTest
private class OASCampaignTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = campaign1;
        OASCampaign campaign3 = new OASCampaign();
        OASCampaign campaign4 = campaign3;

        System.assert(campaign1.equals(campaign2));
        System.assert(campaign2.equals(campaign1));
        System.assert(campaign1.equals(campaign1));
        System.assert(campaign3.equals(campaign4));
        System.assert(campaign4.equals(campaign3));
        System.assert(campaign3.equals(campaign3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = OASCampaign.getExample();
        OASCampaign campaign3 = new OASCampaign();
        OASCampaign campaign4 = new OASCampaign();

        System.assert(campaign1.equals(campaign2));
        System.assert(campaign2.equals(campaign1));
        System.assert(campaign3.equals(campaign4));
        System.assert(campaign4.equals(campaign3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = new OASCampaign();

        System.assertEquals(false, campaign1.equals('foo'));
        System.assertEquals(false, campaign2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = new OASCampaign();
        OASCampaign campaign3;

        System.assertEquals(false, campaign1.equals(campaign3));
        System.assertEquals(false, campaign2.equals(campaign3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = new OASCampaign();

        System.assertEquals(campaign1.hashCode(), campaign1.hashCode());
        System.assertEquals(campaign2.hashCode(), campaign2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaign campaign1 = OASCampaign.getExample();
        OASCampaign campaign2 = OASCampaign.getExample();
        OASCampaign campaign3 = new OASCampaign();
        OASCampaign campaign4 = new OASCampaign();

        System.assert(campaign1.equals(campaign2));
        System.assert(campaign3.equals(campaign4));
        System.assertEquals(campaign1.hashCode(), campaign2.hashCode());
        System.assertEquals(campaign3.hashCode(), campaign4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaign campaign = new OASCampaign();
        Map<String, String> propertymappings = campaign.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('createdBy', propertymappings.get('created_by'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaign campaign = new OASCampaign();
        System.assertEquals(new Map<String, String>(), campaign.references);
        System.assertEquals(null, campaign.guid);
        System.assertEquals(null, campaign.groupGuid);
        System.assertEquals(null, campaign.createdBy);
        System.assertEquals(null, campaign.name);
        System.assertEquals(null, campaign.description);
        System.assertEquals(null, campaign.created);
        System.assertEquals(null, campaign.modified);
    }
}