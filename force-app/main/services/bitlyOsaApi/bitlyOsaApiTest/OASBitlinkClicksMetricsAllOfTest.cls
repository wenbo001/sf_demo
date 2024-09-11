@isTest
private class OASBitlinkClicksMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = bitlinkClicksMetricsAllOf1;
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf3 = new OASBitlinkClicksMetricsAllOf();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf4 = bitlinkClicksMetricsAllOf3;

        System.assert(bitlinkClicksMetricsAllOf1.equals(bitlinkClicksMetricsAllOf2));
        System.assert(bitlinkClicksMetricsAllOf2.equals(bitlinkClicksMetricsAllOf1));
        System.assert(bitlinkClicksMetricsAllOf1.equals(bitlinkClicksMetricsAllOf1));
        System.assert(bitlinkClicksMetricsAllOf3.equals(bitlinkClicksMetricsAllOf4));
        System.assert(bitlinkClicksMetricsAllOf4.equals(bitlinkClicksMetricsAllOf3));
        System.assert(bitlinkClicksMetricsAllOf3.equals(bitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf3 = new OASBitlinkClicksMetricsAllOf();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf4 = new OASBitlinkClicksMetricsAllOf();

        System.assert(bitlinkClicksMetricsAllOf1.equals(bitlinkClicksMetricsAllOf2));
        System.assert(bitlinkClicksMetricsAllOf2.equals(bitlinkClicksMetricsAllOf1));
        System.assert(bitlinkClicksMetricsAllOf3.equals(bitlinkClicksMetricsAllOf4));
        System.assert(bitlinkClicksMetricsAllOf4.equals(bitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = new OASBitlinkClicksMetricsAllOf();

        System.assertEquals(false, bitlinkClicksMetricsAllOf1.equals('foo'));
        System.assertEquals(false, bitlinkClicksMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = new OASBitlinkClicksMetricsAllOf();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf3;

        System.assertEquals(false, bitlinkClicksMetricsAllOf1.equals(bitlinkClicksMetricsAllOf3));
        System.assertEquals(false, bitlinkClicksMetricsAllOf2.equals(bitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = new OASBitlinkClicksMetricsAllOf();

        System.assertEquals(bitlinkClicksMetricsAllOf1.hashCode(), bitlinkClicksMetricsAllOf1.hashCode());
        System.assertEquals(bitlinkClicksMetricsAllOf2.hashCode(), bitlinkClicksMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf1 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf2 = OASBitlinkClicksMetricsAllOf.getExample();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf3 = new OASBitlinkClicksMetricsAllOf();
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf4 = new OASBitlinkClicksMetricsAllOf();

        System.assert(bitlinkClicksMetricsAllOf1.equals(bitlinkClicksMetricsAllOf2));
        System.assert(bitlinkClicksMetricsAllOf3.equals(bitlinkClicksMetricsAllOf4));
        System.assertEquals(bitlinkClicksMetricsAllOf1.hashCode(), bitlinkClicksMetricsAllOf2.hashCode());
        System.assertEquals(bitlinkClicksMetricsAllOf3.hashCode(), bitlinkClicksMetricsAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkClicksMetricsAllOf bitlinkClicksMetricsAllOf = new OASBitlinkClicksMetricsAllOf();
        System.assertEquals(new List<OASBitlinkClicksMetric>(), bitlinkClicksMetricsAllOf.metrics);
    }
}