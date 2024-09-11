@isTest
private class OASLaunchpadContentYouTubeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = launchpadContentYouTubeResponse1;
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse3 = new OASLaunchpadContentYouTubeResponse();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse4 = launchpadContentYouTubeResponse3;

        System.assert(launchpadContentYouTubeResponse1.equals(launchpadContentYouTubeResponse2));
        System.assert(launchpadContentYouTubeResponse2.equals(launchpadContentYouTubeResponse1));
        System.assert(launchpadContentYouTubeResponse1.equals(launchpadContentYouTubeResponse1));
        System.assert(launchpadContentYouTubeResponse3.equals(launchpadContentYouTubeResponse4));
        System.assert(launchpadContentYouTubeResponse4.equals(launchpadContentYouTubeResponse3));
        System.assert(launchpadContentYouTubeResponse3.equals(launchpadContentYouTubeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse3 = new OASLaunchpadContentYouTubeResponse();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse4 = new OASLaunchpadContentYouTubeResponse();

        System.assert(launchpadContentYouTubeResponse1.equals(launchpadContentYouTubeResponse2));
        System.assert(launchpadContentYouTubeResponse2.equals(launchpadContentYouTubeResponse1));
        System.assert(launchpadContentYouTubeResponse3.equals(launchpadContentYouTubeResponse4));
        System.assert(launchpadContentYouTubeResponse4.equals(launchpadContentYouTubeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = new OASLaunchpadContentYouTubeResponse();

        System.assertEquals(false, launchpadContentYouTubeResponse1.equals('foo'));
        System.assertEquals(false, launchpadContentYouTubeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = new OASLaunchpadContentYouTubeResponse();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse3;

        System.assertEquals(false, launchpadContentYouTubeResponse1.equals(launchpadContentYouTubeResponse3));
        System.assertEquals(false, launchpadContentYouTubeResponse2.equals(launchpadContentYouTubeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = new OASLaunchpadContentYouTubeResponse();

        System.assertEquals(launchpadContentYouTubeResponse1.hashCode(), launchpadContentYouTubeResponse1.hashCode());
        System.assertEquals(launchpadContentYouTubeResponse2.hashCode(), launchpadContentYouTubeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse1 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse2 = OASLaunchpadContentYouTubeResponse.getExample();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse3 = new OASLaunchpadContentYouTubeResponse();
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse4 = new OASLaunchpadContentYouTubeResponse();

        System.assert(launchpadContentYouTubeResponse1.equals(launchpadContentYouTubeResponse2));
        System.assert(launchpadContentYouTubeResponse3.equals(launchpadContentYouTubeResponse4));
        System.assertEquals(launchpadContentYouTubeResponse1.hashCode(), launchpadContentYouTubeResponse2.hashCode());
        System.assertEquals(launchpadContentYouTubeResponse3.hashCode(), launchpadContentYouTubeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentYouTubeResponse launchpadContentYouTubeResponse = new OASLaunchpadContentYouTubeResponse();
        Map<String, String> propertymappings = launchpadContentYouTubeResponse.getPropertyMappings();
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('buttonId', propertymappings.get('button_id'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
        System.assertEquals('isSample', propertymappings.get('is_sample'));
    }
}