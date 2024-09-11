@isTest
private class OASLaunchpadImagesTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = launchpadImages1;
        OASLaunchpadImages launchpadImages3 = new OASLaunchpadImages();
        OASLaunchpadImages launchpadImages4 = launchpadImages3;

        System.assert(launchpadImages1.equals(launchpadImages2));
        System.assert(launchpadImages2.equals(launchpadImages1));
        System.assert(launchpadImages1.equals(launchpadImages1));
        System.assert(launchpadImages3.equals(launchpadImages4));
        System.assert(launchpadImages4.equals(launchpadImages3));
        System.assert(launchpadImages3.equals(launchpadImages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages3 = new OASLaunchpadImages();
        OASLaunchpadImages launchpadImages4 = new OASLaunchpadImages();

        System.assert(launchpadImages1.equals(launchpadImages2));
        System.assert(launchpadImages2.equals(launchpadImages1));
        System.assert(launchpadImages3.equals(launchpadImages4));
        System.assert(launchpadImages4.equals(launchpadImages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = new OASLaunchpadImages();

        System.assertEquals(false, launchpadImages1.equals('foo'));
        System.assertEquals(false, launchpadImages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = new OASLaunchpadImages();
        OASLaunchpadImages launchpadImages3;

        System.assertEquals(false, launchpadImages1.equals(launchpadImages3));
        System.assertEquals(false, launchpadImages2.equals(launchpadImages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = new OASLaunchpadImages();

        System.assertEquals(launchpadImages1.hashCode(), launchpadImages1.hashCode());
        System.assertEquals(launchpadImages2.hashCode(), launchpadImages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImages launchpadImages1 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages2 = OASLaunchpadImages.getExample();
        OASLaunchpadImages launchpadImages3 = new OASLaunchpadImages();
        OASLaunchpadImages launchpadImages4 = new OASLaunchpadImages();

        System.assert(launchpadImages1.equals(launchpadImages2));
        System.assert(launchpadImages3.equals(launchpadImages4));
        System.assertEquals(launchpadImages1.hashCode(), launchpadImages2.hashCode());
        System.assertEquals(launchpadImages3.hashCode(), launchpadImages4.hashCode());
    }
}