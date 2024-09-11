@isTest
private class OASClickMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = clickMetric1;
        OASClickMetric clickMetric3 = new OASClickMetric();
        OASClickMetric clickMetric4 = clickMetric3;

        System.assert(clickMetric1.equals(clickMetric2));
        System.assert(clickMetric2.equals(clickMetric1));
        System.assert(clickMetric1.equals(clickMetric1));
        System.assert(clickMetric3.equals(clickMetric4));
        System.assert(clickMetric4.equals(clickMetric3));
        System.assert(clickMetric3.equals(clickMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = OASClickMetric.getExample();
        OASClickMetric clickMetric3 = new OASClickMetric();
        OASClickMetric clickMetric4 = new OASClickMetric();

        System.assert(clickMetric1.equals(clickMetric2));
        System.assert(clickMetric2.equals(clickMetric1));
        System.assert(clickMetric3.equals(clickMetric4));
        System.assert(clickMetric4.equals(clickMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = new OASClickMetric();

        System.assertEquals(false, clickMetric1.equals('foo'));
        System.assertEquals(false, clickMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = new OASClickMetric();
        OASClickMetric clickMetric3;

        System.assertEquals(false, clickMetric1.equals(clickMetric3));
        System.assertEquals(false, clickMetric2.equals(clickMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = new OASClickMetric();

        System.assertEquals(clickMetric1.hashCode(), clickMetric1.hashCode());
        System.assertEquals(clickMetric2.hashCode(), clickMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClickMetric clickMetric1 = OASClickMetric.getExample();
        OASClickMetric clickMetric2 = OASClickMetric.getExample();
        OASClickMetric clickMetric3 = new OASClickMetric();
        OASClickMetric clickMetric4 = new OASClickMetric();

        System.assert(clickMetric1.equals(clickMetric2));
        System.assert(clickMetric3.equals(clickMetric4));
        System.assertEquals(clickMetric1.hashCode(), clickMetric2.hashCode());
        System.assertEquals(clickMetric3.hashCode(), clickMetric4.hashCode());
    }
}