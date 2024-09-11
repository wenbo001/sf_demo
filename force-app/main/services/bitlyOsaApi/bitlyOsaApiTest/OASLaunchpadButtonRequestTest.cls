@isTest
private class OASLaunchpadButtonRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = launchpadButtonRequest1;
        OASLaunchpadButtonRequest launchpadButtonRequest3 = new OASLaunchpadButtonRequest();
        OASLaunchpadButtonRequest launchpadButtonRequest4 = launchpadButtonRequest3;

        System.assert(launchpadButtonRequest1.equals(launchpadButtonRequest2));
        System.assert(launchpadButtonRequest2.equals(launchpadButtonRequest1));
        System.assert(launchpadButtonRequest1.equals(launchpadButtonRequest1));
        System.assert(launchpadButtonRequest3.equals(launchpadButtonRequest4));
        System.assert(launchpadButtonRequest4.equals(launchpadButtonRequest3));
        System.assert(launchpadButtonRequest3.equals(launchpadButtonRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest3 = new OASLaunchpadButtonRequest();
        OASLaunchpadButtonRequest launchpadButtonRequest4 = new OASLaunchpadButtonRequest();

        System.assert(launchpadButtonRequest1.equals(launchpadButtonRequest2));
        System.assert(launchpadButtonRequest2.equals(launchpadButtonRequest1));
        System.assert(launchpadButtonRequest3.equals(launchpadButtonRequest4));
        System.assert(launchpadButtonRequest4.equals(launchpadButtonRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = new OASLaunchpadButtonRequest();

        System.assertEquals(false, launchpadButtonRequest1.equals('foo'));
        System.assertEquals(false, launchpadButtonRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = new OASLaunchpadButtonRequest();
        OASLaunchpadButtonRequest launchpadButtonRequest3;

        System.assertEquals(false, launchpadButtonRequest1.equals(launchpadButtonRequest3));
        System.assertEquals(false, launchpadButtonRequest2.equals(launchpadButtonRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = new OASLaunchpadButtonRequest();

        System.assertEquals(launchpadButtonRequest1.hashCode(), launchpadButtonRequest1.hashCode());
        System.assertEquals(launchpadButtonRequest2.hashCode(), launchpadButtonRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonRequest launchpadButtonRequest1 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest2 = OASLaunchpadButtonRequest.getExample();
        OASLaunchpadButtonRequest launchpadButtonRequest3 = new OASLaunchpadButtonRequest();
        OASLaunchpadButtonRequest launchpadButtonRequest4 = new OASLaunchpadButtonRequest();

        System.assert(launchpadButtonRequest1.equals(launchpadButtonRequest2));
        System.assert(launchpadButtonRequest3.equals(launchpadButtonRequest4));
        System.assertEquals(launchpadButtonRequest1.hashCode(), launchpadButtonRequest2.hashCode());
        System.assertEquals(launchpadButtonRequest3.hashCode(), launchpadButtonRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonRequest launchpadButtonRequest = new OASLaunchpadButtonRequest();
        Map<String, String> propertymappings = launchpadButtonRequest.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
        System.assertEquals('buttonThumbnailImage', propertymappings.get('button_thumbnail_image'));
    }
}