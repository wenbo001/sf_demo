@isTest
private class OASCityScanMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = cityScanMetrics1;
        OASCityScanMetrics cityScanMetrics3 = new OASCityScanMetrics();
        OASCityScanMetrics cityScanMetrics4 = cityScanMetrics3;

        System.assert(cityScanMetrics1.equals(cityScanMetrics2));
        System.assert(cityScanMetrics2.equals(cityScanMetrics1));
        System.assert(cityScanMetrics1.equals(cityScanMetrics1));
        System.assert(cityScanMetrics3.equals(cityScanMetrics4));
        System.assert(cityScanMetrics4.equals(cityScanMetrics3));
        System.assert(cityScanMetrics3.equals(cityScanMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics3 = new OASCityScanMetrics();
        OASCityScanMetrics cityScanMetrics4 = new OASCityScanMetrics();

        System.assert(cityScanMetrics1.equals(cityScanMetrics2));
        System.assert(cityScanMetrics2.equals(cityScanMetrics1));
        System.assert(cityScanMetrics3.equals(cityScanMetrics4));
        System.assert(cityScanMetrics4.equals(cityScanMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = new OASCityScanMetrics();

        System.assertEquals(false, cityScanMetrics1.equals('foo'));
        System.assertEquals(false, cityScanMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = new OASCityScanMetrics();
        OASCityScanMetrics cityScanMetrics3;

        System.assertEquals(false, cityScanMetrics1.equals(cityScanMetrics3));
        System.assertEquals(false, cityScanMetrics2.equals(cityScanMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = new OASCityScanMetrics();

        System.assertEquals(cityScanMetrics1.hashCode(), cityScanMetrics1.hashCode());
        System.assertEquals(cityScanMetrics2.hashCode(), cityScanMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityScanMetrics cityScanMetrics1 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics2 = OASCityScanMetrics.getExample();
        OASCityScanMetrics cityScanMetrics3 = new OASCityScanMetrics();
        OASCityScanMetrics cityScanMetrics4 = new OASCityScanMetrics();

        System.assert(cityScanMetrics1.equals(cityScanMetrics2));
        System.assert(cityScanMetrics3.equals(cityScanMetrics4));
        System.assertEquals(cityScanMetrics1.hashCode(), cityScanMetrics2.hashCode());
        System.assertEquals(cityScanMetrics3.hashCode(), cityScanMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityScanMetrics cityScanMetrics = new OASCityScanMetrics();
        Map<String, String> propertymappings = cityScanMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityScanMetrics cityScanMetrics = new OASCityScanMetrics();
        System.assertEquals(new List<OASCityScanMetric>(), cityScanMetrics.metrics);
        System.assertEquals(null, cityScanMetrics.unit);
        System.assertEquals(null, cityScanMetrics.units);
        System.assertEquals(null, cityScanMetrics.facet);
        System.assertEquals(null, cityScanMetrics.unitReference);
        System.assertEquals(null, cityScanMetrics.otherMetrics);
    }
}