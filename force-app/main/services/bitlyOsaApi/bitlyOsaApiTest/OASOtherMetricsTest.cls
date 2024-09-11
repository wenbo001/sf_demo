@isTest
private class OASOtherMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = otherMetrics1;
        OASOtherMetrics otherMetrics3 = new OASOtherMetrics();
        OASOtherMetrics otherMetrics4 = otherMetrics3;

        System.assert(otherMetrics1.equals(otherMetrics2));
        System.assert(otherMetrics2.equals(otherMetrics1));
        System.assert(otherMetrics1.equals(otherMetrics1));
        System.assert(otherMetrics3.equals(otherMetrics4));
        System.assert(otherMetrics4.equals(otherMetrics3));
        System.assert(otherMetrics3.equals(otherMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics3 = new OASOtherMetrics();
        OASOtherMetrics otherMetrics4 = new OASOtherMetrics();

        System.assert(otherMetrics1.equals(otherMetrics2));
        System.assert(otherMetrics2.equals(otherMetrics1));
        System.assert(otherMetrics3.equals(otherMetrics4));
        System.assert(otherMetrics4.equals(otherMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = new OASOtherMetrics();

        System.assertEquals(false, otherMetrics1.equals('foo'));
        System.assertEquals(false, otherMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = new OASOtherMetrics();
        OASOtherMetrics otherMetrics3;

        System.assertEquals(false, otherMetrics1.equals(otherMetrics3));
        System.assertEquals(false, otherMetrics2.equals(otherMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = new OASOtherMetrics();

        System.assertEquals(otherMetrics1.hashCode(), otherMetrics1.hashCode());
        System.assertEquals(otherMetrics2.hashCode(), otherMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOtherMetrics otherMetrics1 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics2 = OASOtherMetrics.getExample();
        OASOtherMetrics otherMetrics3 = new OASOtherMetrics();
        OASOtherMetrics otherMetrics4 = new OASOtherMetrics();

        System.assert(otherMetrics1.equals(otherMetrics2));
        System.assert(otherMetrics3.equals(otherMetrics4));
        System.assertEquals(otherMetrics1.hashCode(), otherMetrics2.hashCode());
        System.assertEquals(otherMetrics3.hashCode(), otherMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOtherMetrics otherMetrics = new OASOtherMetrics();
        Map<String, String> propertymappings = otherMetrics.getPropertyMappings();
        System.assertEquals('otherCityClicks', propertymappings.get('other_city_clicks'));
        System.assertEquals('noCityClicks', propertymappings.get('no_city_clicks'));
    }
}