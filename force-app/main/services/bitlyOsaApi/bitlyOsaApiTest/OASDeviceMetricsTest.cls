@isTest
private class OASDeviceMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = deviceMetrics1;
        OASDeviceMetrics deviceMetrics3 = new OASDeviceMetrics();
        OASDeviceMetrics deviceMetrics4 = deviceMetrics3;

        System.assert(deviceMetrics1.equals(deviceMetrics2));
        System.assert(deviceMetrics2.equals(deviceMetrics1));
        System.assert(deviceMetrics1.equals(deviceMetrics1));
        System.assert(deviceMetrics3.equals(deviceMetrics4));
        System.assert(deviceMetrics4.equals(deviceMetrics3));
        System.assert(deviceMetrics3.equals(deviceMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics3 = new OASDeviceMetrics();
        OASDeviceMetrics deviceMetrics4 = new OASDeviceMetrics();

        System.assert(deviceMetrics1.equals(deviceMetrics2));
        System.assert(deviceMetrics2.equals(deviceMetrics1));
        System.assert(deviceMetrics3.equals(deviceMetrics4));
        System.assert(deviceMetrics4.equals(deviceMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = new OASDeviceMetrics();

        System.assertEquals(false, deviceMetrics1.equals('foo'));
        System.assertEquals(false, deviceMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = new OASDeviceMetrics();
        OASDeviceMetrics deviceMetrics3;

        System.assertEquals(false, deviceMetrics1.equals(deviceMetrics3));
        System.assertEquals(false, deviceMetrics2.equals(deviceMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = new OASDeviceMetrics();

        System.assertEquals(deviceMetrics1.hashCode(), deviceMetrics1.hashCode());
        System.assertEquals(deviceMetrics2.hashCode(), deviceMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeviceMetrics deviceMetrics1 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics2 = OASDeviceMetrics.getExample();
        OASDeviceMetrics deviceMetrics3 = new OASDeviceMetrics();
        OASDeviceMetrics deviceMetrics4 = new OASDeviceMetrics();

        System.assert(deviceMetrics1.equals(deviceMetrics2));
        System.assert(deviceMetrics3.equals(deviceMetrics4));
        System.assertEquals(deviceMetrics1.hashCode(), deviceMetrics2.hashCode());
        System.assertEquals(deviceMetrics3.hashCode(), deviceMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeviceMetrics deviceMetrics = new OASDeviceMetrics();
        Map<String, String> propertymappings = deviceMetrics.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeviceMetrics deviceMetrics = new OASDeviceMetrics();
        System.assertEquals(new List<OASDeviceMetric>(), deviceMetrics.metrics);
        System.assertEquals(null, deviceMetrics.unit);
        System.assertEquals(null, deviceMetrics.units);
        System.assertEquals(null, deviceMetrics.facet);
        System.assertEquals(null, deviceMetrics.unitReference);
    }
}