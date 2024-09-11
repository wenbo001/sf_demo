@isTest
private class OASClickMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = clickMetrics1;
        OASClickMetrics clickMetrics3 = new OASClickMetrics();
        OASClickMetrics clickMetrics4 = clickMetrics3;

        System.assert(clickMetrics1.equals(clickMetrics2));
        System.assert(clickMetrics2.equals(clickMetrics1));
        System.assert(clickMetrics1.equals(clickMetrics1));
        System.assert(clickMetrics3.equals(clickMetrics4));
        System.assert(clickMetrics4.equals(clickMetrics3));
        System.assert(clickMetrics3.equals(clickMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics3 = new OASClickMetrics();
        OASClickMetrics clickMetrics4 = new OASClickMetrics();

        System.assert(clickMetrics1.equals(clickMetrics2));
        System.assert(clickMetrics2.equals(clickMetrics1));
        System.assert(clickMetrics3.equals(clickMetrics4));
        System.assert(clickMetrics4.equals(clickMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = new OASClickMetrics();

        System.assertEquals(false, clickMetrics1.equals('foo'));
        System.assertEquals(false, clickMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = new OASClickMetrics();
        OASClickMetrics clickMetrics3;

        System.assertEquals(false, clickMetrics1.equals(clickMetrics3));
        System.assertEquals(false, clickMetrics2.equals(clickMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = new OASClickMetrics();

        System.assertEquals(clickMetrics1.hashCode(), clickMetrics1.hashCode());
        System.assertEquals(clickMetrics2.hashCode(), clickMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClickMetrics clickMetrics1 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics2 = OASClickMetrics.getExample();
        OASClickMetrics clickMetrics3 = new OASClickMetrics();
        OASClickMetrics clickMetrics4 = new OASClickMetrics();

        System.assert(clickMetrics1.equals(clickMetrics2));
        System.assert(clickMetrics3.equals(clickMetrics4));
        System.assertEquals(clickMetrics1.hashCode(), clickMetrics2.hashCode());
        System.assertEquals(clickMetrics3.hashCode(), clickMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClickMetrics clickMetrics = new OASClickMetrics();
        Map<String, String> propertymappings = clickMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClickMetrics clickMetrics = new OASClickMetrics();
        System.assertEquals(new List<OASClickMetric>(), clickMetrics.metrics);
        System.assertEquals(null, clickMetrics.unit);
        System.assertEquals(null, clickMetrics.units);
        System.assertEquals(null, clickMetrics.facet);
        System.assertEquals(null, clickMetrics.unitReference);
    }
}