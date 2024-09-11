@isTest
private class OASLaunchpadContentBitlinkRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = launchpadContentBitlinkRequest1;
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest3 = new OASLaunchpadContentBitlinkRequest();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest4 = launchpadContentBitlinkRequest3;

        System.assert(launchpadContentBitlinkRequest1.equals(launchpadContentBitlinkRequest2));
        System.assert(launchpadContentBitlinkRequest2.equals(launchpadContentBitlinkRequest1));
        System.assert(launchpadContentBitlinkRequest1.equals(launchpadContentBitlinkRequest1));
        System.assert(launchpadContentBitlinkRequest3.equals(launchpadContentBitlinkRequest4));
        System.assert(launchpadContentBitlinkRequest4.equals(launchpadContentBitlinkRequest3));
        System.assert(launchpadContentBitlinkRequest3.equals(launchpadContentBitlinkRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest3 = new OASLaunchpadContentBitlinkRequest();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest4 = new OASLaunchpadContentBitlinkRequest();

        System.assert(launchpadContentBitlinkRequest1.equals(launchpadContentBitlinkRequest2));
        System.assert(launchpadContentBitlinkRequest2.equals(launchpadContentBitlinkRequest1));
        System.assert(launchpadContentBitlinkRequest3.equals(launchpadContentBitlinkRequest4));
        System.assert(launchpadContentBitlinkRequest4.equals(launchpadContentBitlinkRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = new OASLaunchpadContentBitlinkRequest();

        System.assertEquals(false, launchpadContentBitlinkRequest1.equals('foo'));
        System.assertEquals(false, launchpadContentBitlinkRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = new OASLaunchpadContentBitlinkRequest();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest3;

        System.assertEquals(false, launchpadContentBitlinkRequest1.equals(launchpadContentBitlinkRequest3));
        System.assertEquals(false, launchpadContentBitlinkRequest2.equals(launchpadContentBitlinkRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = new OASLaunchpadContentBitlinkRequest();

        System.assertEquals(launchpadContentBitlinkRequest1.hashCode(), launchpadContentBitlinkRequest1.hashCode());
        System.assertEquals(launchpadContentBitlinkRequest2.hashCode(), launchpadContentBitlinkRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest1 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest2 = OASLaunchpadContentBitlinkRequest.getExample();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest3 = new OASLaunchpadContentBitlinkRequest();
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest4 = new OASLaunchpadContentBitlinkRequest();

        System.assert(launchpadContentBitlinkRequest1.equals(launchpadContentBitlinkRequest2));
        System.assert(launchpadContentBitlinkRequest3.equals(launchpadContentBitlinkRequest4));
        System.assertEquals(launchpadContentBitlinkRequest1.hashCode(), launchpadContentBitlinkRequest2.hashCode());
        System.assertEquals(launchpadContentBitlinkRequest3.hashCode(), launchpadContentBitlinkRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentBitlinkRequest launchpadContentBitlinkRequest = new OASLaunchpadContentBitlinkRequest();
        Map<String, String> propertymappings = launchpadContentBitlinkRequest.getPropertyMappings();
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
    }
}