@isTest
private class OASScanMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = scanMetricsAllOf1;
        OASScanMetricsAllOf scanMetricsAllOf3 = new OASScanMetricsAllOf();
        OASScanMetricsAllOf scanMetricsAllOf4 = scanMetricsAllOf3;

        System.assert(scanMetricsAllOf1.equals(scanMetricsAllOf2));
        System.assert(scanMetricsAllOf2.equals(scanMetricsAllOf1));
        System.assert(scanMetricsAllOf1.equals(scanMetricsAllOf1));
        System.assert(scanMetricsAllOf3.equals(scanMetricsAllOf4));
        System.assert(scanMetricsAllOf4.equals(scanMetricsAllOf3));
        System.assert(scanMetricsAllOf3.equals(scanMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf3 = new OASScanMetricsAllOf();
        OASScanMetricsAllOf scanMetricsAllOf4 = new OASScanMetricsAllOf();

        System.assert(scanMetricsAllOf1.equals(scanMetricsAllOf2));
        System.assert(scanMetricsAllOf2.equals(scanMetricsAllOf1));
        System.assert(scanMetricsAllOf3.equals(scanMetricsAllOf4));
        System.assert(scanMetricsAllOf4.equals(scanMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = new OASScanMetricsAllOf();

        System.assertEquals(false, scanMetricsAllOf1.equals('foo'));
        System.assertEquals(false, scanMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = new OASScanMetricsAllOf();
        OASScanMetricsAllOf scanMetricsAllOf3;

        System.assertEquals(false, scanMetricsAllOf1.equals(scanMetricsAllOf3));
        System.assertEquals(false, scanMetricsAllOf2.equals(scanMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = new OASScanMetricsAllOf();

        System.assertEquals(scanMetricsAllOf1.hashCode(), scanMetricsAllOf1.hashCode());
        System.assertEquals(scanMetricsAllOf2.hashCode(), scanMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScanMetricsAllOf scanMetricsAllOf1 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf2 = OASScanMetricsAllOf.getExample();
        OASScanMetricsAllOf scanMetricsAllOf3 = new OASScanMetricsAllOf();
        OASScanMetricsAllOf scanMetricsAllOf4 = new OASScanMetricsAllOf();

        System.assert(scanMetricsAllOf1.equals(scanMetricsAllOf2));
        System.assert(scanMetricsAllOf3.equals(scanMetricsAllOf4));
        System.assertEquals(scanMetricsAllOf1.hashCode(), scanMetricsAllOf2.hashCode());
        System.assertEquals(scanMetricsAllOf3.hashCode(), scanMetricsAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASScanMetricsAllOf scanMetricsAllOf = new OASScanMetricsAllOf();
        System.assertEquals(new List<OASScanMetric>(), scanMetricsAllOf.metrics);
    }
}