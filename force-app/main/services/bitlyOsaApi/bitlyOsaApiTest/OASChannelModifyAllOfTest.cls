@isTest
private class OASChannelModifyAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = channelModifyAllOf1;
        OASChannelModifyAllOf channelModifyAllOf3 = new OASChannelModifyAllOf();
        OASChannelModifyAllOf channelModifyAllOf4 = channelModifyAllOf3;

        System.assert(channelModifyAllOf1.equals(channelModifyAllOf2));
        System.assert(channelModifyAllOf2.equals(channelModifyAllOf1));
        System.assert(channelModifyAllOf1.equals(channelModifyAllOf1));
        System.assert(channelModifyAllOf3.equals(channelModifyAllOf4));
        System.assert(channelModifyAllOf4.equals(channelModifyAllOf3));
        System.assert(channelModifyAllOf3.equals(channelModifyAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf3 = new OASChannelModifyAllOf();
        OASChannelModifyAllOf channelModifyAllOf4 = new OASChannelModifyAllOf();

        System.assert(channelModifyAllOf1.equals(channelModifyAllOf2));
        System.assert(channelModifyAllOf2.equals(channelModifyAllOf1));
        System.assert(channelModifyAllOf3.equals(channelModifyAllOf4));
        System.assert(channelModifyAllOf4.equals(channelModifyAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = new OASChannelModifyAllOf();

        System.assertEquals(false, channelModifyAllOf1.equals('foo'));
        System.assertEquals(false, channelModifyAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = new OASChannelModifyAllOf();
        OASChannelModifyAllOf channelModifyAllOf3;

        System.assertEquals(false, channelModifyAllOf1.equals(channelModifyAllOf3));
        System.assertEquals(false, channelModifyAllOf2.equals(channelModifyAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = new OASChannelModifyAllOf();

        System.assertEquals(channelModifyAllOf1.hashCode(), channelModifyAllOf1.hashCode());
        System.assertEquals(channelModifyAllOf2.hashCode(), channelModifyAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannelModifyAllOf channelModifyAllOf1 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf2 = OASChannelModifyAllOf.getExample();
        OASChannelModifyAllOf channelModifyAllOf3 = new OASChannelModifyAllOf();
        OASChannelModifyAllOf channelModifyAllOf4 = new OASChannelModifyAllOf();

        System.assert(channelModifyAllOf1.equals(channelModifyAllOf2));
        System.assert(channelModifyAllOf3.equals(channelModifyAllOf4));
        System.assertEquals(channelModifyAllOf1.hashCode(), channelModifyAllOf2.hashCode());
        System.assertEquals(channelModifyAllOf3.hashCode(), channelModifyAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannelModifyAllOf channelModifyAllOf = new OASChannelModifyAllOf();
        System.assertEquals(new List<OASBaseChannelBitlink>(), channelModifyAllOf.bitlinks);
    }
}