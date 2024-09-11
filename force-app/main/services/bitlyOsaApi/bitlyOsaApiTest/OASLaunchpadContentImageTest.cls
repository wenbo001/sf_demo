@isTest
private class OASLaunchpadContentImageTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = launchpadContentImage1;
        OASLaunchpadContentImage launchpadContentImage3 = new OASLaunchpadContentImage();
        OASLaunchpadContentImage launchpadContentImage4 = launchpadContentImage3;

        System.assert(launchpadContentImage1.equals(launchpadContentImage2));
        System.assert(launchpadContentImage2.equals(launchpadContentImage1));
        System.assert(launchpadContentImage1.equals(launchpadContentImage1));
        System.assert(launchpadContentImage3.equals(launchpadContentImage4));
        System.assert(launchpadContentImage4.equals(launchpadContentImage3));
        System.assert(launchpadContentImage3.equals(launchpadContentImage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage3 = new OASLaunchpadContentImage();
        OASLaunchpadContentImage launchpadContentImage4 = new OASLaunchpadContentImage();

        System.assert(launchpadContentImage1.equals(launchpadContentImage2));
        System.assert(launchpadContentImage2.equals(launchpadContentImage1));
        System.assert(launchpadContentImage3.equals(launchpadContentImage4));
        System.assert(launchpadContentImage4.equals(launchpadContentImage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = new OASLaunchpadContentImage();

        System.assertEquals(false, launchpadContentImage1.equals('foo'));
        System.assertEquals(false, launchpadContentImage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = new OASLaunchpadContentImage();
        OASLaunchpadContentImage launchpadContentImage3;

        System.assertEquals(false, launchpadContentImage1.equals(launchpadContentImage3));
        System.assertEquals(false, launchpadContentImage2.equals(launchpadContentImage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = new OASLaunchpadContentImage();

        System.assertEquals(launchpadContentImage1.hashCode(), launchpadContentImage1.hashCode());
        System.assertEquals(launchpadContentImage2.hashCode(), launchpadContentImage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentImage launchpadContentImage1 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage2 = OASLaunchpadContentImage.getExample();
        OASLaunchpadContentImage launchpadContentImage3 = new OASLaunchpadContentImage();
        OASLaunchpadContentImage launchpadContentImage4 = new OASLaunchpadContentImage();

        System.assert(launchpadContentImage1.equals(launchpadContentImage2));
        System.assert(launchpadContentImage3.equals(launchpadContentImage4));
        System.assertEquals(launchpadContentImage1.hashCode(), launchpadContentImage2.hashCode());
        System.assertEquals(launchpadContentImage3.hashCode(), launchpadContentImage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentImage launchpadContentImage = new OASLaunchpadContentImage();
        Map<String, String> propertymappings = launchpadContentImage.getPropertyMappings();
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