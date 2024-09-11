@isTest
private class OASClickMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = clickMetricsAllOf1;
        OASClickMetricsAllOf clickMetricsAllOf3 = new OASClickMetricsAllOf();
        OASClickMetricsAllOf clickMetricsAllOf4 = clickMetricsAllOf3;

        System.assert(clickMetricsAllOf1.equals(clickMetricsAllOf2));
        System.assert(clickMetricsAllOf2.equals(clickMetricsAllOf1));
        System.assert(clickMetricsAllOf1.equals(clickMetricsAllOf1));
        System.assert(clickMetricsAllOf3.equals(clickMetricsAllOf4));
        System.assert(clickMetricsAllOf4.equals(clickMetricsAllOf3));
        System.assert(clickMetricsAllOf3.equals(clickMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf3 = new OASClickMetricsAllOf();
        OASClickMetricsAllOf clickMetricsAllOf4 = new OASClickMetricsAllOf();

        System.assert(clickMetricsAllOf1.equals(clickMetricsAllOf2));
        System.assert(clickMetricsAllOf2.equals(clickMetricsAllOf1));
        System.assert(clickMetricsAllOf3.equals(clickMetricsAllOf4));
        System.assert(clickMetricsAllOf4.equals(clickMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = new OASClickMetricsAllOf();

        System.assertEquals(false, clickMetricsAllOf1.equals('foo'));
        System.assertEquals(false, clickMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = new OASClickMetricsAllOf();
        OASClickMetricsAllOf clickMetricsAllOf3;

        System.assertEquals(false, clickMetricsAllOf1.equals(clickMetricsAllOf3));
        System.assertEquals(false, clickMetricsAllOf2.equals(clickMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = new OASClickMetricsAllOf();

        System.assertEquals(clickMetricsAllOf1.hashCode(), clickMetricsAllOf1.hashCode());
        System.assertEquals(clickMetricsAllOf2.hashCode(), clickMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClickMetricsAllOf clickMetricsAllOf1 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf2 = OASClickMetricsAllOf.getExample();
        OASClickMetricsAllOf clickMetricsAllOf3 = new OASClickMetricsAllOf();
        OASClickMetricsAllOf clickMetricsAllOf4 = new OASClickMetricsAllOf();

        System.assert(clickMetricsAllOf1.equals(clickMetricsAllOf2));
        System.assert(clickMetricsAllOf3.equals(clickMetricsAllOf4));
        System.assertEquals(clickMetricsAllOf1.hashCode(), clickMetricsAllOf2.hashCode());
        System.assertEquals(clickMetricsAllOf3.hashCode(), clickMetricsAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClickMetricsAllOf clickMetricsAllOf = new OASClickMetricsAllOf();
        System.assertEquals(new List<OASClickMetric>(), clickMetricsAllOf.metrics);
    }
}