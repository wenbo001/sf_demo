@isTest
private class OASDeeplinkMetricsRollupTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = deeplinkMetricsRollup1;
        OASDeeplinkMetricsRollup deeplinkMetricsRollup3 = new OASDeeplinkMetricsRollup();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup4 = deeplinkMetricsRollup3;

        System.assert(deeplinkMetricsRollup1.equals(deeplinkMetricsRollup2));
        System.assert(deeplinkMetricsRollup2.equals(deeplinkMetricsRollup1));
        System.assert(deeplinkMetricsRollup1.equals(deeplinkMetricsRollup1));
        System.assert(deeplinkMetricsRollup3.equals(deeplinkMetricsRollup4));
        System.assert(deeplinkMetricsRollup4.equals(deeplinkMetricsRollup3));
        System.assert(deeplinkMetricsRollup3.equals(deeplinkMetricsRollup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup3 = new OASDeeplinkMetricsRollup();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup4 = new OASDeeplinkMetricsRollup();

        System.assert(deeplinkMetricsRollup1.equals(deeplinkMetricsRollup2));
        System.assert(deeplinkMetricsRollup2.equals(deeplinkMetricsRollup1));
        System.assert(deeplinkMetricsRollup3.equals(deeplinkMetricsRollup4));
        System.assert(deeplinkMetricsRollup4.equals(deeplinkMetricsRollup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = new OASDeeplinkMetricsRollup();

        System.assertEquals(false, deeplinkMetricsRollup1.equals('foo'));
        System.assertEquals(false, deeplinkMetricsRollup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = new OASDeeplinkMetricsRollup();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup3;

        System.assertEquals(false, deeplinkMetricsRollup1.equals(deeplinkMetricsRollup3));
        System.assertEquals(false, deeplinkMetricsRollup2.equals(deeplinkMetricsRollup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = new OASDeeplinkMetricsRollup();

        System.assertEquals(deeplinkMetricsRollup1.hashCode(), deeplinkMetricsRollup1.hashCode());
        System.assertEquals(deeplinkMetricsRollup2.hashCode(), deeplinkMetricsRollup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup1 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup2 = OASDeeplinkMetricsRollup.getExample();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup3 = new OASDeeplinkMetricsRollup();
        OASDeeplinkMetricsRollup deeplinkMetricsRollup4 = new OASDeeplinkMetricsRollup();

        System.assert(deeplinkMetricsRollup1.equals(deeplinkMetricsRollup2));
        System.assert(deeplinkMetricsRollup3.equals(deeplinkMetricsRollup4));
        System.assertEquals(deeplinkMetricsRollup1.hashCode(), deeplinkMetricsRollup2.hashCode());
        System.assertEquals(deeplinkMetricsRollup3.hashCode(), deeplinkMetricsRollup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup = new OASDeeplinkMetricsRollup();
        Map<String, String> propertymappings = deeplinkMetricsRollup.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeeplinkMetricsRollup deeplinkMetricsRollup = new OASDeeplinkMetricsRollup();
        System.assertEquals(-1, deeplinkMetricsRollup.units);
        System.assertEquals(null, deeplinkMetricsRollup.ios);
        System.assertEquals(null, deeplinkMetricsRollup.android);
        System.assertEquals(null, deeplinkMetricsRollup.other);
        System.assertEquals(null, deeplinkMetricsRollup.unit);
        System.assertEquals(null, deeplinkMetricsRollup.unitReference);
    }
}