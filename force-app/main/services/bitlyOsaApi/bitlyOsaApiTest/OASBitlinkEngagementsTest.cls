@isTest
private class OASBitlinkEngagementsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = bitlinkEngagements1;
        OASBitlinkEngagements bitlinkEngagements3 = new OASBitlinkEngagements();
        OASBitlinkEngagements bitlinkEngagements4 = bitlinkEngagements3;

        System.assert(bitlinkEngagements1.equals(bitlinkEngagements2));
        System.assert(bitlinkEngagements2.equals(bitlinkEngagements1));
        System.assert(bitlinkEngagements1.equals(bitlinkEngagements1));
        System.assert(bitlinkEngagements3.equals(bitlinkEngagements4));
        System.assert(bitlinkEngagements4.equals(bitlinkEngagements3));
        System.assert(bitlinkEngagements3.equals(bitlinkEngagements3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements3 = new OASBitlinkEngagements();
        OASBitlinkEngagements bitlinkEngagements4 = new OASBitlinkEngagements();

        System.assert(bitlinkEngagements1.equals(bitlinkEngagements2));
        System.assert(bitlinkEngagements2.equals(bitlinkEngagements1));
        System.assert(bitlinkEngagements3.equals(bitlinkEngagements4));
        System.assert(bitlinkEngagements4.equals(bitlinkEngagements3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = new OASBitlinkEngagements();

        System.assertEquals(false, bitlinkEngagements1.equals('foo'));
        System.assertEquals(false, bitlinkEngagements2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = new OASBitlinkEngagements();
        OASBitlinkEngagements bitlinkEngagements3;

        System.assertEquals(false, bitlinkEngagements1.equals(bitlinkEngagements3));
        System.assertEquals(false, bitlinkEngagements2.equals(bitlinkEngagements3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = new OASBitlinkEngagements();

        System.assertEquals(bitlinkEngagements1.hashCode(), bitlinkEngagements1.hashCode());
        System.assertEquals(bitlinkEngagements2.hashCode(), bitlinkEngagements2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkEngagements bitlinkEngagements1 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements2 = OASBitlinkEngagements.getExample();
        OASBitlinkEngagements bitlinkEngagements3 = new OASBitlinkEngagements();
        OASBitlinkEngagements bitlinkEngagements4 = new OASBitlinkEngagements();

        System.assert(bitlinkEngagements1.equals(bitlinkEngagements2));
        System.assert(bitlinkEngagements3.equals(bitlinkEngagements4));
        System.assertEquals(bitlinkEngagements1.hashCode(), bitlinkEngagements2.hashCode());
        System.assertEquals(bitlinkEngagements3.hashCode(), bitlinkEngagements4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkEngagements bitlinkEngagements = new OASBitlinkEngagements();
        Map<String, String> propertymappings = bitlinkEngagements.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('clicksOverTime', propertymappings.get('clicks_over_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkEngagements bitlinkEngagements = new OASBitlinkEngagements();
        System.assertEquals(new List<OASClicksOverTime>(), bitlinkEngagements.clicksOverTime);
        System.assertEquals(null, bitlinkEngagements.unitReference);
        System.assertEquals(null, bitlinkEngagements.unit);
        System.assertEquals(null, bitlinkEngagements.units);
    }
}