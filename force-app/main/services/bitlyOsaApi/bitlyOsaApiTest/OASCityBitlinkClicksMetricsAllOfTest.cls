@isTest
private class OASCityBitlinkClicksMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = cityBitlinkClicksMetricsAllOf1;
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf3 = new OASCityBitlinkClicksMetricsAllOf();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf4 = cityBitlinkClicksMetricsAllOf3;

        System.assert(cityBitlinkClicksMetricsAllOf1.equals(cityBitlinkClicksMetricsAllOf2));
        System.assert(cityBitlinkClicksMetricsAllOf2.equals(cityBitlinkClicksMetricsAllOf1));
        System.assert(cityBitlinkClicksMetricsAllOf1.equals(cityBitlinkClicksMetricsAllOf1));
        System.assert(cityBitlinkClicksMetricsAllOf3.equals(cityBitlinkClicksMetricsAllOf4));
        System.assert(cityBitlinkClicksMetricsAllOf4.equals(cityBitlinkClicksMetricsAllOf3));
        System.assert(cityBitlinkClicksMetricsAllOf3.equals(cityBitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf3 = new OASCityBitlinkClicksMetricsAllOf();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf4 = new OASCityBitlinkClicksMetricsAllOf();

        System.assert(cityBitlinkClicksMetricsAllOf1.equals(cityBitlinkClicksMetricsAllOf2));
        System.assert(cityBitlinkClicksMetricsAllOf2.equals(cityBitlinkClicksMetricsAllOf1));
        System.assert(cityBitlinkClicksMetricsAllOf3.equals(cityBitlinkClicksMetricsAllOf4));
        System.assert(cityBitlinkClicksMetricsAllOf4.equals(cityBitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = new OASCityBitlinkClicksMetricsAllOf();

        System.assertEquals(false, cityBitlinkClicksMetricsAllOf1.equals('foo'));
        System.assertEquals(false, cityBitlinkClicksMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = new OASCityBitlinkClicksMetricsAllOf();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf3;

        System.assertEquals(false, cityBitlinkClicksMetricsAllOf1.equals(cityBitlinkClicksMetricsAllOf3));
        System.assertEquals(false, cityBitlinkClicksMetricsAllOf2.equals(cityBitlinkClicksMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = new OASCityBitlinkClicksMetricsAllOf();

        System.assertEquals(cityBitlinkClicksMetricsAllOf1.hashCode(), cityBitlinkClicksMetricsAllOf1.hashCode());
        System.assertEquals(cityBitlinkClicksMetricsAllOf2.hashCode(), cityBitlinkClicksMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf1 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf2 = OASCityBitlinkClicksMetricsAllOf.getExample();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf3 = new OASCityBitlinkClicksMetricsAllOf();
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf4 = new OASCityBitlinkClicksMetricsAllOf();

        System.assert(cityBitlinkClicksMetricsAllOf1.equals(cityBitlinkClicksMetricsAllOf2));
        System.assert(cityBitlinkClicksMetricsAllOf3.equals(cityBitlinkClicksMetricsAllOf4));
        System.assertEquals(cityBitlinkClicksMetricsAllOf1.hashCode(), cityBitlinkClicksMetricsAllOf2.hashCode());
        System.assertEquals(cityBitlinkClicksMetricsAllOf3.hashCode(), cityBitlinkClicksMetricsAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf = new OASCityBitlinkClicksMetricsAllOf();
        Map<String, String> propertymappings = cityBitlinkClicksMetricsAllOf.getPropertyMappings();
        System.assertEquals('otherMetrics', propertymappings.get('other_metrics'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCityBitlinkClicksMetricsAllOf cityBitlinkClicksMetricsAllOf = new OASCityBitlinkClicksMetricsAllOf();
        System.assertEquals(new List<OASCityBitlinkClicksMetric>(), cityBitlinkClicksMetricsAllOf.metrics);
        System.assertEquals(null, cityBitlinkClicksMetricsAllOf.otherMetrics);
    }
}