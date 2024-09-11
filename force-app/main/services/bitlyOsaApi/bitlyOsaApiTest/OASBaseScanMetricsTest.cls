@isTest
private class OASBaseScanMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = baseScanMetrics1;
        OASBaseScanMetrics baseScanMetrics3 = new OASBaseScanMetrics();
        OASBaseScanMetrics baseScanMetrics4 = baseScanMetrics3;

        System.assert(baseScanMetrics1.equals(baseScanMetrics2));
        System.assert(baseScanMetrics2.equals(baseScanMetrics1));
        System.assert(baseScanMetrics1.equals(baseScanMetrics1));
        System.assert(baseScanMetrics3.equals(baseScanMetrics4));
        System.assert(baseScanMetrics4.equals(baseScanMetrics3));
        System.assert(baseScanMetrics3.equals(baseScanMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics3 = new OASBaseScanMetrics();
        OASBaseScanMetrics baseScanMetrics4 = new OASBaseScanMetrics();

        System.assert(baseScanMetrics1.equals(baseScanMetrics2));
        System.assert(baseScanMetrics2.equals(baseScanMetrics1));
        System.assert(baseScanMetrics3.equals(baseScanMetrics4));
        System.assert(baseScanMetrics4.equals(baseScanMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = new OASBaseScanMetrics();

        System.assertEquals(false, baseScanMetrics1.equals('foo'));
        System.assertEquals(false, baseScanMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = new OASBaseScanMetrics();
        OASBaseScanMetrics baseScanMetrics3;

        System.assertEquals(false, baseScanMetrics1.equals(baseScanMetrics3));
        System.assertEquals(false, baseScanMetrics2.equals(baseScanMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = new OASBaseScanMetrics();

        System.assertEquals(baseScanMetrics1.hashCode(), baseScanMetrics1.hashCode());
        System.assertEquals(baseScanMetrics2.hashCode(), baseScanMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBaseScanMetrics baseScanMetrics1 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics2 = OASBaseScanMetrics.getExample();
        OASBaseScanMetrics baseScanMetrics3 = new OASBaseScanMetrics();
        OASBaseScanMetrics baseScanMetrics4 = new OASBaseScanMetrics();

        System.assert(baseScanMetrics1.equals(baseScanMetrics2));
        System.assert(baseScanMetrics3.equals(baseScanMetrics4));
        System.assertEquals(baseScanMetrics1.hashCode(), baseScanMetrics2.hashCode());
        System.assertEquals(baseScanMetrics3.hashCode(), baseScanMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBaseScanMetrics baseScanMetrics = new OASBaseScanMetrics();
        Map<String, String> propertymappings = baseScanMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}