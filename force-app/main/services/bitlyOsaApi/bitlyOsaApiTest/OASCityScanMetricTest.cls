@isTest
private class OASCityScanMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = cityScanMetric1;
        OASCityScanMetric cityScanMetric3 = new OASCityScanMetric();
        OASCityScanMetric cityScanMetric4 = cityScanMetric3;

        System.assert(cityScanMetric1.equals(cityScanMetric2));
        System.assert(cityScanMetric2.equals(cityScanMetric1));
        System.assert(cityScanMetric1.equals(cityScanMetric1));
        System.assert(cityScanMetric3.equals(cityScanMetric4));
        System.assert(cityScanMetric4.equals(cityScanMetric3));
        System.assert(cityScanMetric3.equals(cityScanMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric3 = new OASCityScanMetric();
        OASCityScanMetric cityScanMetric4 = new OASCityScanMetric();

        System.assert(cityScanMetric1.equals(cityScanMetric2));
        System.assert(cityScanMetric2.equals(cityScanMetric1));
        System.assert(cityScanMetric3.equals(cityScanMetric4));
        System.assert(cityScanMetric4.equals(cityScanMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = new OASCityScanMetric();

        System.assertEquals(false, cityScanMetric1.equals('foo'));
        System.assertEquals(false, cityScanMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = new OASCityScanMetric();
        OASCityScanMetric cityScanMetric3;

        System.assertEquals(false, cityScanMetric1.equals(cityScanMetric3));
        System.assertEquals(false, cityScanMetric2.equals(cityScanMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = new OASCityScanMetric();

        System.assertEquals(cityScanMetric1.hashCode(), cityScanMetric1.hashCode());
        System.assertEquals(cityScanMetric2.hashCode(), cityScanMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityScanMetric cityScanMetric1 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric2 = OASCityScanMetric.getExample();
        OASCityScanMetric cityScanMetric3 = new OASCityScanMetric();
        OASCityScanMetric cityScanMetric4 = new OASCityScanMetric();

        System.assert(cityScanMetric1.equals(cityScanMetric2));
        System.assert(cityScanMetric3.equals(cityScanMetric4));
        System.assertEquals(cityScanMetric1.hashCode(), cityScanMetric2.hashCode());
        System.assertEquals(cityScanMetric3.hashCode(), cityScanMetric4.hashCode());
    }
}