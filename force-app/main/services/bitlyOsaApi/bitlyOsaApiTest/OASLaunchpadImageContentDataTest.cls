@isTest
private class OASLaunchpadImageContentDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = launchpadImageContentData1;
        OASLaunchpadImageContentData launchpadImageContentData3 = new OASLaunchpadImageContentData();
        OASLaunchpadImageContentData launchpadImageContentData4 = launchpadImageContentData3;

        System.assert(launchpadImageContentData1.equals(launchpadImageContentData2));
        System.assert(launchpadImageContentData2.equals(launchpadImageContentData1));
        System.assert(launchpadImageContentData1.equals(launchpadImageContentData1));
        System.assert(launchpadImageContentData3.equals(launchpadImageContentData4));
        System.assert(launchpadImageContentData4.equals(launchpadImageContentData3));
        System.assert(launchpadImageContentData3.equals(launchpadImageContentData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData3 = new OASLaunchpadImageContentData();
        OASLaunchpadImageContentData launchpadImageContentData4 = new OASLaunchpadImageContentData();

        System.assert(launchpadImageContentData1.equals(launchpadImageContentData2));
        System.assert(launchpadImageContentData2.equals(launchpadImageContentData1));
        System.assert(launchpadImageContentData3.equals(launchpadImageContentData4));
        System.assert(launchpadImageContentData4.equals(launchpadImageContentData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = new OASLaunchpadImageContentData();

        System.assertEquals(false, launchpadImageContentData1.equals('foo'));
        System.assertEquals(false, launchpadImageContentData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = new OASLaunchpadImageContentData();
        OASLaunchpadImageContentData launchpadImageContentData3;

        System.assertEquals(false, launchpadImageContentData1.equals(launchpadImageContentData3));
        System.assertEquals(false, launchpadImageContentData2.equals(launchpadImageContentData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = new OASLaunchpadImageContentData();

        System.assertEquals(launchpadImageContentData1.hashCode(), launchpadImageContentData1.hashCode());
        System.assertEquals(launchpadImageContentData2.hashCode(), launchpadImageContentData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImageContentData launchpadImageContentData1 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData2 = OASLaunchpadImageContentData.getExample();
        OASLaunchpadImageContentData launchpadImageContentData3 = new OASLaunchpadImageContentData();
        OASLaunchpadImageContentData launchpadImageContentData4 = new OASLaunchpadImageContentData();

        System.assert(launchpadImageContentData1.equals(launchpadImageContentData2));
        System.assert(launchpadImageContentData3.equals(launchpadImageContentData4));
        System.assertEquals(launchpadImageContentData1.hashCode(), launchpadImageContentData2.hashCode());
        System.assertEquals(launchpadImageContentData3.hashCode(), launchpadImageContentData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadImageContentData launchpadImageContentData = new OASLaunchpadImageContentData();
        Map<String, String> propertymappings = launchpadImageContentData.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('aspectRatio', propertymappings.get('aspect_ratio'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}