@isTest
private class OASLaunchpadSocialRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = launchpadSocialRequest1;
        OASLaunchpadSocialRequest launchpadSocialRequest3 = new OASLaunchpadSocialRequest();
        OASLaunchpadSocialRequest launchpadSocialRequest4 = launchpadSocialRequest3;

        System.assert(launchpadSocialRequest1.equals(launchpadSocialRequest2));
        System.assert(launchpadSocialRequest2.equals(launchpadSocialRequest1));
        System.assert(launchpadSocialRequest1.equals(launchpadSocialRequest1));
        System.assert(launchpadSocialRequest3.equals(launchpadSocialRequest4));
        System.assert(launchpadSocialRequest4.equals(launchpadSocialRequest3));
        System.assert(launchpadSocialRequest3.equals(launchpadSocialRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest3 = new OASLaunchpadSocialRequest();
        OASLaunchpadSocialRequest launchpadSocialRequest4 = new OASLaunchpadSocialRequest();

        System.assert(launchpadSocialRequest1.equals(launchpadSocialRequest2));
        System.assert(launchpadSocialRequest2.equals(launchpadSocialRequest1));
        System.assert(launchpadSocialRequest3.equals(launchpadSocialRequest4));
        System.assert(launchpadSocialRequest4.equals(launchpadSocialRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = new OASLaunchpadSocialRequest();

        System.assertEquals(false, launchpadSocialRequest1.equals('foo'));
        System.assertEquals(false, launchpadSocialRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = new OASLaunchpadSocialRequest();
        OASLaunchpadSocialRequest launchpadSocialRequest3;

        System.assertEquals(false, launchpadSocialRequest1.equals(launchpadSocialRequest3));
        System.assertEquals(false, launchpadSocialRequest2.equals(launchpadSocialRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = new OASLaunchpadSocialRequest();

        System.assertEquals(launchpadSocialRequest1.hashCode(), launchpadSocialRequest1.hashCode());
        System.assertEquals(launchpadSocialRequest2.hashCode(), launchpadSocialRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadSocialRequest launchpadSocialRequest1 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest2 = OASLaunchpadSocialRequest.getExample();
        OASLaunchpadSocialRequest launchpadSocialRequest3 = new OASLaunchpadSocialRequest();
        OASLaunchpadSocialRequest launchpadSocialRequest4 = new OASLaunchpadSocialRequest();

        System.assert(launchpadSocialRequest1.equals(launchpadSocialRequest2));
        System.assert(launchpadSocialRequest3.equals(launchpadSocialRequest4));
        System.assertEquals(launchpadSocialRequest1.hashCode(), launchpadSocialRequest2.hashCode());
        System.assertEquals(launchpadSocialRequest3.hashCode(), launchpadSocialRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadSocialRequest launchpadSocialRequest = new OASLaunchpadSocialRequest();
        Map<String, String> propertymappings = launchpadSocialRequest.getPropertyMappings();
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}