@isTest
private class OASLaunchpadSocialTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = launchpadSocial1;
        OASLaunchpadSocial launchpadSocial3 = new OASLaunchpadSocial();
        OASLaunchpadSocial launchpadSocial4 = launchpadSocial3;

        System.assert(launchpadSocial1.equals(launchpadSocial2));
        System.assert(launchpadSocial2.equals(launchpadSocial1));
        System.assert(launchpadSocial1.equals(launchpadSocial1));
        System.assert(launchpadSocial3.equals(launchpadSocial4));
        System.assert(launchpadSocial4.equals(launchpadSocial3));
        System.assert(launchpadSocial3.equals(launchpadSocial3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial3 = new OASLaunchpadSocial();
        OASLaunchpadSocial launchpadSocial4 = new OASLaunchpadSocial();

        System.assert(launchpadSocial1.equals(launchpadSocial2));
        System.assert(launchpadSocial2.equals(launchpadSocial1));
        System.assert(launchpadSocial3.equals(launchpadSocial4));
        System.assert(launchpadSocial4.equals(launchpadSocial3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = new OASLaunchpadSocial();

        System.assertEquals(false, launchpadSocial1.equals('foo'));
        System.assertEquals(false, launchpadSocial2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = new OASLaunchpadSocial();
        OASLaunchpadSocial launchpadSocial3;

        System.assertEquals(false, launchpadSocial1.equals(launchpadSocial3));
        System.assertEquals(false, launchpadSocial2.equals(launchpadSocial3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = new OASLaunchpadSocial();

        System.assertEquals(launchpadSocial1.hashCode(), launchpadSocial1.hashCode());
        System.assertEquals(launchpadSocial2.hashCode(), launchpadSocial2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadSocial launchpadSocial1 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial2 = OASLaunchpadSocial.getExample();
        OASLaunchpadSocial launchpadSocial3 = new OASLaunchpadSocial();
        OASLaunchpadSocial launchpadSocial4 = new OASLaunchpadSocial();

        System.assert(launchpadSocial1.equals(launchpadSocial2));
        System.assert(launchpadSocial3.equals(launchpadSocial4));
        System.assertEquals(launchpadSocial1.hashCode(), launchpadSocial2.hashCode());
        System.assertEquals(launchpadSocial3.hashCode(), launchpadSocial4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadSocial launchpadSocial = new OASLaunchpadSocial();
        Map<String, String> propertymappings = launchpadSocial.getPropertyMappings();
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