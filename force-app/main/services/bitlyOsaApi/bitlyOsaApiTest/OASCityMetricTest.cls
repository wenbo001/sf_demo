@isTest
private class OASCityMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = cityMetric1;
        OASCityMetric cityMetric3 = new OASCityMetric();
        OASCityMetric cityMetric4 = cityMetric3;

        System.assert(cityMetric1.equals(cityMetric2));
        System.assert(cityMetric2.equals(cityMetric1));
        System.assert(cityMetric1.equals(cityMetric1));
        System.assert(cityMetric3.equals(cityMetric4));
        System.assert(cityMetric4.equals(cityMetric3));
        System.assert(cityMetric3.equals(cityMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = OASCityMetric.getExample();
        OASCityMetric cityMetric3 = new OASCityMetric();
        OASCityMetric cityMetric4 = new OASCityMetric();

        System.assert(cityMetric1.equals(cityMetric2));
        System.assert(cityMetric2.equals(cityMetric1));
        System.assert(cityMetric3.equals(cityMetric4));
        System.assert(cityMetric4.equals(cityMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = new OASCityMetric();

        System.assertEquals(false, cityMetric1.equals('foo'));
        System.assertEquals(false, cityMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = new OASCityMetric();
        OASCityMetric cityMetric3;

        System.assertEquals(false, cityMetric1.equals(cityMetric3));
        System.assertEquals(false, cityMetric2.equals(cityMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = new OASCityMetric();

        System.assertEquals(cityMetric1.hashCode(), cityMetric1.hashCode());
        System.assertEquals(cityMetric2.hashCode(), cityMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCityMetric cityMetric1 = OASCityMetric.getExample();
        OASCityMetric cityMetric2 = OASCityMetric.getExample();
        OASCityMetric cityMetric3 = new OASCityMetric();
        OASCityMetric cityMetric4 = new OASCityMetric();

        System.assert(cityMetric1.equals(cityMetric2));
        System.assert(cityMetric3.equals(cityMetric4));
        System.assertEquals(cityMetric1.hashCode(), cityMetric2.hashCode());
        System.assertEquals(cityMetric3.hashCode(), cityMetric4.hashCode());
    }
}