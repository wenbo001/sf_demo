@isTest
private class OASOtherScanMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = otherScanMetrics1;
        OASOtherScanMetrics otherScanMetrics3 = new OASOtherScanMetrics();
        OASOtherScanMetrics otherScanMetrics4 = otherScanMetrics3;

        System.assert(otherScanMetrics1.equals(otherScanMetrics2));
        System.assert(otherScanMetrics2.equals(otherScanMetrics1));
        System.assert(otherScanMetrics1.equals(otherScanMetrics1));
        System.assert(otherScanMetrics3.equals(otherScanMetrics4));
        System.assert(otherScanMetrics4.equals(otherScanMetrics3));
        System.assert(otherScanMetrics3.equals(otherScanMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics3 = new OASOtherScanMetrics();
        OASOtherScanMetrics otherScanMetrics4 = new OASOtherScanMetrics();

        System.assert(otherScanMetrics1.equals(otherScanMetrics2));
        System.assert(otherScanMetrics2.equals(otherScanMetrics1));
        System.assert(otherScanMetrics3.equals(otherScanMetrics4));
        System.assert(otherScanMetrics4.equals(otherScanMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = new OASOtherScanMetrics();

        System.assertEquals(false, otherScanMetrics1.equals('foo'));
        System.assertEquals(false, otherScanMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = new OASOtherScanMetrics();
        OASOtherScanMetrics otherScanMetrics3;

        System.assertEquals(false, otherScanMetrics1.equals(otherScanMetrics3));
        System.assertEquals(false, otherScanMetrics2.equals(otherScanMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = new OASOtherScanMetrics();

        System.assertEquals(otherScanMetrics1.hashCode(), otherScanMetrics1.hashCode());
        System.assertEquals(otherScanMetrics2.hashCode(), otherScanMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOtherScanMetrics otherScanMetrics1 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics2 = OASOtherScanMetrics.getExample();
        OASOtherScanMetrics otherScanMetrics3 = new OASOtherScanMetrics();
        OASOtherScanMetrics otherScanMetrics4 = new OASOtherScanMetrics();

        System.assert(otherScanMetrics1.equals(otherScanMetrics2));
        System.assert(otherScanMetrics3.equals(otherScanMetrics4));
        System.assertEquals(otherScanMetrics1.hashCode(), otherScanMetrics2.hashCode());
        System.assertEquals(otherScanMetrics3.hashCode(), otherScanMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOtherScanMetrics otherScanMetrics = new OASOtherScanMetrics();
        Map<String, String> propertymappings = otherScanMetrics.getPropertyMappings();
        System.assertEquals('otherCityScans', propertymappings.get('other_city_scans'));
        System.assertEquals('noCityScans', propertymappings.get('no_city_scans'));
    }
}