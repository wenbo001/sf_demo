@isTest
private class OASCityMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = cityMetricsAllOf1;
        OASCityMetricsAllOf cityMetricsAllOf3 = new OASCityMetricsAllOf();
        OASCityMetricsAllOf cityMetricsAllOf4 = cityMetricsAllOf3;

        System.assert(cityMetricsAllOf1.equals(cityMetricsAllOf2));
        System.assert(cityMetricsAllOf2.equals(cityMetricsAllOf1));
        System.assert(cityMetricsAllOf1.equals(cityMetricsAllOf1));
        System.assert(cityMetricsAllOf3.equals(cityMetricsAllOf4));
        System.assert(cityMetricsAllOf4.equals(cityMetricsAllOf3));
        System.assert(cityMetricsAllOf3.equals(cityMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf3 = new OASCityMetricsAllOf();
        OASCityMetricsAllOf cityMetricsAllOf4 = new OASCityMetricsAllOf();

        System.assert(cityMetricsAllOf1.equals(cityMetricsAllOf2));
        System.assert(cityMetricsAllOf2.equals(cityMetricsAllOf1));
        System.assert(cityMetricsAllOf3.equals(cityMetricsAllOf4));
        System.assert(cityMetricsAllOf4.equals(cityMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = new OASCityMetricsAllOf();

        System.assertEquals(false, cityMetricsAllOf1.equals('foo'));
        System.assertEquals(false, cityMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = new OASCityMetricsAllOf();
        OASCityMetricsAllOf cityMetricsAllOf3;

        System.assertEquals(false, cityMetricsAllOf1.equals(cityMetricsAllOf3));
        System.assertEquals(false, cityMetricsAllOf2.equals(cityMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = new OASCityMetricsAllOf();

        System.assertEquals(cityMetricsAllOf1.hashCode(), cityMetricsAllOf1.hashCode());
        System.assertEquals(cityMetricsAllOf2.hashCode(), cityMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityMetricsAllOf cityMetricsAllOf1 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf2 = OASCityMetricsAllOf.getExample();
        OASCityMetricsAllOf cityMetricsAllOf3 = new OASCityMetricsAllOf();
        OASCityMetricsAllOf cityMetricsAllOf4 = new OASCityMetricsAllOf();

        System.assert(cityMetricsAllOf1.equals(cityMetricsAllOf2));
        System.assert(cityMetricsAllOf3.equals(cityMetricsAllOf4));
        System.assertEquals(cityMetricsAllOf1.hashCode(), cityMetricsAllOf2.hashCode());
        System.assertEquals(cityMetricsAllOf3.hashCode(), cityMetricsAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityMetricsAllOf cityMetricsAllOf = new OASCityMetricsAllOf();
        Map<String, String> propertymappings = cityMetricsAllOf.getPropertyMappings();
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityMetricsAllOf cityMetricsAllOf = new OASCityMetricsAllOf();
        System.assertEquals(new List<OASCityMetric>(), cityMetricsAllOf.metrics);
        System.assertEquals(null, cityMetricsAllOf.otherMetrics);
    }
}