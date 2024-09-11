@isTest
private class OASBitlinkOverridesDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = bitlinkOverridesData1;
        OASBitlinkOverridesData bitlinkOverridesData3 = new OASBitlinkOverridesData();
        OASBitlinkOverridesData bitlinkOverridesData4 = bitlinkOverridesData3;

        System.assert(bitlinkOverridesData1.equals(bitlinkOverridesData2));
        System.assert(bitlinkOverridesData2.equals(bitlinkOverridesData1));
        System.assert(bitlinkOverridesData1.equals(bitlinkOverridesData1));
        System.assert(bitlinkOverridesData3.equals(bitlinkOverridesData4));
        System.assert(bitlinkOverridesData4.equals(bitlinkOverridesData3));
        System.assert(bitlinkOverridesData3.equals(bitlinkOverridesData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData3 = new OASBitlinkOverridesData();
        OASBitlinkOverridesData bitlinkOverridesData4 = new OASBitlinkOverridesData();

        System.assert(bitlinkOverridesData1.equals(bitlinkOverridesData2));
        System.assert(bitlinkOverridesData2.equals(bitlinkOverridesData1));
        System.assert(bitlinkOverridesData3.equals(bitlinkOverridesData4));
        System.assert(bitlinkOverridesData4.equals(bitlinkOverridesData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = new OASBitlinkOverridesData();

        System.assertEquals(false, bitlinkOverridesData1.equals('foo'));
        System.assertEquals(false, bitlinkOverridesData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = new OASBitlinkOverridesData();
        OASBitlinkOverridesData bitlinkOverridesData3;

        System.assertEquals(false, bitlinkOverridesData1.equals(bitlinkOverridesData3));
        System.assertEquals(false, bitlinkOverridesData2.equals(bitlinkOverridesData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = new OASBitlinkOverridesData();

        System.assertEquals(bitlinkOverridesData1.hashCode(), bitlinkOverridesData1.hashCode());
        System.assertEquals(bitlinkOverridesData2.hashCode(), bitlinkOverridesData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkOverridesData bitlinkOverridesData1 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData2 = OASBitlinkOverridesData.getExample();
        OASBitlinkOverridesData bitlinkOverridesData3 = new OASBitlinkOverridesData();
        OASBitlinkOverridesData bitlinkOverridesData4 = new OASBitlinkOverridesData();

        System.assert(bitlinkOverridesData1.equals(bitlinkOverridesData2));
        System.assert(bitlinkOverridesData3.equals(bitlinkOverridesData4));
        System.assertEquals(bitlinkOverridesData1.hashCode(), bitlinkOverridesData2.hashCode());
        System.assertEquals(bitlinkOverridesData3.hashCode(), bitlinkOverridesData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkOverridesData bitlinkOverridesData = new OASBitlinkOverridesData();
        Map<String, String> propertymappings = bitlinkOverridesData.getPropertyMappings();
        System.assertEquals('totalCount', propertymappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkOverridesData bitlinkOverridesData = new OASBitlinkOverridesData();
        System.assertEquals(new List<OASBitlinkOverrides>(), bitlinkOverridesData.overrides);
        System.assertEquals(null, bitlinkOverridesData.totalCount);
    }
}