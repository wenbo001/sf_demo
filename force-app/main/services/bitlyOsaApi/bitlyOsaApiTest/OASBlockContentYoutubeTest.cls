@isTest
private class OASBlockContentYoutubeTest {
    @isTest
    private static void equalsSameInstance() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = blockContentYoutube1;
        OASBlockContentYoutube blockContentYoutube3 = new OASBlockContentYoutube();
        OASBlockContentYoutube blockContentYoutube4 = blockContentYoutube3;

        System.assert(blockContentYoutube1.equals(blockContentYoutube2));
        System.assert(blockContentYoutube2.equals(blockContentYoutube1));
        System.assert(blockContentYoutube1.equals(blockContentYoutube1));
        System.assert(blockContentYoutube3.equals(blockContentYoutube4));
        System.assert(blockContentYoutube4.equals(blockContentYoutube3));
        System.assert(blockContentYoutube3.equals(blockContentYoutube3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube3 = new OASBlockContentYoutube();
        OASBlockContentYoutube blockContentYoutube4 = new OASBlockContentYoutube();

        System.assert(blockContentYoutube1.equals(blockContentYoutube2));
        System.assert(blockContentYoutube2.equals(blockContentYoutube1));
        System.assert(blockContentYoutube3.equals(blockContentYoutube4));
        System.assert(blockContentYoutube4.equals(blockContentYoutube3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = new OASBlockContentYoutube();

        System.assertEquals(false, blockContentYoutube1.equals('foo'));
        System.assertEquals(false, blockContentYoutube2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = new OASBlockContentYoutube();
        OASBlockContentYoutube blockContentYoutube3;

        System.assertEquals(false, blockContentYoutube1.equals(blockContentYoutube3));
        System.assertEquals(false, blockContentYoutube2.equals(blockContentYoutube3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = new OASBlockContentYoutube();

        System.assertEquals(blockContentYoutube1.hashCode(), blockContentYoutube1.hashCode());
        System.assertEquals(blockContentYoutube2.hashCode(), blockContentYoutube2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBlockContentYoutube blockContentYoutube1 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube2 = OASBlockContentYoutube.getExample();
        OASBlockContentYoutube blockContentYoutube3 = new OASBlockContentYoutube();
        OASBlockContentYoutube blockContentYoutube4 = new OASBlockContentYoutube();

        System.assert(blockContentYoutube1.equals(blockContentYoutube2));
        System.assert(blockContentYoutube3.equals(blockContentYoutube4));
        System.assertEquals(blockContentYoutube1.hashCode(), blockContentYoutube2.hashCode());
        System.assertEquals(blockContentYoutube3.hashCode(), blockContentYoutube4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBlockContentYoutube blockContentYoutube = new OASBlockContentYoutube();
        Map<String, String> propertymappings = blockContentYoutube.getPropertyMappings();
        System.assertEquals('thumbnailUrl', propertymappings.get('thumbnail_url'));
    }
}