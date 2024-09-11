@isTest
private class OASLaunchpadContainerResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = launchpadContainerResponse1;
        OASLaunchpadContainerResponse launchpadContainerResponse3 = new OASLaunchpadContainerResponse();
        OASLaunchpadContainerResponse launchpadContainerResponse4 = launchpadContainerResponse3;

        System.assert(launchpadContainerResponse1.equals(launchpadContainerResponse2));
        System.assert(launchpadContainerResponse2.equals(launchpadContainerResponse1));
        System.assert(launchpadContainerResponse1.equals(launchpadContainerResponse1));
        System.assert(launchpadContainerResponse3.equals(launchpadContainerResponse4));
        System.assert(launchpadContainerResponse4.equals(launchpadContainerResponse3));
        System.assert(launchpadContainerResponse3.equals(launchpadContainerResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse3 = new OASLaunchpadContainerResponse();
        OASLaunchpadContainerResponse launchpadContainerResponse4 = new OASLaunchpadContainerResponse();

        System.assert(launchpadContainerResponse1.equals(launchpadContainerResponse2));
        System.assert(launchpadContainerResponse2.equals(launchpadContainerResponse1));
        System.assert(launchpadContainerResponse3.equals(launchpadContainerResponse4));
        System.assert(launchpadContainerResponse4.equals(launchpadContainerResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = new OASLaunchpadContainerResponse();

        System.assertEquals(false, launchpadContainerResponse1.equals('foo'));
        System.assertEquals(false, launchpadContainerResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = new OASLaunchpadContainerResponse();
        OASLaunchpadContainerResponse launchpadContainerResponse3;

        System.assertEquals(false, launchpadContainerResponse1.equals(launchpadContainerResponse3));
        System.assertEquals(false, launchpadContainerResponse2.equals(launchpadContainerResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = new OASLaunchpadContainerResponse();

        System.assertEquals(launchpadContainerResponse1.hashCode(), launchpadContainerResponse1.hashCode());
        System.assertEquals(launchpadContainerResponse2.hashCode(), launchpadContainerResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContainerResponse launchpadContainerResponse1 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse2 = OASLaunchpadContainerResponse.getExample();
        OASLaunchpadContainerResponse launchpadContainerResponse3 = new OASLaunchpadContainerResponse();
        OASLaunchpadContainerResponse launchpadContainerResponse4 = new OASLaunchpadContainerResponse();

        System.assert(launchpadContainerResponse1.equals(launchpadContainerResponse2));
        System.assert(launchpadContainerResponse3.equals(launchpadContainerResponse4));
        System.assertEquals(launchpadContainerResponse1.hashCode(), launchpadContainerResponse2.hashCode());
        System.assertEquals(launchpadContainerResponse3.hashCode(), launchpadContainerResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContainerResponse launchpadContainerResponse = new OASLaunchpadContainerResponse();
        Map<String, String> propertymappings = launchpadContainerResponse.getPropertyMappings();
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