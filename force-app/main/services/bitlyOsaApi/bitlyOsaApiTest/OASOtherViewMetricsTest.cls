@isTest
private class OASOtherViewMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = otherViewMetrics1;
        OASOtherViewMetrics otherViewMetrics3 = new OASOtherViewMetrics();
        OASOtherViewMetrics otherViewMetrics4 = otherViewMetrics3;

        System.assert(otherViewMetrics1.equals(otherViewMetrics2));
        System.assert(otherViewMetrics2.equals(otherViewMetrics1));
        System.assert(otherViewMetrics1.equals(otherViewMetrics1));
        System.assert(otherViewMetrics3.equals(otherViewMetrics4));
        System.assert(otherViewMetrics4.equals(otherViewMetrics3));
        System.assert(otherViewMetrics3.equals(otherViewMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics3 = new OASOtherViewMetrics();
        OASOtherViewMetrics otherViewMetrics4 = new OASOtherViewMetrics();

        System.assert(otherViewMetrics1.equals(otherViewMetrics2));
        System.assert(otherViewMetrics2.equals(otherViewMetrics1));
        System.assert(otherViewMetrics3.equals(otherViewMetrics4));
        System.assert(otherViewMetrics4.equals(otherViewMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = new OASOtherViewMetrics();

        System.assertEquals(false, otherViewMetrics1.equals('foo'));
        System.assertEquals(false, otherViewMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = new OASOtherViewMetrics();
        OASOtherViewMetrics otherViewMetrics3;

        System.assertEquals(false, otherViewMetrics1.equals(otherViewMetrics3));
        System.assertEquals(false, otherViewMetrics2.equals(otherViewMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = new OASOtherViewMetrics();

        System.assertEquals(otherViewMetrics1.hashCode(), otherViewMetrics1.hashCode());
        System.assertEquals(otherViewMetrics2.hashCode(), otherViewMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOtherViewMetrics otherViewMetrics1 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics2 = OASOtherViewMetrics.getExample();
        OASOtherViewMetrics otherViewMetrics3 = new OASOtherViewMetrics();
        OASOtherViewMetrics otherViewMetrics4 = new OASOtherViewMetrics();

        System.assert(otherViewMetrics1.equals(otherViewMetrics2));
        System.assert(otherViewMetrics3.equals(otherViewMetrics4));
        System.assertEquals(otherViewMetrics1.hashCode(), otherViewMetrics2.hashCode());
        System.assertEquals(otherViewMetrics3.hashCode(), otherViewMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOtherViewMetrics otherViewMetrics = new OASOtherViewMetrics();
        Map<String, String> propertymappings = otherViewMetrics.getPropertyMappings();
        System.assertEquals('otherCityViews', propertymappings.get('other_city_views'));
        System.assertEquals('noCityViews', propertymappings.get('no_city_views'));
    }
}