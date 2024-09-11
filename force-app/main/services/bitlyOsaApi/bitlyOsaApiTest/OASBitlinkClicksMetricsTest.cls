@isTest
private class OASBitlinkClicksMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = bitlinkClicksMetrics1;
        OASBitlinkClicksMetrics bitlinkClicksMetrics3 = new OASBitlinkClicksMetrics();
        OASBitlinkClicksMetrics bitlinkClicksMetrics4 = bitlinkClicksMetrics3;

        System.assert(bitlinkClicksMetrics1.equals(bitlinkClicksMetrics2));
        System.assert(bitlinkClicksMetrics2.equals(bitlinkClicksMetrics1));
        System.assert(bitlinkClicksMetrics1.equals(bitlinkClicksMetrics1));
        System.assert(bitlinkClicksMetrics3.equals(bitlinkClicksMetrics4));
        System.assert(bitlinkClicksMetrics4.equals(bitlinkClicksMetrics3));
        System.assert(bitlinkClicksMetrics3.equals(bitlinkClicksMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics3 = new OASBitlinkClicksMetrics();
        OASBitlinkClicksMetrics bitlinkClicksMetrics4 = new OASBitlinkClicksMetrics();

        System.assert(bitlinkClicksMetrics1.equals(bitlinkClicksMetrics2));
        System.assert(bitlinkClicksMetrics2.equals(bitlinkClicksMetrics1));
        System.assert(bitlinkClicksMetrics3.equals(bitlinkClicksMetrics4));
        System.assert(bitlinkClicksMetrics4.equals(bitlinkClicksMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = new OASBitlinkClicksMetrics();

        System.assertEquals(false, bitlinkClicksMetrics1.equals('foo'));
        System.assertEquals(false, bitlinkClicksMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = new OASBitlinkClicksMetrics();
        OASBitlinkClicksMetrics bitlinkClicksMetrics3;

        System.assertEquals(false, bitlinkClicksMetrics1.equals(bitlinkClicksMetrics3));
        System.assertEquals(false, bitlinkClicksMetrics2.equals(bitlinkClicksMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = new OASBitlinkClicksMetrics();

        System.assertEquals(bitlinkClicksMetrics1.hashCode(), bitlinkClicksMetrics1.hashCode());
        System.assertEquals(bitlinkClicksMetrics2.hashCode(), bitlinkClicksMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics1 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics2 = OASBitlinkClicksMetrics.getExample();
        OASBitlinkClicksMetrics bitlinkClicksMetrics3 = new OASBitlinkClicksMetrics();
        OASBitlinkClicksMetrics bitlinkClicksMetrics4 = new OASBitlinkClicksMetrics();

        System.assert(bitlinkClicksMetrics1.equals(bitlinkClicksMetrics2));
        System.assert(bitlinkClicksMetrics3.equals(bitlinkClicksMetrics4));
        System.assertEquals(bitlinkClicksMetrics1.hashCode(), bitlinkClicksMetrics2.hashCode());
        System.assertEquals(bitlinkClicksMetrics3.hashCode(), bitlinkClicksMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics = new OASBitlinkClicksMetrics();
        Map<String, String> propertymappings = bitlinkClicksMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkClicksMetrics bitlinkClicksMetrics = new OASBitlinkClicksMetrics();
        System.assertEquals(new List<OASBitlinkClicksMetric>(), bitlinkClicksMetrics.metrics);
        System.assertEquals(null, bitlinkClicksMetrics.unit);
        System.assertEquals(null, bitlinkClicksMetrics.units);
        System.assertEquals(null, bitlinkClicksMetrics.facet);
        System.assertEquals(null, bitlinkClicksMetrics.unitReference);
    }
}