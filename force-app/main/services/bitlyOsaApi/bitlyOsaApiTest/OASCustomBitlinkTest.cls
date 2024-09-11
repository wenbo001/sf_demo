@isTest
private class OASCustomBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = customBitlink1;
        OASCustomBitlink customBitlink3 = new OASCustomBitlink();
        OASCustomBitlink customBitlink4 = customBitlink3;

        System.assert(customBitlink1.equals(customBitlink2));
        System.assert(customBitlink2.equals(customBitlink1));
        System.assert(customBitlink1.equals(customBitlink1));
        System.assert(customBitlink3.equals(customBitlink4));
        System.assert(customBitlink4.equals(customBitlink3));
        System.assert(customBitlink3.equals(customBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink3 = new OASCustomBitlink();
        OASCustomBitlink customBitlink4 = new OASCustomBitlink();

        System.assert(customBitlink1.equals(customBitlink2));
        System.assert(customBitlink2.equals(customBitlink1));
        System.assert(customBitlink3.equals(customBitlink4));
        System.assert(customBitlink4.equals(customBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = new OASCustomBitlink();

        System.assertEquals(false, customBitlink1.equals('foo'));
        System.assertEquals(false, customBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = new OASCustomBitlink();
        OASCustomBitlink customBitlink3;

        System.assertEquals(false, customBitlink1.equals(customBitlink3));
        System.assertEquals(false, customBitlink2.equals(customBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = new OASCustomBitlink();

        System.assertEquals(customBitlink1.hashCode(), customBitlink1.hashCode());
        System.assertEquals(customBitlink2.hashCode(), customBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomBitlink customBitlink1 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink2 = OASCustomBitlink.getExample();
        OASCustomBitlink customBitlink3 = new OASCustomBitlink();
        OASCustomBitlink customBitlink4 = new OASCustomBitlink();

        System.assert(customBitlink1.equals(customBitlink2));
        System.assert(customBitlink3.equals(customBitlink4));
        System.assertEquals(customBitlink1.hashCode(), customBitlink2.hashCode());
        System.assertEquals(customBitlink3.hashCode(), customBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomBitlink customBitlink = new OASCustomBitlink();
        Map<String, String> propertymappings = customBitlink.getPropertyMappings();
        System.assertEquals('customBitlink', propertymappings.get('custom_bitlink'));
        System.assertEquals('bitlinkHistory', propertymappings.get('bitlink_history'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomBitlink customBitlink = new OASCustomBitlink();
        System.assertEquals(new List<OASCustomBitlinkHistory>(), customBitlink.bitlinkHistory);
        System.assertEquals(null, customBitlink.customBitlink);
        System.assertEquals(null, customBitlink.bitlink);
    }
}