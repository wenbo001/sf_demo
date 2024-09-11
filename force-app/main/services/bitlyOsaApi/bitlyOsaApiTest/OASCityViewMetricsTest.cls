@isTest
private class OASCityViewMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = cityViewMetrics1;
        OASCityViewMetrics cityViewMetrics3 = new OASCityViewMetrics();
        OASCityViewMetrics cityViewMetrics4 = cityViewMetrics3;

        System.assert(cityViewMetrics1.equals(cityViewMetrics2));
        System.assert(cityViewMetrics2.equals(cityViewMetrics1));
        System.assert(cityViewMetrics1.equals(cityViewMetrics1));
        System.assert(cityViewMetrics3.equals(cityViewMetrics4));
        System.assert(cityViewMetrics4.equals(cityViewMetrics3));
        System.assert(cityViewMetrics3.equals(cityViewMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics3 = new OASCityViewMetrics();
        OASCityViewMetrics cityViewMetrics4 = new OASCityViewMetrics();

        System.assert(cityViewMetrics1.equals(cityViewMetrics2));
        System.assert(cityViewMetrics2.equals(cityViewMetrics1));
        System.assert(cityViewMetrics3.equals(cityViewMetrics4));
        System.assert(cityViewMetrics4.equals(cityViewMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = new OASCityViewMetrics();

        System.assertEquals(false, cityViewMetrics1.equals('foo'));
        System.assertEquals(false, cityViewMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = new OASCityViewMetrics();
        OASCityViewMetrics cityViewMetrics3;

        System.assertEquals(false, cityViewMetrics1.equals(cityViewMetrics3));
        System.assertEquals(false, cityViewMetrics2.equals(cityViewMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = new OASCityViewMetrics();

        System.assertEquals(cityViewMetrics1.hashCode(), cityViewMetrics1.hashCode());
        System.assertEquals(cityViewMetrics2.hashCode(), cityViewMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityViewMetrics cityViewMetrics1 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics2 = OASCityViewMetrics.getExample();
        OASCityViewMetrics cityViewMetrics3 = new OASCityViewMetrics();
        OASCityViewMetrics cityViewMetrics4 = new OASCityViewMetrics();

        System.assert(cityViewMetrics1.equals(cityViewMetrics2));
        System.assert(cityViewMetrics3.equals(cityViewMetrics4));
        System.assertEquals(cityViewMetrics1.hashCode(), cityViewMetrics2.hashCode());
        System.assertEquals(cityViewMetrics3.hashCode(), cityViewMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityViewMetrics cityViewMetrics = new OASCityViewMetrics();
        Map<String, String> propertymappings = cityViewMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('launchpadViews', propertymappings.get('launchpad_views'));
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityViewMetrics cityViewMetrics = new OASCityViewMetrics();
        System.assertEquals(new List<OASViewMetric>(), cityViewMetrics.launchpadViews);
        System.assertEquals(null, cityViewMetrics.unit);
        System.assertEquals(null, cityViewMetrics.units);
        System.assertEquals(null, cityViewMetrics.facet);
        System.assertEquals(null, cityViewMetrics.unitReference);
        System.assertEquals(null, cityViewMetrics.otherMetrics);
    }
}