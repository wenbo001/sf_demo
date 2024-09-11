@isTest
private class OASScanMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = scanMetrics1;
        OASScanMetrics scanMetrics3 = new OASScanMetrics();
        OASScanMetrics scanMetrics4 = scanMetrics3;

        System.assert(scanMetrics1.equals(scanMetrics2));
        System.assert(scanMetrics2.equals(scanMetrics1));
        System.assert(scanMetrics1.equals(scanMetrics1));
        System.assert(scanMetrics3.equals(scanMetrics4));
        System.assert(scanMetrics4.equals(scanMetrics3));
        System.assert(scanMetrics3.equals(scanMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics3 = new OASScanMetrics();
        OASScanMetrics scanMetrics4 = new OASScanMetrics();

        System.assert(scanMetrics1.equals(scanMetrics2));
        System.assert(scanMetrics2.equals(scanMetrics1));
        System.assert(scanMetrics3.equals(scanMetrics4));
        System.assert(scanMetrics4.equals(scanMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = new OASScanMetrics();

        System.assertEquals(false, scanMetrics1.equals('foo'));
        System.assertEquals(false, scanMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = new OASScanMetrics();
        OASScanMetrics scanMetrics3;

        System.assertEquals(false, scanMetrics1.equals(scanMetrics3));
        System.assertEquals(false, scanMetrics2.equals(scanMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = new OASScanMetrics();

        System.assertEquals(scanMetrics1.hashCode(), scanMetrics1.hashCode());
        System.assertEquals(scanMetrics2.hashCode(), scanMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASScanMetrics scanMetrics1 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics2 = OASScanMetrics.getExample();
        OASScanMetrics scanMetrics3 = new OASScanMetrics();
        OASScanMetrics scanMetrics4 = new OASScanMetrics();

        System.assert(scanMetrics1.equals(scanMetrics2));
        System.assert(scanMetrics3.equals(scanMetrics4));
        System.assertEquals(scanMetrics1.hashCode(), scanMetrics2.hashCode());
        System.assertEquals(scanMetrics3.hashCode(), scanMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASScanMetrics scanMetrics = new OASScanMetrics();
        Map<String, String> propertymappings = scanMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASScanMetrics scanMetrics = new OASScanMetrics();
        System.assertEquals(new List<OASScanMetric>(), scanMetrics.metrics);
        System.assertEquals(null, scanMetrics.unit);
        System.assertEquals(null, scanMetrics.units);
        System.assertEquals(null, scanMetrics.facet);
        System.assertEquals(null, scanMetrics.unitReference);
    }
}