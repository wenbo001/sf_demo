@isTest
private class OASAddCustomBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = addCustomBitlink1;
        OASAddCustomBitlink addCustomBitlink3 = new OASAddCustomBitlink();
        OASAddCustomBitlink addCustomBitlink4 = addCustomBitlink3;

        System.assert(addCustomBitlink1.equals(addCustomBitlink2));
        System.assert(addCustomBitlink2.equals(addCustomBitlink1));
        System.assert(addCustomBitlink1.equals(addCustomBitlink1));
        System.assert(addCustomBitlink3.equals(addCustomBitlink4));
        System.assert(addCustomBitlink4.equals(addCustomBitlink3));
        System.assert(addCustomBitlink3.equals(addCustomBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink3 = new OASAddCustomBitlink();
        OASAddCustomBitlink addCustomBitlink4 = new OASAddCustomBitlink();

        System.assert(addCustomBitlink1.equals(addCustomBitlink2));
        System.assert(addCustomBitlink2.equals(addCustomBitlink1));
        System.assert(addCustomBitlink3.equals(addCustomBitlink4));
        System.assert(addCustomBitlink4.equals(addCustomBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = new OASAddCustomBitlink();

        System.assertEquals(false, addCustomBitlink1.equals('foo'));
        System.assertEquals(false, addCustomBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = new OASAddCustomBitlink();
        OASAddCustomBitlink addCustomBitlink3;

        System.assertEquals(false, addCustomBitlink1.equals(addCustomBitlink3));
        System.assertEquals(false, addCustomBitlink2.equals(addCustomBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = new OASAddCustomBitlink();

        System.assertEquals(addCustomBitlink1.hashCode(), addCustomBitlink1.hashCode());
        System.assertEquals(addCustomBitlink2.hashCode(), addCustomBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddCustomBitlink addCustomBitlink1 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink2 = OASAddCustomBitlink.getExample();
        OASAddCustomBitlink addCustomBitlink3 = new OASAddCustomBitlink();
        OASAddCustomBitlink addCustomBitlink4 = new OASAddCustomBitlink();

        System.assert(addCustomBitlink1.equals(addCustomBitlink2));
        System.assert(addCustomBitlink3.equals(addCustomBitlink4));
        System.assertEquals(addCustomBitlink1.hashCode(), addCustomBitlink2.hashCode());
        System.assertEquals(addCustomBitlink3.hashCode(), addCustomBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddCustomBitlink addCustomBitlink = new OASAddCustomBitlink();
        Map<String, String> propertymappings = addCustomBitlink.getPropertyMappings();
        System.assertEquals('customBitlink', propertymappings.get('custom_bitlink'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}