@isTest
private class OASLaunchpadImageContentRequestDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = launchpadImageContentRequestData1;
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData3 = new OASLaunchpadImageContentRequestData();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData4 = launchpadImageContentRequestData3;

        System.assert(launchpadImageContentRequestData1.equals(launchpadImageContentRequestData2));
        System.assert(launchpadImageContentRequestData2.equals(launchpadImageContentRequestData1));
        System.assert(launchpadImageContentRequestData1.equals(launchpadImageContentRequestData1));
        System.assert(launchpadImageContentRequestData3.equals(launchpadImageContentRequestData4));
        System.assert(launchpadImageContentRequestData4.equals(launchpadImageContentRequestData3));
        System.assert(launchpadImageContentRequestData3.equals(launchpadImageContentRequestData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData3 = new OASLaunchpadImageContentRequestData();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData4 = new OASLaunchpadImageContentRequestData();

        System.assert(launchpadImageContentRequestData1.equals(launchpadImageContentRequestData2));
        System.assert(launchpadImageContentRequestData2.equals(launchpadImageContentRequestData1));
        System.assert(launchpadImageContentRequestData3.equals(launchpadImageContentRequestData4));
        System.assert(launchpadImageContentRequestData4.equals(launchpadImageContentRequestData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = new OASLaunchpadImageContentRequestData();

        System.assertEquals(false, launchpadImageContentRequestData1.equals('foo'));
        System.assertEquals(false, launchpadImageContentRequestData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = new OASLaunchpadImageContentRequestData();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData3;

        System.assertEquals(false, launchpadImageContentRequestData1.equals(launchpadImageContentRequestData3));
        System.assertEquals(false, launchpadImageContentRequestData2.equals(launchpadImageContentRequestData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = new OASLaunchpadImageContentRequestData();

        System.assertEquals(launchpadImageContentRequestData1.hashCode(), launchpadImageContentRequestData1.hashCode());
        System.assertEquals(launchpadImageContentRequestData2.hashCode(), launchpadImageContentRequestData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData1 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData2 = OASLaunchpadImageContentRequestData.getExample();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData3 = new OASLaunchpadImageContentRequestData();
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData4 = new OASLaunchpadImageContentRequestData();

        System.assert(launchpadImageContentRequestData1.equals(launchpadImageContentRequestData2));
        System.assert(launchpadImageContentRequestData3.equals(launchpadImageContentRequestData4));
        System.assertEquals(launchpadImageContentRequestData1.hashCode(), launchpadImageContentRequestData2.hashCode());
        System.assertEquals(launchpadImageContentRequestData3.hashCode(), launchpadImageContentRequestData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadImageContentRequestData launchpadImageContentRequestData = new OASLaunchpadImageContentRequestData();
        Map<String, String> propertymappings = launchpadImageContentRequestData.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('aspectRatio', propertymappings.get('aspect_ratio'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }
}