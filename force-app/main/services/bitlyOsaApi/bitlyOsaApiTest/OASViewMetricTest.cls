@isTest
private class OASViewMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = viewMetric1;
        OASViewMetric viewMetric3 = new OASViewMetric();
        OASViewMetric viewMetric4 = viewMetric3;

        System.assert(viewMetric1.equals(viewMetric2));
        System.assert(viewMetric2.equals(viewMetric1));
        System.assert(viewMetric1.equals(viewMetric1));
        System.assert(viewMetric3.equals(viewMetric4));
        System.assert(viewMetric4.equals(viewMetric3));
        System.assert(viewMetric3.equals(viewMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = OASViewMetric.getExample();
        OASViewMetric viewMetric3 = new OASViewMetric();
        OASViewMetric viewMetric4 = new OASViewMetric();

        System.assert(viewMetric1.equals(viewMetric2));
        System.assert(viewMetric2.equals(viewMetric1));
        System.assert(viewMetric3.equals(viewMetric4));
        System.assert(viewMetric4.equals(viewMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = new OASViewMetric();

        System.assertEquals(false, viewMetric1.equals('foo'));
        System.assertEquals(false, viewMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = new OASViewMetric();
        OASViewMetric viewMetric3;

        System.assertEquals(false, viewMetric1.equals(viewMetric3));
        System.assertEquals(false, viewMetric2.equals(viewMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = new OASViewMetric();

        System.assertEquals(viewMetric1.hashCode(), viewMetric1.hashCode());
        System.assertEquals(viewMetric2.hashCode(), viewMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASViewMetric viewMetric1 = OASViewMetric.getExample();
        OASViewMetric viewMetric2 = OASViewMetric.getExample();
        OASViewMetric viewMetric3 = new OASViewMetric();
        OASViewMetric viewMetric4 = new OASViewMetric();

        System.assert(viewMetric1.equals(viewMetric2));
        System.assert(viewMetric3.equals(viewMetric4));
        System.assertEquals(viewMetric1.hashCode(), viewMetric2.hashCode());
        System.assertEquals(viewMetric3.hashCode(), viewMetric4.hashCode());
    }
}