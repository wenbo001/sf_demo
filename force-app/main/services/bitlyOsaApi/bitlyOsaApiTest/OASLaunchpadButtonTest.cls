@isTest
private class OASLaunchpadButtonTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = launchpadButton1;
        OASLaunchpadButton launchpadButton3 = new OASLaunchpadButton();
        OASLaunchpadButton launchpadButton4 = launchpadButton3;

        System.assert(launchpadButton1.equals(launchpadButton2));
        System.assert(launchpadButton2.equals(launchpadButton1));
        System.assert(launchpadButton1.equals(launchpadButton1));
        System.assert(launchpadButton3.equals(launchpadButton4));
        System.assert(launchpadButton4.equals(launchpadButton3));
        System.assert(launchpadButton3.equals(launchpadButton3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton3 = new OASLaunchpadButton();
        OASLaunchpadButton launchpadButton4 = new OASLaunchpadButton();

        System.assert(launchpadButton1.equals(launchpadButton2));
        System.assert(launchpadButton2.equals(launchpadButton1));
        System.assert(launchpadButton3.equals(launchpadButton4));
        System.assert(launchpadButton4.equals(launchpadButton3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = new OASLaunchpadButton();

        System.assertEquals(false, launchpadButton1.equals('foo'));
        System.assertEquals(false, launchpadButton2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = new OASLaunchpadButton();
        OASLaunchpadButton launchpadButton3;

        System.assertEquals(false, launchpadButton1.equals(launchpadButton3));
        System.assertEquals(false, launchpadButton2.equals(launchpadButton3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = new OASLaunchpadButton();

        System.assertEquals(launchpadButton1.hashCode(), launchpadButton1.hashCode());
        System.assertEquals(launchpadButton2.hashCode(), launchpadButton2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButton launchpadButton1 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton2 = OASLaunchpadButton.getExample();
        OASLaunchpadButton launchpadButton3 = new OASLaunchpadButton();
        OASLaunchpadButton launchpadButton4 = new OASLaunchpadButton();

        System.assert(launchpadButton1.equals(launchpadButton2));
        System.assert(launchpadButton3.equals(launchpadButton4));
        System.assertEquals(launchpadButton1.hashCode(), launchpadButton2.hashCode());
        System.assertEquals(launchpadButton3.hashCode(), launchpadButton4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButton launchpadButton = new OASLaunchpadButton();
        Map<String, String> propertymappings = launchpadButton.getPropertyMappings();
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('buttonId', propertymappings.get('button_id'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
        System.assertEquals('scheduleStart', propertymappings.get('schedule_start'));
        System.assertEquals('scheduleEnd', propertymappings.get('schedule_end'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
        System.assertEquals('isSample', propertymappings.get('is_sample'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }
}