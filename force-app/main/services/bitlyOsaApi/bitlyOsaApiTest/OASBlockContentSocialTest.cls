@isTest
private class OASBlockContentSocialTest {
    @isTest
    private static void equalsSameInstance() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = blockContentSocial1;
        OASBlockContentSocial blockContentSocial3 = new OASBlockContentSocial();
        OASBlockContentSocial blockContentSocial4 = blockContentSocial3;

        System.assert(blockContentSocial1.equals(blockContentSocial2));
        System.assert(blockContentSocial2.equals(blockContentSocial1));
        System.assert(blockContentSocial1.equals(blockContentSocial1));
        System.assert(blockContentSocial3.equals(blockContentSocial4));
        System.assert(blockContentSocial4.equals(blockContentSocial3));
        System.assert(blockContentSocial3.equals(blockContentSocial3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial3 = new OASBlockContentSocial();
        OASBlockContentSocial blockContentSocial4 = new OASBlockContentSocial();

        System.assert(blockContentSocial1.equals(blockContentSocial2));
        System.assert(blockContentSocial2.equals(blockContentSocial1));
        System.assert(blockContentSocial3.equals(blockContentSocial4));
        System.assert(blockContentSocial4.equals(blockContentSocial3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = new OASBlockContentSocial();

        System.assertEquals(false, blockContentSocial1.equals('foo'));
        System.assertEquals(false, blockContentSocial2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = new OASBlockContentSocial();
        OASBlockContentSocial blockContentSocial3;

        System.assertEquals(false, blockContentSocial1.equals(blockContentSocial3));
        System.assertEquals(false, blockContentSocial2.equals(blockContentSocial3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = new OASBlockContentSocial();

        System.assertEquals(blockContentSocial1.hashCode(), blockContentSocial1.hashCode());
        System.assertEquals(blockContentSocial2.hashCode(), blockContentSocial2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBlockContentSocial blockContentSocial1 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial2 = OASBlockContentSocial.getExample();
        OASBlockContentSocial blockContentSocial3 = new OASBlockContentSocial();
        OASBlockContentSocial blockContentSocial4 = new OASBlockContentSocial();

        System.assert(blockContentSocial1.equals(blockContentSocial2));
        System.assert(blockContentSocial3.equals(blockContentSocial4));
        System.assertEquals(blockContentSocial1.hashCode(), blockContentSocial2.hashCode());
        System.assertEquals(blockContentSocial3.hashCode(), blockContentSocial4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBlockContentSocial blockContentSocial = new OASBlockContentSocial();
        Map<String, String> propertymappings = blockContentSocial.getPropertyMappings();
        System.assertEquals('channelUrl', propertymappings.get('channel_url'));
    }
}