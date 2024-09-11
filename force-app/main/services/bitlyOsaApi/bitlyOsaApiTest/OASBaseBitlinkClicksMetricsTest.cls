@isTest
private class OASBaseBitlinkClicksMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = baseBitlinkClicksMetrics1;
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics3 = new OASBaseBitlinkClicksMetrics();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics4 = baseBitlinkClicksMetrics3;

        System.assert(baseBitlinkClicksMetrics1.equals(baseBitlinkClicksMetrics2));
        System.assert(baseBitlinkClicksMetrics2.equals(baseBitlinkClicksMetrics1));
        System.assert(baseBitlinkClicksMetrics1.equals(baseBitlinkClicksMetrics1));
        System.assert(baseBitlinkClicksMetrics3.equals(baseBitlinkClicksMetrics4));
        System.assert(baseBitlinkClicksMetrics4.equals(baseBitlinkClicksMetrics3));
        System.assert(baseBitlinkClicksMetrics3.equals(baseBitlinkClicksMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics3 = new OASBaseBitlinkClicksMetrics();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics4 = new OASBaseBitlinkClicksMetrics();

        System.assert(baseBitlinkClicksMetrics1.equals(baseBitlinkClicksMetrics2));
        System.assert(baseBitlinkClicksMetrics2.equals(baseBitlinkClicksMetrics1));
        System.assert(baseBitlinkClicksMetrics3.equals(baseBitlinkClicksMetrics4));
        System.assert(baseBitlinkClicksMetrics4.equals(baseBitlinkClicksMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = new OASBaseBitlinkClicksMetrics();

        System.assertEquals(false, baseBitlinkClicksMetrics1.equals('foo'));
        System.assertEquals(false, baseBitlinkClicksMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = new OASBaseBitlinkClicksMetrics();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics3;

        System.assertEquals(false, baseBitlinkClicksMetrics1.equals(baseBitlinkClicksMetrics3));
        System.assertEquals(false, baseBitlinkClicksMetrics2.equals(baseBitlinkClicksMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = new OASBaseBitlinkClicksMetrics();

        System.assertEquals(baseBitlinkClicksMetrics1.hashCode(), baseBitlinkClicksMetrics1.hashCode());
        System.assertEquals(baseBitlinkClicksMetrics2.hashCode(), baseBitlinkClicksMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics1 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics2 = OASBaseBitlinkClicksMetrics.getExample();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics3 = new OASBaseBitlinkClicksMetrics();
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics4 = new OASBaseBitlinkClicksMetrics();

        System.assert(baseBitlinkClicksMetrics1.equals(baseBitlinkClicksMetrics2));
        System.assert(baseBitlinkClicksMetrics3.equals(baseBitlinkClicksMetrics4));
        System.assertEquals(baseBitlinkClicksMetrics1.hashCode(), baseBitlinkClicksMetrics2.hashCode());
        System.assertEquals(baseBitlinkClicksMetrics3.hashCode(), baseBitlinkClicksMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBaseBitlinkClicksMetrics baseBitlinkClicksMetrics = new OASBaseBitlinkClicksMetrics();
        Map<String, String> propertymappings = baseBitlinkClicksMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}