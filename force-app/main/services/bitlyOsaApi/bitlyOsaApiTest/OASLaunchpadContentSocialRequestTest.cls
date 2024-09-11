@isTest
private class OASLaunchpadContentSocialRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = launchpadContentSocialRequest1;
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest3 = new OASLaunchpadContentSocialRequest();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest4 = launchpadContentSocialRequest3;

        System.assert(launchpadContentSocialRequest1.equals(launchpadContentSocialRequest2));
        System.assert(launchpadContentSocialRequest2.equals(launchpadContentSocialRequest1));
        System.assert(launchpadContentSocialRequest1.equals(launchpadContentSocialRequest1));
        System.assert(launchpadContentSocialRequest3.equals(launchpadContentSocialRequest4));
        System.assert(launchpadContentSocialRequest4.equals(launchpadContentSocialRequest3));
        System.assert(launchpadContentSocialRequest3.equals(launchpadContentSocialRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest3 = new OASLaunchpadContentSocialRequest();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest4 = new OASLaunchpadContentSocialRequest();

        System.assert(launchpadContentSocialRequest1.equals(launchpadContentSocialRequest2));
        System.assert(launchpadContentSocialRequest2.equals(launchpadContentSocialRequest1));
        System.assert(launchpadContentSocialRequest3.equals(launchpadContentSocialRequest4));
        System.assert(launchpadContentSocialRequest4.equals(launchpadContentSocialRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = new OASLaunchpadContentSocialRequest();

        System.assertEquals(false, launchpadContentSocialRequest1.equals('foo'));
        System.assertEquals(false, launchpadContentSocialRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = new OASLaunchpadContentSocialRequest();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest3;

        System.assertEquals(false, launchpadContentSocialRequest1.equals(launchpadContentSocialRequest3));
        System.assertEquals(false, launchpadContentSocialRequest2.equals(launchpadContentSocialRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = new OASLaunchpadContentSocialRequest();

        System.assertEquals(launchpadContentSocialRequest1.hashCode(), launchpadContentSocialRequest1.hashCode());
        System.assertEquals(launchpadContentSocialRequest2.hashCode(), launchpadContentSocialRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest1 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest2 = OASLaunchpadContentSocialRequest.getExample();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest3 = new OASLaunchpadContentSocialRequest();
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest4 = new OASLaunchpadContentSocialRequest();

        System.assert(launchpadContentSocialRequest1.equals(launchpadContentSocialRequest2));
        System.assert(launchpadContentSocialRequest3.equals(launchpadContentSocialRequest4));
        System.assertEquals(launchpadContentSocialRequest1.hashCode(), launchpadContentSocialRequest2.hashCode());
        System.assertEquals(launchpadContentSocialRequest3.hashCode(), launchpadContentSocialRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentSocialRequest launchpadContentSocialRequest = new OASLaunchpadContentSocialRequest();
        Map<String, String> propertymappings = launchpadContentSocialRequest.getPropertyMappings();
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}