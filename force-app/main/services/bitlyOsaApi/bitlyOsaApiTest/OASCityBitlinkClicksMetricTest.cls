@isTest
private class OASCityBitlinkClicksMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = cityBitlinkClicksMetric1;
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric3 = new OASCityBitlinkClicksMetric();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric4 = cityBitlinkClicksMetric3;

        System.assert(cityBitlinkClicksMetric1.equals(cityBitlinkClicksMetric2));
        System.assert(cityBitlinkClicksMetric2.equals(cityBitlinkClicksMetric1));
        System.assert(cityBitlinkClicksMetric1.equals(cityBitlinkClicksMetric1));
        System.assert(cityBitlinkClicksMetric3.equals(cityBitlinkClicksMetric4));
        System.assert(cityBitlinkClicksMetric4.equals(cityBitlinkClicksMetric3));
        System.assert(cityBitlinkClicksMetric3.equals(cityBitlinkClicksMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric3 = new OASCityBitlinkClicksMetric();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric4 = new OASCityBitlinkClicksMetric();

        System.assert(cityBitlinkClicksMetric1.equals(cityBitlinkClicksMetric2));
        System.assert(cityBitlinkClicksMetric2.equals(cityBitlinkClicksMetric1));
        System.assert(cityBitlinkClicksMetric3.equals(cityBitlinkClicksMetric4));
        System.assert(cityBitlinkClicksMetric4.equals(cityBitlinkClicksMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = new OASCityBitlinkClicksMetric();

        System.assertEquals(false, cityBitlinkClicksMetric1.equals('foo'));
        System.assertEquals(false, cityBitlinkClicksMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = new OASCityBitlinkClicksMetric();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric3;

        System.assertEquals(false, cityBitlinkClicksMetric1.equals(cityBitlinkClicksMetric3));
        System.assertEquals(false, cityBitlinkClicksMetric2.equals(cityBitlinkClicksMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = new OASCityBitlinkClicksMetric();

        System.assertEquals(cityBitlinkClicksMetric1.hashCode(), cityBitlinkClicksMetric1.hashCode());
        System.assertEquals(cityBitlinkClicksMetric2.hashCode(), cityBitlinkClicksMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric1 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric2 = OASCityBitlinkClicksMetric.getExample();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric3 = new OASCityBitlinkClicksMetric();
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric4 = new OASCityBitlinkClicksMetric();

        System.assert(cityBitlinkClicksMetric1.equals(cityBitlinkClicksMetric2));
        System.assert(cityBitlinkClicksMetric3.equals(cityBitlinkClicksMetric4));
        System.assertEquals(cityBitlinkClicksMetric1.hashCode(), cityBitlinkClicksMetric2.hashCode());
        System.assertEquals(cityBitlinkClicksMetric3.hashCode(), cityBitlinkClicksMetric4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCityBitlinkClicksMetric cityBitlinkClicksMetric = new OASCityBitlinkClicksMetric();
        Map<String, String> propertymappings = cityBitlinkClicksMetric.getPropertyMappings();
        System.assertEquals('bitlinkClicks', propertymappings.get('bitlink_clicks'));
    }
}