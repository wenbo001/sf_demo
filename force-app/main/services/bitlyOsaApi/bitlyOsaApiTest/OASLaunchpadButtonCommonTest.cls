@isTest
private class OASLaunchpadButtonCommonTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = launchpadButtonCommon1;
        OASLaunchpadButtonCommon launchpadButtonCommon3 = new OASLaunchpadButtonCommon();
        OASLaunchpadButtonCommon launchpadButtonCommon4 = launchpadButtonCommon3;

        System.assert(launchpadButtonCommon1.equals(launchpadButtonCommon2));
        System.assert(launchpadButtonCommon2.equals(launchpadButtonCommon1));
        System.assert(launchpadButtonCommon1.equals(launchpadButtonCommon1));
        System.assert(launchpadButtonCommon3.equals(launchpadButtonCommon4));
        System.assert(launchpadButtonCommon4.equals(launchpadButtonCommon3));
        System.assert(launchpadButtonCommon3.equals(launchpadButtonCommon3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon3 = new OASLaunchpadButtonCommon();
        OASLaunchpadButtonCommon launchpadButtonCommon4 = new OASLaunchpadButtonCommon();

        System.assert(launchpadButtonCommon1.equals(launchpadButtonCommon2));
        System.assert(launchpadButtonCommon2.equals(launchpadButtonCommon1));
        System.assert(launchpadButtonCommon3.equals(launchpadButtonCommon4));
        System.assert(launchpadButtonCommon4.equals(launchpadButtonCommon3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = new OASLaunchpadButtonCommon();

        System.assertEquals(false, launchpadButtonCommon1.equals('foo'));
        System.assertEquals(false, launchpadButtonCommon2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = new OASLaunchpadButtonCommon();
        OASLaunchpadButtonCommon launchpadButtonCommon3;

        System.assertEquals(false, launchpadButtonCommon1.equals(launchpadButtonCommon3));
        System.assertEquals(false, launchpadButtonCommon2.equals(launchpadButtonCommon3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = new OASLaunchpadButtonCommon();

        System.assertEquals(launchpadButtonCommon1.hashCode(), launchpadButtonCommon1.hashCode());
        System.assertEquals(launchpadButtonCommon2.hashCode(), launchpadButtonCommon2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonCommon launchpadButtonCommon1 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon2 = OASLaunchpadButtonCommon.getExample();
        OASLaunchpadButtonCommon launchpadButtonCommon3 = new OASLaunchpadButtonCommon();
        OASLaunchpadButtonCommon launchpadButtonCommon4 = new OASLaunchpadButtonCommon();

        System.assert(launchpadButtonCommon1.equals(launchpadButtonCommon2));
        System.assert(launchpadButtonCommon3.equals(launchpadButtonCommon4));
        System.assertEquals(launchpadButtonCommon1.hashCode(), launchpadButtonCommon2.hashCode());
        System.assertEquals(launchpadButtonCommon3.hashCode(), launchpadButtonCommon4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonCommon launchpadButtonCommon = new OASLaunchpadButtonCommon();
        Map<String, String> propertymappings = launchpadButtonCommon.getPropertyMappings();
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