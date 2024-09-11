@isTest
private class OASDeviceMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = deviceMetric1;
        OASDeviceMetric deviceMetric3 = new OASDeviceMetric();
        OASDeviceMetric deviceMetric4 = deviceMetric3;

        System.assert(deviceMetric1.equals(deviceMetric2));
        System.assert(deviceMetric2.equals(deviceMetric1));
        System.assert(deviceMetric1.equals(deviceMetric1));
        System.assert(deviceMetric3.equals(deviceMetric4));
        System.assert(deviceMetric4.equals(deviceMetric3));
        System.assert(deviceMetric3.equals(deviceMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric3 = new OASDeviceMetric();
        OASDeviceMetric deviceMetric4 = new OASDeviceMetric();

        System.assert(deviceMetric1.equals(deviceMetric2));
        System.assert(deviceMetric2.equals(deviceMetric1));
        System.assert(deviceMetric3.equals(deviceMetric4));
        System.assert(deviceMetric4.equals(deviceMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = new OASDeviceMetric();

        System.assertEquals(false, deviceMetric1.equals('foo'));
        System.assertEquals(false, deviceMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = new OASDeviceMetric();
        OASDeviceMetric deviceMetric3;

        System.assertEquals(false, deviceMetric1.equals(deviceMetric3));
        System.assertEquals(false, deviceMetric2.equals(deviceMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = new OASDeviceMetric();

        System.assertEquals(deviceMetric1.hashCode(), deviceMetric1.hashCode());
        System.assertEquals(deviceMetric2.hashCode(), deviceMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeviceMetric deviceMetric1 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric2 = OASDeviceMetric.getExample();
        OASDeviceMetric deviceMetric3 = new OASDeviceMetric();
        OASDeviceMetric deviceMetric4 = new OASDeviceMetric();

        System.assert(deviceMetric1.equals(deviceMetric2));
        System.assert(deviceMetric3.equals(deviceMetric4));
        System.assertEquals(deviceMetric1.hashCode(), deviceMetric2.hashCode());
        System.assertEquals(deviceMetric3.hashCode(), deviceMetric4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeviceMetric deviceMetric = new OASDeviceMetric();
        Map<String, String> propertymappings = deviceMetric.getPropertyMappings();
        System.assertEquals('deviceType', propertymappings.get('device_type'));
    }
}