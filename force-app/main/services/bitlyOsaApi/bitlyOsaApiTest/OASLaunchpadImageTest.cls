@isTest
private class OASLaunchpadImageTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = launchpadImage1;
        OASLaunchpadImage launchpadImage3 = new OASLaunchpadImage();
        OASLaunchpadImage launchpadImage4 = launchpadImage3;

        System.assert(launchpadImage1.equals(launchpadImage2));
        System.assert(launchpadImage2.equals(launchpadImage1));
        System.assert(launchpadImage1.equals(launchpadImage1));
        System.assert(launchpadImage3.equals(launchpadImage4));
        System.assert(launchpadImage4.equals(launchpadImage3));
        System.assert(launchpadImage3.equals(launchpadImage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage3 = new OASLaunchpadImage();
        OASLaunchpadImage launchpadImage4 = new OASLaunchpadImage();

        System.assert(launchpadImage1.equals(launchpadImage2));
        System.assert(launchpadImage2.equals(launchpadImage1));
        System.assert(launchpadImage3.equals(launchpadImage4));
        System.assert(launchpadImage4.equals(launchpadImage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = new OASLaunchpadImage();

        System.assertEquals(false, launchpadImage1.equals('foo'));
        System.assertEquals(false, launchpadImage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = new OASLaunchpadImage();
        OASLaunchpadImage launchpadImage3;

        System.assertEquals(false, launchpadImage1.equals(launchpadImage3));
        System.assertEquals(false, launchpadImage2.equals(launchpadImage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = new OASLaunchpadImage();

        System.assertEquals(launchpadImage1.hashCode(), launchpadImage1.hashCode());
        System.assertEquals(launchpadImage2.hashCode(), launchpadImage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImage launchpadImage1 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage2 = OASLaunchpadImage.getExample();
        OASLaunchpadImage launchpadImage3 = new OASLaunchpadImage();
        OASLaunchpadImage launchpadImage4 = new OASLaunchpadImage();

        System.assert(launchpadImage1.equals(launchpadImage2));
        System.assert(launchpadImage3.equals(launchpadImage4));
        System.assertEquals(launchpadImage1.hashCode(), launchpadImage2.hashCode());
        System.assertEquals(launchpadImage3.hashCode(), launchpadImage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadImage launchpadImage = new OASLaunchpadImage();
        Map<String, String> propertymappings = launchpadImage.getPropertyMappings();
        System.assertEquals('imageUse', propertymappings.get('image_use'));
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
    }
}