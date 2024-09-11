@isTest
private class OASBaseChannelBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = baseChannelBitlink1;
        OASBaseChannelBitlink baseChannelBitlink3 = new OASBaseChannelBitlink();
        OASBaseChannelBitlink baseChannelBitlink4 = baseChannelBitlink3;

        System.assert(baseChannelBitlink1.equals(baseChannelBitlink2));
        System.assert(baseChannelBitlink2.equals(baseChannelBitlink1));
        System.assert(baseChannelBitlink1.equals(baseChannelBitlink1));
        System.assert(baseChannelBitlink3.equals(baseChannelBitlink4));
        System.assert(baseChannelBitlink4.equals(baseChannelBitlink3));
        System.assert(baseChannelBitlink3.equals(baseChannelBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink3 = new OASBaseChannelBitlink();
        OASBaseChannelBitlink baseChannelBitlink4 = new OASBaseChannelBitlink();

        System.assert(baseChannelBitlink1.equals(baseChannelBitlink2));
        System.assert(baseChannelBitlink2.equals(baseChannelBitlink1));
        System.assert(baseChannelBitlink3.equals(baseChannelBitlink4));
        System.assert(baseChannelBitlink4.equals(baseChannelBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = new OASBaseChannelBitlink();

        System.assertEquals(false, baseChannelBitlink1.equals('foo'));
        System.assertEquals(false, baseChannelBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = new OASBaseChannelBitlink();
        OASBaseChannelBitlink baseChannelBitlink3;

        System.assertEquals(false, baseChannelBitlink1.equals(baseChannelBitlink3));
        System.assertEquals(false, baseChannelBitlink2.equals(baseChannelBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = new OASBaseChannelBitlink();

        System.assertEquals(baseChannelBitlink1.hashCode(), baseChannelBitlink1.hashCode());
        System.assertEquals(baseChannelBitlink2.hashCode(), baseChannelBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBaseChannelBitlink baseChannelBitlink1 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink2 = OASBaseChannelBitlink.getExample();
        OASBaseChannelBitlink baseChannelBitlink3 = new OASBaseChannelBitlink();
        OASBaseChannelBitlink baseChannelBitlink4 = new OASBaseChannelBitlink();

        System.assert(baseChannelBitlink1.equals(baseChannelBitlink2));
        System.assert(baseChannelBitlink3.equals(baseChannelBitlink4));
        System.assertEquals(baseChannelBitlink1.hashCode(), baseChannelBitlink2.hashCode());
        System.assertEquals(baseChannelBitlink3.hashCode(), baseChannelBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBaseChannelBitlink baseChannelBitlink = new OASBaseChannelBitlink();
        Map<String, String> propertymappings = baseChannelBitlink.getPropertyMappings();
        System.assertEquals('campaignGuid', propertymappings.get('campaign_guid'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}