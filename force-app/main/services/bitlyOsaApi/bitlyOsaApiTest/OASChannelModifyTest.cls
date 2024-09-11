@isTest
private class OASChannelModifyTest {
    @isTest
    private static void equalsSameInstance() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = channelModify1;
        OASChannelModify channelModify3 = new OASChannelModify();
        OASChannelModify channelModify4 = channelModify3;

        System.assert(channelModify1.equals(channelModify2));
        System.assert(channelModify2.equals(channelModify1));
        System.assert(channelModify1.equals(channelModify1));
        System.assert(channelModify3.equals(channelModify4));
        System.assert(channelModify4.equals(channelModify3));
        System.assert(channelModify3.equals(channelModify3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = OASChannelModify.getExample();
        OASChannelModify channelModify3 = new OASChannelModify();
        OASChannelModify channelModify4 = new OASChannelModify();

        System.assert(channelModify1.equals(channelModify2));
        System.assert(channelModify2.equals(channelModify1));
        System.assert(channelModify3.equals(channelModify4));
        System.assert(channelModify4.equals(channelModify3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = new OASChannelModify();

        System.assertEquals(false, channelModify1.equals('foo'));
        System.assertEquals(false, channelModify2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = new OASChannelModify();
        OASChannelModify channelModify3;

        System.assertEquals(false, channelModify1.equals(channelModify3));
        System.assertEquals(false, channelModify2.equals(channelModify3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = new OASChannelModify();

        System.assertEquals(channelModify1.hashCode(), channelModify1.hashCode());
        System.assertEquals(channelModify2.hashCode(), channelModify2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChannelModify channelModify1 = OASChannelModify.getExample();
        OASChannelModify channelModify2 = OASChannelModify.getExample();
        OASChannelModify channelModify3 = new OASChannelModify();
        OASChannelModify channelModify4 = new OASChannelModify();

        System.assert(channelModify1.equals(channelModify2));
        System.assert(channelModify3.equals(channelModify4));
        System.assertEquals(channelModify1.hashCode(), channelModify2.hashCode());
        System.assertEquals(channelModify3.hashCode(), channelModify4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChannelModify channelModify = new OASChannelModify();
        Map<String, String> propertymappings = channelModify.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASChannelModify channelModify = new OASChannelModify();
        System.assertEquals(new List<OASBaseChannelBitlink>(), channelModify.bitlinks);
        System.assertEquals(null, channelModify.name);
        System.assertEquals(null, channelModify.guid);
        System.assertEquals(null, channelModify.created);
        System.assertEquals(null, channelModify.modified);
        System.assertEquals(null, channelModify.groupGuid);
    }
}