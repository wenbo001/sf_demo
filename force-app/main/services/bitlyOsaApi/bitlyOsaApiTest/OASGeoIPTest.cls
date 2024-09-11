@isTest
private class OASGeoIPTest {
    @isTest
    private static void equalsSameInstance() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = geoIP1;
        OASGeoIP geoIP3 = new OASGeoIP();
        OASGeoIP geoIP4 = geoIP3;

        System.assert(geoIP1.equals(geoIP2));
        System.assert(geoIP2.equals(geoIP1));
        System.assert(geoIP1.equals(geoIP1));
        System.assert(geoIP3.equals(geoIP4));
        System.assert(geoIP4.equals(geoIP3));
        System.assert(geoIP3.equals(geoIP3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = OASGeoIP.getExample();
        OASGeoIP geoIP3 = new OASGeoIP();
        OASGeoIP geoIP4 = new OASGeoIP();

        System.assert(geoIP1.equals(geoIP2));
        System.assert(geoIP2.equals(geoIP1));
        System.assert(geoIP3.equals(geoIP4));
        System.assert(geoIP4.equals(geoIP3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = new OASGeoIP();

        System.assertEquals(false, geoIP1.equals('foo'));
        System.assertEquals(false, geoIP2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = new OASGeoIP();
        OASGeoIP geoIP3;

        System.assertEquals(false, geoIP1.equals(geoIP3));
        System.assertEquals(false, geoIP2.equals(geoIP3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = new OASGeoIP();

        System.assertEquals(geoIP1.hashCode(), geoIP1.hashCode());
        System.assertEquals(geoIP2.hashCode(), geoIP2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGeoIP geoIP1 = OASGeoIP.getExample();
        OASGeoIP geoIP2 = OASGeoIP.getExample();
        OASGeoIP geoIP3 = new OASGeoIP();
        OASGeoIP geoIP4 = new OASGeoIP();

        System.assert(geoIP1.equals(geoIP2));
        System.assert(geoIP3.equals(geoIP4));
        System.assertEquals(geoIP1.hashCode(), geoIP2.hashCode());
        System.assertEquals(geoIP3.hashCode(), geoIP4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGeoIP geoIP = new OASGeoIP();
        Map<String, String> propertymappings = geoIP.getPropertyMappings();
        System.assertEquals('countryCode', propertymappings.get('country_code'));
        System.assertEquals('isInEuropeanUnion', propertymappings.get('is_in_european_union'));
    }
}