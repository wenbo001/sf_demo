@isTest
private class OASLaunchpadContainerRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = launchpadContainerRequest1;
        OASLaunchpadContainerRequest launchpadContainerRequest3 = new OASLaunchpadContainerRequest();
        OASLaunchpadContainerRequest launchpadContainerRequest4 = launchpadContainerRequest3;

        System.assert(launchpadContainerRequest1.equals(launchpadContainerRequest2));
        System.assert(launchpadContainerRequest2.equals(launchpadContainerRequest1));
        System.assert(launchpadContainerRequest1.equals(launchpadContainerRequest1));
        System.assert(launchpadContainerRequest3.equals(launchpadContainerRequest4));
        System.assert(launchpadContainerRequest4.equals(launchpadContainerRequest3));
        System.assert(launchpadContainerRequest3.equals(launchpadContainerRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest3 = new OASLaunchpadContainerRequest();
        OASLaunchpadContainerRequest launchpadContainerRequest4 = new OASLaunchpadContainerRequest();

        System.assert(launchpadContainerRequest1.equals(launchpadContainerRequest2));
        System.assert(launchpadContainerRequest2.equals(launchpadContainerRequest1));
        System.assert(launchpadContainerRequest3.equals(launchpadContainerRequest4));
        System.assert(launchpadContainerRequest4.equals(launchpadContainerRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = new OASLaunchpadContainerRequest();

        System.assertEquals(false, launchpadContainerRequest1.equals('foo'));
        System.assertEquals(false, launchpadContainerRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = new OASLaunchpadContainerRequest();
        OASLaunchpadContainerRequest launchpadContainerRequest3;

        System.assertEquals(false, launchpadContainerRequest1.equals(launchpadContainerRequest3));
        System.assertEquals(false, launchpadContainerRequest2.equals(launchpadContainerRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = new OASLaunchpadContainerRequest();

        System.assertEquals(launchpadContainerRequest1.hashCode(), launchpadContainerRequest1.hashCode());
        System.assertEquals(launchpadContainerRequest2.hashCode(), launchpadContainerRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContainerRequest launchpadContainerRequest1 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest2 = OASLaunchpadContainerRequest.getExample();
        OASLaunchpadContainerRequest launchpadContainerRequest3 = new OASLaunchpadContainerRequest();
        OASLaunchpadContainerRequest launchpadContainerRequest4 = new OASLaunchpadContainerRequest();

        System.assert(launchpadContainerRequest1.equals(launchpadContainerRequest2));
        System.assert(launchpadContainerRequest3.equals(launchpadContainerRequest4));
        System.assertEquals(launchpadContainerRequest1.hashCode(), launchpadContainerRequest2.hashCode());
        System.assertEquals(launchpadContainerRequest3.hashCode(), launchpadContainerRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContainerRequest launchpadContainerRequest = new OASLaunchpadContainerRequest();
        Map<String, String> propertymappings = launchpadContainerRequest.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
    }
}