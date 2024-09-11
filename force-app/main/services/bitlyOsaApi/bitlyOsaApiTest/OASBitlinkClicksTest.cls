@isTest
private class OASBitlinkClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = bitlinkClicks1;
        OASBitlinkClicks bitlinkClicks3 = new OASBitlinkClicks();
        OASBitlinkClicks bitlinkClicks4 = bitlinkClicks3;

        System.assert(bitlinkClicks1.equals(bitlinkClicks2));
        System.assert(bitlinkClicks2.equals(bitlinkClicks1));
        System.assert(bitlinkClicks1.equals(bitlinkClicks1));
        System.assert(bitlinkClicks3.equals(bitlinkClicks4));
        System.assert(bitlinkClicks4.equals(bitlinkClicks3));
        System.assert(bitlinkClicks3.equals(bitlinkClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks3 = new OASBitlinkClicks();
        OASBitlinkClicks bitlinkClicks4 = new OASBitlinkClicks();

        System.assert(bitlinkClicks1.equals(bitlinkClicks2));
        System.assert(bitlinkClicks2.equals(bitlinkClicks1));
        System.assert(bitlinkClicks3.equals(bitlinkClicks4));
        System.assert(bitlinkClicks4.equals(bitlinkClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = new OASBitlinkClicks();

        System.assertEquals(false, bitlinkClicks1.equals('foo'));
        System.assertEquals(false, bitlinkClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = new OASBitlinkClicks();
        OASBitlinkClicks bitlinkClicks3;

        System.assertEquals(false, bitlinkClicks1.equals(bitlinkClicks3));
        System.assertEquals(false, bitlinkClicks2.equals(bitlinkClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = new OASBitlinkClicks();

        System.assertEquals(bitlinkClicks1.hashCode(), bitlinkClicks1.hashCode());
        System.assertEquals(bitlinkClicks2.hashCode(), bitlinkClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkClicks bitlinkClicks1 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks2 = OASBitlinkClicks.getExample();
        OASBitlinkClicks bitlinkClicks3 = new OASBitlinkClicks();
        OASBitlinkClicks bitlinkClicks4 = new OASBitlinkClicks();

        System.assert(bitlinkClicks1.equals(bitlinkClicks2));
        System.assert(bitlinkClicks3.equals(bitlinkClicks4));
        System.assertEquals(bitlinkClicks1.hashCode(), bitlinkClicks2.hashCode());
        System.assertEquals(bitlinkClicks3.hashCode(), bitlinkClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkClicks bitlinkClicks = new OASBitlinkClicks();
        Map<String, String> propertymappings = bitlinkClicks.getPropertyMappings();
        System.assertEquals('bitlinkClicks', propertymappings.get('bitlink_clicks'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkClicks bitlinkClicks = new OASBitlinkClicks();
        System.assertEquals(new List<OASLinkClicks>(), bitlinkClicks.bitlinkClicks);
        System.assertEquals(null, bitlinkClicks.units);
        System.assertEquals(null, bitlinkClicks.unit);
        System.assertEquals(null, bitlinkClicks.unitReference);
    }
}