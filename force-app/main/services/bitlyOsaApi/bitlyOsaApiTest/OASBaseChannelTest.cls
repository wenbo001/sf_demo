@isTest
private class OASBaseChannelTest {
    @isTest
    private static void equalsSameInstance() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = baseChannel1;
        OASBaseChannel baseChannel3 = new OASBaseChannel();
        OASBaseChannel baseChannel4 = baseChannel3;

        System.assert(baseChannel1.equals(baseChannel2));
        System.assert(baseChannel2.equals(baseChannel1));
        System.assert(baseChannel1.equals(baseChannel1));
        System.assert(baseChannel3.equals(baseChannel4));
        System.assert(baseChannel4.equals(baseChannel3));
        System.assert(baseChannel3.equals(baseChannel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel3 = new OASBaseChannel();
        OASBaseChannel baseChannel4 = new OASBaseChannel();

        System.assert(baseChannel1.equals(baseChannel2));
        System.assert(baseChannel2.equals(baseChannel1));
        System.assert(baseChannel3.equals(baseChannel4));
        System.assert(baseChannel4.equals(baseChannel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = new OASBaseChannel();

        System.assertEquals(false, baseChannel1.equals('foo'));
        System.assertEquals(false, baseChannel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = new OASBaseChannel();
        OASBaseChannel baseChannel3;

        System.assertEquals(false, baseChannel1.equals(baseChannel3));
        System.assertEquals(false, baseChannel2.equals(baseChannel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = new OASBaseChannel();

        System.assertEquals(baseChannel1.hashCode(), baseChannel1.hashCode());
        System.assertEquals(baseChannel2.hashCode(), baseChannel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBaseChannel baseChannel1 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel2 = OASBaseChannel.getExample();
        OASBaseChannel baseChannel3 = new OASBaseChannel();
        OASBaseChannel baseChannel4 = new OASBaseChannel();

        System.assert(baseChannel1.equals(baseChannel2));
        System.assert(baseChannel3.equals(baseChannel4));
        System.assertEquals(baseChannel1.hashCode(), baseChannel2.hashCode());
        System.assertEquals(baseChannel3.hashCode(), baseChannel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBaseChannel baseChannel = new OASBaseChannel();
        Map<String, String> propertymappings = baseChannel.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}