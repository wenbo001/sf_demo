@isTest
private class OASBitlinkClicksSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = bitlinkClicksSummary1;
        OASBitlinkClicksSummary bitlinkClicksSummary3 = new OASBitlinkClicksSummary();
        OASBitlinkClicksSummary bitlinkClicksSummary4 = bitlinkClicksSummary3;

        System.assert(bitlinkClicksSummary1.equals(bitlinkClicksSummary2));
        System.assert(bitlinkClicksSummary2.equals(bitlinkClicksSummary1));
        System.assert(bitlinkClicksSummary1.equals(bitlinkClicksSummary1));
        System.assert(bitlinkClicksSummary3.equals(bitlinkClicksSummary4));
        System.assert(bitlinkClicksSummary4.equals(bitlinkClicksSummary3));
        System.assert(bitlinkClicksSummary3.equals(bitlinkClicksSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary3 = new OASBitlinkClicksSummary();
        OASBitlinkClicksSummary bitlinkClicksSummary4 = new OASBitlinkClicksSummary();

        System.assert(bitlinkClicksSummary1.equals(bitlinkClicksSummary2));
        System.assert(bitlinkClicksSummary2.equals(bitlinkClicksSummary1));
        System.assert(bitlinkClicksSummary3.equals(bitlinkClicksSummary4));
        System.assert(bitlinkClicksSummary4.equals(bitlinkClicksSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = new OASBitlinkClicksSummary();

        System.assertEquals(false, bitlinkClicksSummary1.equals('foo'));
        System.assertEquals(false, bitlinkClicksSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = new OASBitlinkClicksSummary();
        OASBitlinkClicksSummary bitlinkClicksSummary3;

        System.assertEquals(false, bitlinkClicksSummary1.equals(bitlinkClicksSummary3));
        System.assertEquals(false, bitlinkClicksSummary2.equals(bitlinkClicksSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = new OASBitlinkClicksSummary();

        System.assertEquals(bitlinkClicksSummary1.hashCode(), bitlinkClicksSummary1.hashCode());
        System.assertEquals(bitlinkClicksSummary2.hashCode(), bitlinkClicksSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkClicksSummary bitlinkClicksSummary1 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary2 = OASBitlinkClicksSummary.getExample();
        OASBitlinkClicksSummary bitlinkClicksSummary3 = new OASBitlinkClicksSummary();
        OASBitlinkClicksSummary bitlinkClicksSummary4 = new OASBitlinkClicksSummary();

        System.assert(bitlinkClicksSummary1.equals(bitlinkClicksSummary2));
        System.assert(bitlinkClicksSummary3.equals(bitlinkClicksSummary4));
        System.assertEquals(bitlinkClicksSummary1.hashCode(), bitlinkClicksSummary2.hashCode());
        System.assertEquals(bitlinkClicksSummary3.hashCode(), bitlinkClicksSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkClicksSummary bitlinkClicksSummary = new OASBitlinkClicksSummary();
        Map<String, String> propertymappings = bitlinkClicksSummary.getPropertyMappings();
        System.assertEquals('totalBitlinkClicks', propertymappings.get('total_bitlink_clicks'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}