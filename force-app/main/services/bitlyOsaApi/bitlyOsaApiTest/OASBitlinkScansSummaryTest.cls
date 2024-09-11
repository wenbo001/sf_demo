@isTest
private class OASBitlinkScansSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = bitlinkScansSummary1;
        OASBitlinkScansSummary bitlinkScansSummary3 = new OASBitlinkScansSummary();
        OASBitlinkScansSummary bitlinkScansSummary4 = bitlinkScansSummary3;

        System.assert(bitlinkScansSummary1.equals(bitlinkScansSummary2));
        System.assert(bitlinkScansSummary2.equals(bitlinkScansSummary1));
        System.assert(bitlinkScansSummary1.equals(bitlinkScansSummary1));
        System.assert(bitlinkScansSummary3.equals(bitlinkScansSummary4));
        System.assert(bitlinkScansSummary4.equals(bitlinkScansSummary3));
        System.assert(bitlinkScansSummary3.equals(bitlinkScansSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary3 = new OASBitlinkScansSummary();
        OASBitlinkScansSummary bitlinkScansSummary4 = new OASBitlinkScansSummary();

        System.assert(bitlinkScansSummary1.equals(bitlinkScansSummary2));
        System.assert(bitlinkScansSummary2.equals(bitlinkScansSummary1));
        System.assert(bitlinkScansSummary3.equals(bitlinkScansSummary4));
        System.assert(bitlinkScansSummary4.equals(bitlinkScansSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = new OASBitlinkScansSummary();

        System.assertEquals(false, bitlinkScansSummary1.equals('foo'));
        System.assertEquals(false, bitlinkScansSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = new OASBitlinkScansSummary();
        OASBitlinkScansSummary bitlinkScansSummary3;

        System.assertEquals(false, bitlinkScansSummary1.equals(bitlinkScansSummary3));
        System.assertEquals(false, bitlinkScansSummary2.equals(bitlinkScansSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = new OASBitlinkScansSummary();

        System.assertEquals(bitlinkScansSummary1.hashCode(), bitlinkScansSummary1.hashCode());
        System.assertEquals(bitlinkScansSummary2.hashCode(), bitlinkScansSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkScansSummary bitlinkScansSummary1 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary2 = OASBitlinkScansSummary.getExample();
        OASBitlinkScansSummary bitlinkScansSummary3 = new OASBitlinkScansSummary();
        OASBitlinkScansSummary bitlinkScansSummary4 = new OASBitlinkScansSummary();

        System.assert(bitlinkScansSummary1.equals(bitlinkScansSummary2));
        System.assert(bitlinkScansSummary3.equals(bitlinkScansSummary4));
        System.assertEquals(bitlinkScansSummary1.hashCode(), bitlinkScansSummary2.hashCode());
        System.assertEquals(bitlinkScansSummary3.hashCode(), bitlinkScansSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkScansSummary bitlinkScansSummary = new OASBitlinkScansSummary();
        Map<String, String> propertymappings = bitlinkScansSummary.getPropertyMappings();
        System.assertEquals('totalScans', propertymappings.get('total_scans'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}