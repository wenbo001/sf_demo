@isTest
private class OASCityViewMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = cityViewMetricsAllOf1;
        OASCityViewMetricsAllOf cityViewMetricsAllOf3 = new OASCityViewMetricsAllOf();
        OASCityViewMetricsAllOf cityViewMetricsAllOf4 = cityViewMetricsAllOf3;

        System.assert(cityViewMetricsAllOf1.equals(cityViewMetricsAllOf2));
        System.assert(cityViewMetricsAllOf2.equals(cityViewMetricsAllOf1));
        System.assert(cityViewMetricsAllOf1.equals(cityViewMetricsAllOf1));
        System.assert(cityViewMetricsAllOf3.equals(cityViewMetricsAllOf4));
        System.assert(cityViewMetricsAllOf4.equals(cityViewMetricsAllOf3));
        System.assert(cityViewMetricsAllOf3.equals(cityViewMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf3 = new OASCityViewMetricsAllOf();
        OASCityViewMetricsAllOf cityViewMetricsAllOf4 = new OASCityViewMetricsAllOf();

        System.assert(cityViewMetricsAllOf1.equals(cityViewMetricsAllOf2));
        System.assert(cityViewMetricsAllOf2.equals(cityViewMetricsAllOf1));
        System.assert(cityViewMetricsAllOf3.equals(cityViewMetricsAllOf4));
        System.assert(cityViewMetricsAllOf4.equals(cityViewMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = new OASCityViewMetricsAllOf();

        System.assertEquals(false, cityViewMetricsAllOf1.equals('foo'));
        System.assertEquals(false, cityViewMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = new OASCityViewMetricsAllOf();
        OASCityViewMetricsAllOf cityViewMetricsAllOf3;

        System.assertEquals(false, cityViewMetricsAllOf1.equals(cityViewMetricsAllOf3));
        System.assertEquals(false, cityViewMetricsAllOf2.equals(cityViewMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = new OASCityViewMetricsAllOf();

        System.assertEquals(cityViewMetricsAllOf1.hashCode(), cityViewMetricsAllOf1.hashCode());
        System.assertEquals(cityViewMetricsAllOf2.hashCode(), cityViewMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf1 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf2 = OASCityViewMetricsAllOf.getExample();
        OASCityViewMetricsAllOf cityViewMetricsAllOf3 = new OASCityViewMetricsAllOf();
        OASCityViewMetricsAllOf cityViewMetricsAllOf4 = new OASCityViewMetricsAllOf();

        System.assert(cityViewMetricsAllOf1.equals(cityViewMetricsAllOf2));
        System.assert(cityViewMetricsAllOf3.equals(cityViewMetricsAllOf4));
        System.assertEquals(cityViewMetricsAllOf1.hashCode(), cityViewMetricsAllOf2.hashCode());
        System.assertEquals(cityViewMetricsAllOf3.hashCode(), cityViewMetricsAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf = new OASCityViewMetricsAllOf();
        Map<String, String> propertymappings = cityViewMetricsAllOf.getPropertyMappings();
        System.assertEquals('launchpadViews', propertymappings.get('launchpad_views'));
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityViewMetricsAllOf cityViewMetricsAllOf = new OASCityViewMetricsAllOf();
        System.assertEquals(new List<OASViewMetric>(), cityViewMetricsAllOf.launchpadViews);
        System.assertEquals(null, cityViewMetricsAllOf.otherMetrics);
    }
}