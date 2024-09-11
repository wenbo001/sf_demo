@isTest
private class OASLaunchpadContentImageRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = launchpadContentImageRequest1;
        OASLaunchpadContentImageRequest launchpadContentImageRequest3 = new OASLaunchpadContentImageRequest();
        OASLaunchpadContentImageRequest launchpadContentImageRequest4 = launchpadContentImageRequest3;

        System.assert(launchpadContentImageRequest1.equals(launchpadContentImageRequest2));
        System.assert(launchpadContentImageRequest2.equals(launchpadContentImageRequest1));
        System.assert(launchpadContentImageRequest1.equals(launchpadContentImageRequest1));
        System.assert(launchpadContentImageRequest3.equals(launchpadContentImageRequest4));
        System.assert(launchpadContentImageRequest4.equals(launchpadContentImageRequest3));
        System.assert(launchpadContentImageRequest3.equals(launchpadContentImageRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest3 = new OASLaunchpadContentImageRequest();
        OASLaunchpadContentImageRequest launchpadContentImageRequest4 = new OASLaunchpadContentImageRequest();

        System.assert(launchpadContentImageRequest1.equals(launchpadContentImageRequest2));
        System.assert(launchpadContentImageRequest2.equals(launchpadContentImageRequest1));
        System.assert(launchpadContentImageRequest3.equals(launchpadContentImageRequest4));
        System.assert(launchpadContentImageRequest4.equals(launchpadContentImageRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = new OASLaunchpadContentImageRequest();

        System.assertEquals(false, launchpadContentImageRequest1.equals('foo'));
        System.assertEquals(false, launchpadContentImageRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = new OASLaunchpadContentImageRequest();
        OASLaunchpadContentImageRequest launchpadContentImageRequest3;

        System.assertEquals(false, launchpadContentImageRequest1.equals(launchpadContentImageRequest3));
        System.assertEquals(false, launchpadContentImageRequest2.equals(launchpadContentImageRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = new OASLaunchpadContentImageRequest();

        System.assertEquals(launchpadContentImageRequest1.hashCode(), launchpadContentImageRequest1.hashCode());
        System.assertEquals(launchpadContentImageRequest2.hashCode(), launchpadContentImageRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest1 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest2 = OASLaunchpadContentImageRequest.getExample();
        OASLaunchpadContentImageRequest launchpadContentImageRequest3 = new OASLaunchpadContentImageRequest();
        OASLaunchpadContentImageRequest launchpadContentImageRequest4 = new OASLaunchpadContentImageRequest();

        System.assert(launchpadContentImageRequest1.equals(launchpadContentImageRequest2));
        System.assert(launchpadContentImageRequest3.equals(launchpadContentImageRequest4));
        System.assertEquals(launchpadContentImageRequest1.hashCode(), launchpadContentImageRequest2.hashCode());
        System.assertEquals(launchpadContentImageRequest3.hashCode(), launchpadContentImageRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentImageRequest launchpadContentImageRequest = new OASLaunchpadContentImageRequest();
        Map<String, String> propertymappings = launchpadContentImageRequest.getPropertyMappings();
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
    }
}