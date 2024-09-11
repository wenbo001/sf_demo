@isTest
private class OASBitlinkClicksMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = bitlinkClicksMetric1;
        OASBitlinkClicksMetric bitlinkClicksMetric3 = new OASBitlinkClicksMetric();
        OASBitlinkClicksMetric bitlinkClicksMetric4 = bitlinkClicksMetric3;

        System.assert(bitlinkClicksMetric1.equals(bitlinkClicksMetric2));
        System.assert(bitlinkClicksMetric2.equals(bitlinkClicksMetric1));
        System.assert(bitlinkClicksMetric1.equals(bitlinkClicksMetric1));
        System.assert(bitlinkClicksMetric3.equals(bitlinkClicksMetric4));
        System.assert(bitlinkClicksMetric4.equals(bitlinkClicksMetric3));
        System.assert(bitlinkClicksMetric3.equals(bitlinkClicksMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric3 = new OASBitlinkClicksMetric();
        OASBitlinkClicksMetric bitlinkClicksMetric4 = new OASBitlinkClicksMetric();

        System.assert(bitlinkClicksMetric1.equals(bitlinkClicksMetric2));
        System.assert(bitlinkClicksMetric2.equals(bitlinkClicksMetric1));
        System.assert(bitlinkClicksMetric3.equals(bitlinkClicksMetric4));
        System.assert(bitlinkClicksMetric4.equals(bitlinkClicksMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = new OASBitlinkClicksMetric();

        System.assertEquals(false, bitlinkClicksMetric1.equals('foo'));
        System.assertEquals(false, bitlinkClicksMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = new OASBitlinkClicksMetric();
        OASBitlinkClicksMetric bitlinkClicksMetric3;

        System.assertEquals(false, bitlinkClicksMetric1.equals(bitlinkClicksMetric3));
        System.assertEquals(false, bitlinkClicksMetric2.equals(bitlinkClicksMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = new OASBitlinkClicksMetric();

        System.assertEquals(bitlinkClicksMetric1.hashCode(), bitlinkClicksMetric1.hashCode());
        System.assertEquals(bitlinkClicksMetric2.hashCode(), bitlinkClicksMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkClicksMetric bitlinkClicksMetric1 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric2 = OASBitlinkClicksMetric.getExample();
        OASBitlinkClicksMetric bitlinkClicksMetric3 = new OASBitlinkClicksMetric();
        OASBitlinkClicksMetric bitlinkClicksMetric4 = new OASBitlinkClicksMetric();

        System.assert(bitlinkClicksMetric1.equals(bitlinkClicksMetric2));
        System.assert(bitlinkClicksMetric3.equals(bitlinkClicksMetric4));
        System.assertEquals(bitlinkClicksMetric1.hashCode(), bitlinkClicksMetric2.hashCode());
        System.assertEquals(bitlinkClicksMetric3.hashCode(), bitlinkClicksMetric4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkClicksMetric bitlinkClicksMetric = new OASBitlinkClicksMetric();
        Map<String, String> propertymappings = bitlinkClicksMetric.getPropertyMappings();
        System.assertEquals('bitlinkClicks', propertymappings.get('bitlink_clicks'));
    }
}