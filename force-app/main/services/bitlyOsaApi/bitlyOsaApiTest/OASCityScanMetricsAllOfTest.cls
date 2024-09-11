@isTest
private class OASCityScanMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = cityScanMetricsAllOf1;
        OASCityScanMetricsAllOf cityScanMetricsAllOf3 = new OASCityScanMetricsAllOf();
        OASCityScanMetricsAllOf cityScanMetricsAllOf4 = cityScanMetricsAllOf3;

        System.assert(cityScanMetricsAllOf1.equals(cityScanMetricsAllOf2));
        System.assert(cityScanMetricsAllOf2.equals(cityScanMetricsAllOf1));
        System.assert(cityScanMetricsAllOf1.equals(cityScanMetricsAllOf1));
        System.assert(cityScanMetricsAllOf3.equals(cityScanMetricsAllOf4));
        System.assert(cityScanMetricsAllOf4.equals(cityScanMetricsAllOf3));
        System.assert(cityScanMetricsAllOf3.equals(cityScanMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf3 = new OASCityScanMetricsAllOf();
        OASCityScanMetricsAllOf cityScanMetricsAllOf4 = new OASCityScanMetricsAllOf();

        System.assert(cityScanMetricsAllOf1.equals(cityScanMetricsAllOf2));
        System.assert(cityScanMetricsAllOf2.equals(cityScanMetricsAllOf1));
        System.assert(cityScanMetricsAllOf3.equals(cityScanMetricsAllOf4));
        System.assert(cityScanMetricsAllOf4.equals(cityScanMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = new OASCityScanMetricsAllOf();

        System.assertEquals(false, cityScanMetricsAllOf1.equals('foo'));
        System.assertEquals(false, cityScanMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = new OASCityScanMetricsAllOf();
        OASCityScanMetricsAllOf cityScanMetricsAllOf3;

        System.assertEquals(false, cityScanMetricsAllOf1.equals(cityScanMetricsAllOf3));
        System.assertEquals(false, cityScanMetricsAllOf2.equals(cityScanMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = new OASCityScanMetricsAllOf();

        System.assertEquals(cityScanMetricsAllOf1.hashCode(), cityScanMetricsAllOf1.hashCode());
        System.assertEquals(cityScanMetricsAllOf2.hashCode(), cityScanMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf1 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf2 = OASCityScanMetricsAllOf.getExample();
        OASCityScanMetricsAllOf cityScanMetricsAllOf3 = new OASCityScanMetricsAllOf();
        OASCityScanMetricsAllOf cityScanMetricsAllOf4 = new OASCityScanMetricsAllOf();

        System.assert(cityScanMetricsAllOf1.equals(cityScanMetricsAllOf2));
        System.assert(cityScanMetricsAllOf3.equals(cityScanMetricsAllOf4));
        System.assertEquals(cityScanMetricsAllOf1.hashCode(), cityScanMetricsAllOf2.hashCode());
        System.assertEquals(cityScanMetricsAllOf3.hashCode(), cityScanMetricsAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf = new OASCityScanMetricsAllOf();
        Map<String, String> propertymappings = cityScanMetricsAllOf.getPropertyMappings();
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityScanMetricsAllOf cityScanMetricsAllOf = new OASCityScanMetricsAllOf();
        System.assertEquals(new List<OASCityScanMetric>(), cityScanMetricsAllOf.metrics);
        System.assertEquals(null, cityScanMetricsAllOf.otherMetrics);
    }
}