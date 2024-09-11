@isTest
private class OASDeviceMetricsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = deviceMetricsAllOf1;
        OASDeviceMetricsAllOf deviceMetricsAllOf3 = new OASDeviceMetricsAllOf();
        OASDeviceMetricsAllOf deviceMetricsAllOf4 = deviceMetricsAllOf3;

        System.assert(deviceMetricsAllOf1.equals(deviceMetricsAllOf2));
        System.assert(deviceMetricsAllOf2.equals(deviceMetricsAllOf1));
        System.assert(deviceMetricsAllOf1.equals(deviceMetricsAllOf1));
        System.assert(deviceMetricsAllOf3.equals(deviceMetricsAllOf4));
        System.assert(deviceMetricsAllOf4.equals(deviceMetricsAllOf3));
        System.assert(deviceMetricsAllOf3.equals(deviceMetricsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf3 = new OASDeviceMetricsAllOf();
        OASDeviceMetricsAllOf deviceMetricsAllOf4 = new OASDeviceMetricsAllOf();

        System.assert(deviceMetricsAllOf1.equals(deviceMetricsAllOf2));
        System.assert(deviceMetricsAllOf2.equals(deviceMetricsAllOf1));
        System.assert(deviceMetricsAllOf3.equals(deviceMetricsAllOf4));
        System.assert(deviceMetricsAllOf4.equals(deviceMetricsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = new OASDeviceMetricsAllOf();

        System.assertEquals(false, deviceMetricsAllOf1.equals('foo'));
        System.assertEquals(false, deviceMetricsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = new OASDeviceMetricsAllOf();
        OASDeviceMetricsAllOf deviceMetricsAllOf3;

        System.assertEquals(false, deviceMetricsAllOf1.equals(deviceMetricsAllOf3));
        System.assertEquals(false, deviceMetricsAllOf2.equals(deviceMetricsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = new OASDeviceMetricsAllOf();

        System.assertEquals(deviceMetricsAllOf1.hashCode(), deviceMetricsAllOf1.hashCode());
        System.assertEquals(deviceMetricsAllOf2.hashCode(), deviceMetricsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeviceMetricsAllOf deviceMetricsAllOf1 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf2 = OASDeviceMetricsAllOf.getExample();
        OASDeviceMetricsAllOf deviceMetricsAllOf3 = new OASDeviceMetricsAllOf();
        OASDeviceMetricsAllOf deviceMetricsAllOf4 = new OASDeviceMetricsAllOf();

        System.assert(deviceMetricsAllOf1.equals(deviceMetricsAllOf2));
        System.assert(deviceMetricsAllOf3.equals(deviceMetricsAllOf4));
        System.assertEquals(deviceMetricsAllOf1.hashCode(), deviceMetricsAllOf2.hashCode());
        System.assertEquals(deviceMetricsAllOf3.hashCode(), deviceMetricsAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeviceMetricsAllOf deviceMetricsAllOf = new OASDeviceMetricsAllOf();
        System.assertEquals(new List<OASDeviceMetric>(), deviceMetricsAllOf.metrics);
    }
}