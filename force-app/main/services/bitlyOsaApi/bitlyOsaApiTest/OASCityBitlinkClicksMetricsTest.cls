@isTest
private class OASCityBitlinkClicksMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = cityBitlinkClicksMetrics1;
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics3 = new OASCityBitlinkClicksMetrics();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics4 = cityBitlinkClicksMetrics3;

        System.assert(cityBitlinkClicksMetrics1.equals(cityBitlinkClicksMetrics2));
        System.assert(cityBitlinkClicksMetrics2.equals(cityBitlinkClicksMetrics1));
        System.assert(cityBitlinkClicksMetrics1.equals(cityBitlinkClicksMetrics1));
        System.assert(cityBitlinkClicksMetrics3.equals(cityBitlinkClicksMetrics4));
        System.assert(cityBitlinkClicksMetrics4.equals(cityBitlinkClicksMetrics3));
        System.assert(cityBitlinkClicksMetrics3.equals(cityBitlinkClicksMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics3 = new OASCityBitlinkClicksMetrics();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics4 = new OASCityBitlinkClicksMetrics();

        System.assert(cityBitlinkClicksMetrics1.equals(cityBitlinkClicksMetrics2));
        System.assert(cityBitlinkClicksMetrics2.equals(cityBitlinkClicksMetrics1));
        System.assert(cityBitlinkClicksMetrics3.equals(cityBitlinkClicksMetrics4));
        System.assert(cityBitlinkClicksMetrics4.equals(cityBitlinkClicksMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = new OASCityBitlinkClicksMetrics();

        System.assertEquals(false, cityBitlinkClicksMetrics1.equals('foo'));
        System.assertEquals(false, cityBitlinkClicksMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = new OASCityBitlinkClicksMetrics();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics3;

        System.assertEquals(false, cityBitlinkClicksMetrics1.equals(cityBitlinkClicksMetrics3));
        System.assertEquals(false, cityBitlinkClicksMetrics2.equals(cityBitlinkClicksMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = new OASCityBitlinkClicksMetrics();

        System.assertEquals(cityBitlinkClicksMetrics1.hashCode(), cityBitlinkClicksMetrics1.hashCode());
        System.assertEquals(cityBitlinkClicksMetrics2.hashCode(), cityBitlinkClicksMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics1 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics2 = OASCityBitlinkClicksMetrics.getExample();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics3 = new OASCityBitlinkClicksMetrics();
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics4 = new OASCityBitlinkClicksMetrics();

        System.assert(cityBitlinkClicksMetrics1.equals(cityBitlinkClicksMetrics2));
        System.assert(cityBitlinkClicksMetrics3.equals(cityBitlinkClicksMetrics4));
        System.assertEquals(cityBitlinkClicksMetrics1.hashCode(), cityBitlinkClicksMetrics2.hashCode());
        System.assertEquals(cityBitlinkClicksMetrics3.hashCode(), cityBitlinkClicksMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics = new OASCityBitlinkClicksMetrics();
        Map<String, String> propertymappings = cityBitlinkClicksMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityBitlinkClicksMetrics cityBitlinkClicksMetrics = new OASCityBitlinkClicksMetrics();
        System.assertEquals(new List<OASCityBitlinkClicksMetric>(), cityBitlinkClicksMetrics.metrics);
        System.assertEquals(null, cityBitlinkClicksMetrics.unit);
        System.assertEquals(null, cityBitlinkClicksMetrics.units);
        System.assertEquals(null, cityBitlinkClicksMetrics.facet);
        System.assertEquals(null, cityBitlinkClicksMetrics.unitReference);
        System.assertEquals(null, cityBitlinkClicksMetrics.otherMetrics);
    }
}