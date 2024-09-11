@isTest
private class OASCampaignAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = campaignAllOf1;
        OASCampaignAllOf campaignAllOf3 = new OASCampaignAllOf();
        OASCampaignAllOf campaignAllOf4 = campaignAllOf3;

        System.assert(campaignAllOf1.equals(campaignAllOf2));
        System.assert(campaignAllOf2.equals(campaignAllOf1));
        System.assert(campaignAllOf1.equals(campaignAllOf1));
        System.assert(campaignAllOf3.equals(campaignAllOf4));
        System.assert(campaignAllOf4.equals(campaignAllOf3));
        System.assert(campaignAllOf3.equals(campaignAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf3 = new OASCampaignAllOf();
        OASCampaignAllOf campaignAllOf4 = new OASCampaignAllOf();

        System.assert(campaignAllOf1.equals(campaignAllOf2));
        System.assert(campaignAllOf2.equals(campaignAllOf1));
        System.assert(campaignAllOf3.equals(campaignAllOf4));
        System.assert(campaignAllOf4.equals(campaignAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = new OASCampaignAllOf();

        System.assertEquals(false, campaignAllOf1.equals('foo'));
        System.assertEquals(false, campaignAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = new OASCampaignAllOf();
        OASCampaignAllOf campaignAllOf3;

        System.assertEquals(false, campaignAllOf1.equals(campaignAllOf3));
        System.assertEquals(false, campaignAllOf2.equals(campaignAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = new OASCampaignAllOf();

        System.assertEquals(campaignAllOf1.hashCode(), campaignAllOf1.hashCode());
        System.assertEquals(campaignAllOf2.hashCode(), campaignAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaignAllOf campaignAllOf1 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf2 = OASCampaignAllOf.getExample();
        OASCampaignAllOf campaignAllOf3 = new OASCampaignAllOf();
        OASCampaignAllOf campaignAllOf4 = new OASCampaignAllOf();

        System.assert(campaignAllOf1.equals(campaignAllOf2));
        System.assert(campaignAllOf3.equals(campaignAllOf4));
        System.assertEquals(campaignAllOf1.hashCode(), campaignAllOf2.hashCode());
        System.assertEquals(campaignAllOf3.hashCode(), campaignAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCampaignAllOf campaignAllOf = new OASCampaignAllOf();
        Map<String, String> propertymappings = campaignAllOf.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('createdBy', propertymappings.get('created_by'));
    }
}