@isTest
private class OASChannelBitlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = channelBitlinks1;
        OASChannelBitlinks channelBitlinks3 = new OASChannelBitlinks();
        OASChannelBitlinks channelBitlinks4 = channelBitlinks3;

        System.assert(channelBitlinks1.equals(channelBitlinks2));
        System.assert(channelBitlinks2.equals(channelBitlinks1));
        System.assert(channelBitlinks1.equals(channelBitlinks1));
        System.assert(channelBitlinks3.equals(channelBitlinks4));
        System.assert(channelBitlinks4.equals(channelBitlinks3));
        System.assert(channelBitlinks3.equals(channelBitlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks3 = new OASChannelBitlinks();
        OASChannelBitlinks channelBitlinks4 = new OASChannelBitlinks();

        System.assert(channelBitlinks1.equals(channelBitlinks2));
        System.assert(channelBitlinks2.equals(channelBitlinks1));
        System.assert(channelBitlinks3.equals(channelBitlinks4));
        System.assert(channelBitlinks4.equals(channelBitlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = new OASChannelBitlinks();

        System.assertEquals(false, channelBitlinks1.equals('foo'));
        System.assertEquals(false, channelBitlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = new OASChannelBitlinks();
        OASChannelBitlinks channelBitlinks3;

        System.assertEquals(false, channelBitlinks1.equals(channelBitlinks3));
        System.assertEquals(false, channelBitlinks2.equals(channelBitlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = new OASChannelBitlinks();

        System.assertEquals(channelBitlinks1.hashCode(), channelBitlinks1.hashCode());
        System.assertEquals(channelBitlinks2.hashCode(), channelBitlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannelBitlinks channelBitlinks1 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks2 = OASChannelBitlinks.getExample();
        OASChannelBitlinks channelBitlinks3 = new OASChannelBitlinks();
        OASChannelBitlinks channelBitlinks4 = new OASChannelBitlinks();

        System.assert(channelBitlinks1.equals(channelBitlinks2));
        System.assert(channelBitlinks3.equals(channelBitlinks4));
        System.assertEquals(channelBitlinks1.hashCode(), channelBitlinks2.hashCode());
        System.assertEquals(channelBitlinks3.hashCode(), channelBitlinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannelBitlinks channelBitlinks = new OASChannelBitlinks();
        System.assertEquals(new List<OASChannelBitlink>(), channelBitlinks.bitlinks);
        System.assertEquals(null, channelBitlinks.total);
    }
}