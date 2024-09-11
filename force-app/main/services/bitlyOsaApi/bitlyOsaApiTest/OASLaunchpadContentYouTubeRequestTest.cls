@isTest
private class OASLaunchpadContentYouTubeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = launchpadContentYouTubeRequest1;
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest3 = new OASLaunchpadContentYouTubeRequest();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest4 = launchpadContentYouTubeRequest3;

        System.assert(launchpadContentYouTubeRequest1.equals(launchpadContentYouTubeRequest2));
        System.assert(launchpadContentYouTubeRequest2.equals(launchpadContentYouTubeRequest1));
        System.assert(launchpadContentYouTubeRequest1.equals(launchpadContentYouTubeRequest1));
        System.assert(launchpadContentYouTubeRequest3.equals(launchpadContentYouTubeRequest4));
        System.assert(launchpadContentYouTubeRequest4.equals(launchpadContentYouTubeRequest3));
        System.assert(launchpadContentYouTubeRequest3.equals(launchpadContentYouTubeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest3 = new OASLaunchpadContentYouTubeRequest();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest4 = new OASLaunchpadContentYouTubeRequest();

        System.assert(launchpadContentYouTubeRequest1.equals(launchpadContentYouTubeRequest2));
        System.assert(launchpadContentYouTubeRequest2.equals(launchpadContentYouTubeRequest1));
        System.assert(launchpadContentYouTubeRequest3.equals(launchpadContentYouTubeRequest4));
        System.assert(launchpadContentYouTubeRequest4.equals(launchpadContentYouTubeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = new OASLaunchpadContentYouTubeRequest();

        System.assertEquals(false, launchpadContentYouTubeRequest1.equals('foo'));
        System.assertEquals(false, launchpadContentYouTubeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = new OASLaunchpadContentYouTubeRequest();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest3;

        System.assertEquals(false, launchpadContentYouTubeRequest1.equals(launchpadContentYouTubeRequest3));
        System.assertEquals(false, launchpadContentYouTubeRequest2.equals(launchpadContentYouTubeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = new OASLaunchpadContentYouTubeRequest();

        System.assertEquals(launchpadContentYouTubeRequest1.hashCode(), launchpadContentYouTubeRequest1.hashCode());
        System.assertEquals(launchpadContentYouTubeRequest2.hashCode(), launchpadContentYouTubeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest1 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest2 = OASLaunchpadContentYouTubeRequest.getExample();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest3 = new OASLaunchpadContentYouTubeRequest();
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest4 = new OASLaunchpadContentYouTubeRequest();

        System.assert(launchpadContentYouTubeRequest1.equals(launchpadContentYouTubeRequest2));
        System.assert(launchpadContentYouTubeRequest3.equals(launchpadContentYouTubeRequest4));
        System.assertEquals(launchpadContentYouTubeRequest1.hashCode(), launchpadContentYouTubeRequest2.hashCode());
        System.assertEquals(launchpadContentYouTubeRequest3.hashCode(), launchpadContentYouTubeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentYouTubeRequest launchpadContentYouTubeRequest = new OASLaunchpadContentYouTubeRequest();
        Map<String, String> propertymappings = launchpadContentYouTubeRequest.getPropertyMappings();
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
    }
}