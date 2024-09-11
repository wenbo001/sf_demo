@isTest
private class OASChannelsTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = channels1;
        OASChannels channels3 = new OASChannels();
        OASChannels channels4 = channels3;

        System.assert(channels1.equals(channels2));
        System.assert(channels2.equals(channels1));
        System.assert(channels1.equals(channels1));
        System.assert(channels3.equals(channels4));
        System.assert(channels4.equals(channels3));
        System.assert(channels3.equals(channels3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = OASChannels.getExample();
        OASChannels channels3 = new OASChannels();
        OASChannels channels4 = new OASChannels();

        System.assert(channels1.equals(channels2));
        System.assert(channels2.equals(channels1));
        System.assert(channels3.equals(channels4));
        System.assert(channels4.equals(channels3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = new OASChannels();

        System.assertEquals(false, channels1.equals('foo'));
        System.assertEquals(false, channels2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = new OASChannels();
        OASChannels channels3;

        System.assertEquals(false, channels1.equals(channels3));
        System.assertEquals(false, channels2.equals(channels3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = new OASChannels();

        System.assertEquals(channels1.hashCode(), channels1.hashCode());
        System.assertEquals(channels2.hashCode(), channels2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannels channels1 = OASChannels.getExample();
        OASChannels channels2 = OASChannels.getExample();
        OASChannels channels3 = new OASChannels();
        OASChannels channels4 = new OASChannels();

        System.assert(channels1.equals(channels2));
        System.assert(channels3.equals(channels4));
        System.assertEquals(channels1.hashCode(), channels2.hashCode());
        System.assertEquals(channels3.hashCode(), channels4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannels channels = new OASChannels();
        System.assertEquals(new List<OASChannel>(), channels.channels);
    }
}