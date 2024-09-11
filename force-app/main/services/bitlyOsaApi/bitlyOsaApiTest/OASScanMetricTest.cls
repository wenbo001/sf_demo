@isTest
private class OASScanMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = scanMetric1;
        OASScanMetric scanMetric3 = new OASScanMetric();
        OASScanMetric scanMetric4 = scanMetric3;

        System.assert(scanMetric1.equals(scanMetric2));
        System.assert(scanMetric2.equals(scanMetric1));
        System.assert(scanMetric1.equals(scanMetric1));
        System.assert(scanMetric3.equals(scanMetric4));
        System.assert(scanMetric4.equals(scanMetric3));
        System.assert(scanMetric3.equals(scanMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = OASScanMetric.getExample();
        OASScanMetric scanMetric3 = new OASScanMetric();
        OASScanMetric scanMetric4 = new OASScanMetric();

        System.assert(scanMetric1.equals(scanMetric2));
        System.assert(scanMetric2.equals(scanMetric1));
        System.assert(scanMetric3.equals(scanMetric4));
        System.assert(scanMetric4.equals(scanMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = new OASScanMetric();

        System.assertEquals(false, scanMetric1.equals('foo'));
        System.assertEquals(false, scanMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = new OASScanMetric();
        OASScanMetric scanMetric3;

        System.assertEquals(false, scanMetric1.equals(scanMetric3));
        System.assertEquals(false, scanMetric2.equals(scanMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = new OASScanMetric();

        System.assertEquals(scanMetric1.hashCode(), scanMetric1.hashCode());
        System.assertEquals(scanMetric2.hashCode(), scanMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScanMetric scanMetric1 = OASScanMetric.getExample();
        OASScanMetric scanMetric2 = OASScanMetric.getExample();
        OASScanMetric scanMetric3 = new OASScanMetric();
        OASScanMetric scanMetric4 = new OASScanMetric();

        System.assert(scanMetric1.equals(scanMetric2));
        System.assert(scanMetric3.equals(scanMetric4));
        System.assertEquals(scanMetric1.hashCode(), scanMetric2.hashCode());
        System.assertEquals(scanMetric3.hashCode(), scanMetric4.hashCode());
    }
}