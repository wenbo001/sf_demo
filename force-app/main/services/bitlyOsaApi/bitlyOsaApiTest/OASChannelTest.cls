@isTest
private class OASChannelTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = channel1;
        OASChannel channel3 = new OASChannel();
        OASChannel channel4 = channel3;

        System.assert(channel1.equals(channel2));
        System.assert(channel2.equals(channel1));
        System.assert(channel1.equals(channel1));
        System.assert(channel3.equals(channel4));
        System.assert(channel4.equals(channel3));
        System.assert(channel3.equals(channel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = OASChannel.getExample();
        OASChannel channel3 = new OASChannel();
        OASChannel channel4 = new OASChannel();

        System.assert(channel1.equals(channel2));
        System.assert(channel2.equals(channel1));
        System.assert(channel3.equals(channel4));
        System.assert(channel4.equals(channel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = new OASChannel();

        System.assertEquals(false, channel1.equals('foo'));
        System.assertEquals(false, channel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = new OASChannel();
        OASChannel channel3;

        System.assertEquals(false, channel1.equals(channel3));
        System.assertEquals(false, channel2.equals(channel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = new OASChannel();

        System.assertEquals(channel1.hashCode(), channel1.hashCode());
        System.assertEquals(channel2.hashCode(), channel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannel channel1 = OASChannel.getExample();
        OASChannel channel2 = OASChannel.getExample();
        OASChannel channel3 = new OASChannel();
        OASChannel channel4 = new OASChannel();

        System.assert(channel1.equals(channel2));
        System.assert(channel3.equals(channel4));
        System.assertEquals(channel1.hashCode(), channel2.hashCode());
        System.assertEquals(channel3.hashCode(), channel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChannel channel = new OASChannel();
        Map<String, String> propertymappings = channel.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannel channel = new OASChannel();
        System.assertEquals(new Map<String, String>(), channel.references);
        System.assertEquals(null, channel.name);
        System.assertEquals(null, channel.guid);
        System.assertEquals(null, channel.created);
        System.assertEquals(null, channel.modified);
        System.assertEquals(null, channel.groupGuid);
    }
}