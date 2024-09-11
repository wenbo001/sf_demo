@isTest
private class OASOtherBitlinkClicksMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = otherBitlinkClicksMetrics1;
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics3 = new OASOtherBitlinkClicksMetrics();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics4 = otherBitlinkClicksMetrics3;

        System.assert(otherBitlinkClicksMetrics1.equals(otherBitlinkClicksMetrics2));
        System.assert(otherBitlinkClicksMetrics2.equals(otherBitlinkClicksMetrics1));
        System.assert(otherBitlinkClicksMetrics1.equals(otherBitlinkClicksMetrics1));
        System.assert(otherBitlinkClicksMetrics3.equals(otherBitlinkClicksMetrics4));
        System.assert(otherBitlinkClicksMetrics4.equals(otherBitlinkClicksMetrics3));
        System.assert(otherBitlinkClicksMetrics3.equals(otherBitlinkClicksMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics3 = new OASOtherBitlinkClicksMetrics();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics4 = new OASOtherBitlinkClicksMetrics();

        System.assert(otherBitlinkClicksMetrics1.equals(otherBitlinkClicksMetrics2));
        System.assert(otherBitlinkClicksMetrics2.equals(otherBitlinkClicksMetrics1));
        System.assert(otherBitlinkClicksMetrics3.equals(otherBitlinkClicksMetrics4));
        System.assert(otherBitlinkClicksMetrics4.equals(otherBitlinkClicksMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = new OASOtherBitlinkClicksMetrics();

        System.assertEquals(false, otherBitlinkClicksMetrics1.equals('foo'));
        System.assertEquals(false, otherBitlinkClicksMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = new OASOtherBitlinkClicksMetrics();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics3;

        System.assertEquals(false, otherBitlinkClicksMetrics1.equals(otherBitlinkClicksMetrics3));
        System.assertEquals(false, otherBitlinkClicksMetrics2.equals(otherBitlinkClicksMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = new OASOtherBitlinkClicksMetrics();

        System.assertEquals(otherBitlinkClicksMetrics1.hashCode(), otherBitlinkClicksMetrics1.hashCode());
        System.assertEquals(otherBitlinkClicksMetrics2.hashCode(), otherBitlinkClicksMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics1 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics2 = OASOtherBitlinkClicksMetrics.getExample();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics3 = new OASOtherBitlinkClicksMetrics();
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics4 = new OASOtherBitlinkClicksMetrics();

        System.assert(otherBitlinkClicksMetrics1.equals(otherBitlinkClicksMetrics2));
        System.assert(otherBitlinkClicksMetrics3.equals(otherBitlinkClicksMetrics4));
        System.assertEquals(otherBitlinkClicksMetrics1.hashCode(), otherBitlinkClicksMetrics2.hashCode());
        System.assertEquals(otherBitlinkClicksMetrics3.hashCode(), otherBitlinkClicksMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOtherBitlinkClicksMetrics otherBitlinkClicksMetrics = new OASOtherBitlinkClicksMetrics();
        Map<String, String> propertymappings = otherBitlinkClicksMetrics.getPropertyMappings();
        System.assertEquals('otherCityBitlinkClicks', propertymappings.get('other_city_bitlink_clicks'));
        System.assertEquals('noCityBitlinkClicks', propertymappings.get('no_city_bitlink_clicks'));
    }
}