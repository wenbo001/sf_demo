@isTest
private class OASCityMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = cityMetrics1;
        OASCityMetrics cityMetrics3 = new OASCityMetrics();
        OASCityMetrics cityMetrics4 = cityMetrics3;

        System.assert(cityMetrics1.equals(cityMetrics2));
        System.assert(cityMetrics2.equals(cityMetrics1));
        System.assert(cityMetrics1.equals(cityMetrics1));
        System.assert(cityMetrics3.equals(cityMetrics4));
        System.assert(cityMetrics4.equals(cityMetrics3));
        System.assert(cityMetrics3.equals(cityMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics3 = new OASCityMetrics();
        OASCityMetrics cityMetrics4 = new OASCityMetrics();

        System.assert(cityMetrics1.equals(cityMetrics2));
        System.assert(cityMetrics2.equals(cityMetrics1));
        System.assert(cityMetrics3.equals(cityMetrics4));
        System.assert(cityMetrics4.equals(cityMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = new OASCityMetrics();

        System.assertEquals(false, cityMetrics1.equals('foo'));
        System.assertEquals(false, cityMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = new OASCityMetrics();
        OASCityMetrics cityMetrics3;

        System.assertEquals(false, cityMetrics1.equals(cityMetrics3));
        System.assertEquals(false, cityMetrics2.equals(cityMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = new OASCityMetrics();

        System.assertEquals(cityMetrics1.hashCode(), cityMetrics1.hashCode());
        System.assertEquals(cityMetrics2.hashCode(), cityMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityMetrics cityMetrics1 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics2 = OASCityMetrics.getExample();
        OASCityMetrics cityMetrics3 = new OASCityMetrics();
        OASCityMetrics cityMetrics4 = new OASCityMetrics();

        System.assert(cityMetrics1.equals(cityMetrics2));
        System.assert(cityMetrics3.equals(cityMetrics4));
        System.assertEquals(cityMetrics1.hashCode(), cityMetrics2.hashCode());
        System.assertEquals(cityMetrics3.hashCode(), cityMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityMetrics cityMetrics = new OASCityMetrics();
        Map<String, String> propertymappings = cityMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityMetrics cityMetrics = new OASCityMetrics();
        System.assertEquals(new List<OASCityMetric>(), cityMetrics.metrics);
        System.assertEquals(null, cityMetrics.unit);
        System.assertEquals(null, cityMetrics.units);
        System.assertEquals(null, cityMetrics.facet);
        System.assertEquals(null, cityMetrics.unitReference);
        System.assertEquals(null, cityMetrics.otherMetrics);
    }
}