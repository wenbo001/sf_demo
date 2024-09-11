@isTest
private class OASMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = metricsAllOf1;
        OASMetricsAllOf metricsAllOf3 = new OASMetricsAllOf();
        OASMetricsAllOf metricsAllOf4 = metricsAllOf3;

        System.assert(metricsAllOf1.equals(metricsAllOf2));
        System.assert(metricsAllOf2.equals(metricsAllOf1));
        System.assert(metricsAllOf1.equals(metricsAllOf1));
        System.assert(metricsAllOf3.equals(metricsAllOf4));
        System.assert(metricsAllOf4.equals(metricsAllOf3));
        System.assert(metricsAllOf3.equals(metricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf3 = new OASMetricsAllOf();
        OASMetricsAllOf metricsAllOf4 = new OASMetricsAllOf();

        System.assert(metricsAllOf1.equals(metricsAllOf2));
        System.assert(metricsAllOf2.equals(metricsAllOf1));
        System.assert(metricsAllOf3.equals(metricsAllOf4));
        System.assert(metricsAllOf4.equals(metricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = new OASMetricsAllOf();

        System.assertEquals(false, metricsAllOf1.equals('foo'));
        System.assertEquals(false, metricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = new OASMetricsAllOf();
        OASMetricsAllOf metricsAllOf3;

        System.assertEquals(false, metricsAllOf1.equals(metricsAllOf3));
        System.assertEquals(false, metricsAllOf2.equals(metricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = new OASMetricsAllOf();

        System.assertEquals(metricsAllOf1.hashCode(), metricsAllOf1.hashCode());
        System.assertEquals(metricsAllOf2.hashCode(), metricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMetricsAllOf metricsAllOf1 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf2 = OASMetricsAllOf.getExample();
        OASMetricsAllOf metricsAllOf3 = new OASMetricsAllOf();
        OASMetricsAllOf metricsAllOf4 = new OASMetricsAllOf();

        System.assert(metricsAllOf1.equals(metricsAllOf2));
        System.assert(metricsAllOf3.equals(metricsAllOf4));
        System.assertEquals(metricsAllOf1.hashCode(), metricsAllOf2.hashCode());
        System.assertEquals(metricsAllOf3.hashCode(), metricsAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASMetricsAllOf metricsAllOf = new OASMetricsAllOf();
        System.assertEquals(new List<OASMetric>(), metricsAllOf.metrics);
    }
}