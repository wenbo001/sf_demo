@isTest
private class OASBaseMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = baseMetrics1;
        OASBaseMetrics baseMetrics3 = new OASBaseMetrics();
        OASBaseMetrics baseMetrics4 = baseMetrics3;

        System.assert(baseMetrics1.equals(baseMetrics2));
        System.assert(baseMetrics2.equals(baseMetrics1));
        System.assert(baseMetrics1.equals(baseMetrics1));
        System.assert(baseMetrics3.equals(baseMetrics4));
        System.assert(baseMetrics4.equals(baseMetrics3));
        System.assert(baseMetrics3.equals(baseMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics3 = new OASBaseMetrics();
        OASBaseMetrics baseMetrics4 = new OASBaseMetrics();

        System.assert(baseMetrics1.equals(baseMetrics2));
        System.assert(baseMetrics2.equals(baseMetrics1));
        System.assert(baseMetrics3.equals(baseMetrics4));
        System.assert(baseMetrics4.equals(baseMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = new OASBaseMetrics();

        System.assertEquals(false, baseMetrics1.equals('foo'));
        System.assertEquals(false, baseMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = new OASBaseMetrics();
        OASBaseMetrics baseMetrics3;

        System.assertEquals(false, baseMetrics1.equals(baseMetrics3));
        System.assertEquals(false, baseMetrics2.equals(baseMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = new OASBaseMetrics();

        System.assertEquals(baseMetrics1.hashCode(), baseMetrics1.hashCode());
        System.assertEquals(baseMetrics2.hashCode(), baseMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBaseMetrics baseMetrics1 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics2 = OASBaseMetrics.getExample();
        OASBaseMetrics baseMetrics3 = new OASBaseMetrics();
        OASBaseMetrics baseMetrics4 = new OASBaseMetrics();

        System.assert(baseMetrics1.equals(baseMetrics2));
        System.assert(baseMetrics3.equals(baseMetrics4));
        System.assertEquals(baseMetrics1.hashCode(), baseMetrics2.hashCode());
        System.assertEquals(baseMetrics3.hashCode(), baseMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBaseMetrics baseMetrics = new OASBaseMetrics();
        Map<String, String> propertymappings = baseMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}