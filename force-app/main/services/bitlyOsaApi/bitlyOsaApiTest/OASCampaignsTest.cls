@isTest
private class OASCampaignsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = campaigns1;
        OASCampaigns campaigns3 = new OASCampaigns();
        OASCampaigns campaigns4 = campaigns3;

        System.assert(campaigns1.equals(campaigns2));
        System.assert(campaigns2.equals(campaigns1));
        System.assert(campaigns1.equals(campaigns1));
        System.assert(campaigns3.equals(campaigns4));
        System.assert(campaigns4.equals(campaigns3));
        System.assert(campaigns3.equals(campaigns3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = OASCampaigns.getExample();
        OASCampaigns campaigns3 = new OASCampaigns();
        OASCampaigns campaigns4 = new OASCampaigns();

        System.assert(campaigns1.equals(campaigns2));
        System.assert(campaigns2.equals(campaigns1));
        System.assert(campaigns3.equals(campaigns4));
        System.assert(campaigns4.equals(campaigns3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = new OASCampaigns();

        System.assertEquals(false, campaigns1.equals('foo'));
        System.assertEquals(false, campaigns2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = new OASCampaigns();
        OASCampaigns campaigns3;

        System.assertEquals(false, campaigns1.equals(campaigns3));
        System.assertEquals(false, campaigns2.equals(campaigns3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = new OASCampaigns();

        System.assertEquals(campaigns1.hashCode(), campaigns1.hashCode());
        System.assertEquals(campaigns2.hashCode(), campaigns2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCampaigns campaigns1 = OASCampaigns.getExample();
        OASCampaigns campaigns2 = OASCampaigns.getExample();
        OASCampaigns campaigns3 = new OASCampaigns();
        OASCampaigns campaigns4 = new OASCampaigns();

        System.assert(campaigns1.equals(campaigns2));
        System.assert(campaigns3.equals(campaigns4));
        System.assertEquals(campaigns1.hashCode(), campaigns2.hashCode());
        System.assertEquals(campaigns3.hashCode(), campaigns4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCampaigns campaigns = new OASCampaigns();
        System.assertEquals(new List<OASCampaign>(), campaigns.campaigns);
    }
}