@isTest
private class OASLaunchpadButtonContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = launchpadButtonContent1;
        OASLaunchpadButtonContent launchpadButtonContent3 = new OASLaunchpadButtonContent();
        OASLaunchpadButtonContent launchpadButtonContent4 = launchpadButtonContent3;

        System.assert(launchpadButtonContent1.equals(launchpadButtonContent2));
        System.assert(launchpadButtonContent2.equals(launchpadButtonContent1));
        System.assert(launchpadButtonContent1.equals(launchpadButtonContent1));
        System.assert(launchpadButtonContent3.equals(launchpadButtonContent4));
        System.assert(launchpadButtonContent4.equals(launchpadButtonContent3));
        System.assert(launchpadButtonContent3.equals(launchpadButtonContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent3 = new OASLaunchpadButtonContent();
        OASLaunchpadButtonContent launchpadButtonContent4 = new OASLaunchpadButtonContent();

        System.assert(launchpadButtonContent1.equals(launchpadButtonContent2));
        System.assert(launchpadButtonContent2.equals(launchpadButtonContent1));
        System.assert(launchpadButtonContent3.equals(launchpadButtonContent4));
        System.assert(launchpadButtonContent4.equals(launchpadButtonContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = new OASLaunchpadButtonContent();

        System.assertEquals(false, launchpadButtonContent1.equals('foo'));
        System.assertEquals(false, launchpadButtonContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = new OASLaunchpadButtonContent();
        OASLaunchpadButtonContent launchpadButtonContent3;

        System.assertEquals(false, launchpadButtonContent1.equals(launchpadButtonContent3));
        System.assertEquals(false, launchpadButtonContent2.equals(launchpadButtonContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = new OASLaunchpadButtonContent();

        System.assertEquals(launchpadButtonContent1.hashCode(), launchpadButtonContent1.hashCode());
        System.assertEquals(launchpadButtonContent2.hashCode(), launchpadButtonContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonContent launchpadButtonContent1 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent2 = OASLaunchpadButtonContent.getExample();
        OASLaunchpadButtonContent launchpadButtonContent3 = new OASLaunchpadButtonContent();
        OASLaunchpadButtonContent launchpadButtonContent4 = new OASLaunchpadButtonContent();

        System.assert(launchpadButtonContent1.equals(launchpadButtonContent2));
        System.assert(launchpadButtonContent3.equals(launchpadButtonContent4));
        System.assertEquals(launchpadButtonContent1.hashCode(), launchpadButtonContent2.hashCode());
        System.assertEquals(launchpadButtonContent3.hashCode(), launchpadButtonContent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonContent launchpadButtonContent = new OASLaunchpadButtonContent();
        Map<String, String> propertymappings = launchpadButtonContent.getPropertyMappings();
        System.assertEquals('videoUrl', propertymappings.get('video_url'));
        System.assertEquals('thumbnailUrl', propertymappings.get('thumbnail_url'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('aspectRatio', propertymappings.get('aspect_ratio'));
    }
}