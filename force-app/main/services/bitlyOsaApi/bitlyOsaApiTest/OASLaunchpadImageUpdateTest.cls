@isTest
private class OASLaunchpadImageUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = launchpadImageUpdate1;
        OASLaunchpadImageUpdate launchpadImageUpdate3 = new OASLaunchpadImageUpdate();
        OASLaunchpadImageUpdate launchpadImageUpdate4 = launchpadImageUpdate3;

        System.assert(launchpadImageUpdate1.equals(launchpadImageUpdate2));
        System.assert(launchpadImageUpdate2.equals(launchpadImageUpdate1));
        System.assert(launchpadImageUpdate1.equals(launchpadImageUpdate1));
        System.assert(launchpadImageUpdate3.equals(launchpadImageUpdate4));
        System.assert(launchpadImageUpdate4.equals(launchpadImageUpdate3));
        System.assert(launchpadImageUpdate3.equals(launchpadImageUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate3 = new OASLaunchpadImageUpdate();
        OASLaunchpadImageUpdate launchpadImageUpdate4 = new OASLaunchpadImageUpdate();

        System.assert(launchpadImageUpdate1.equals(launchpadImageUpdate2));
        System.assert(launchpadImageUpdate2.equals(launchpadImageUpdate1));
        System.assert(launchpadImageUpdate3.equals(launchpadImageUpdate4));
        System.assert(launchpadImageUpdate4.equals(launchpadImageUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = new OASLaunchpadImageUpdate();

        System.assertEquals(false, launchpadImageUpdate1.equals('foo'));
        System.assertEquals(false, launchpadImageUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = new OASLaunchpadImageUpdate();
        OASLaunchpadImageUpdate launchpadImageUpdate3;

        System.assertEquals(false, launchpadImageUpdate1.equals(launchpadImageUpdate3));
        System.assertEquals(false, launchpadImageUpdate2.equals(launchpadImageUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = new OASLaunchpadImageUpdate();

        System.assertEquals(launchpadImageUpdate1.hashCode(), launchpadImageUpdate1.hashCode());
        System.assertEquals(launchpadImageUpdate2.hashCode(), launchpadImageUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImageUpdate launchpadImageUpdate1 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate2 = OASLaunchpadImageUpdate.getExample();
        OASLaunchpadImageUpdate launchpadImageUpdate3 = new OASLaunchpadImageUpdate();
        OASLaunchpadImageUpdate launchpadImageUpdate4 = new OASLaunchpadImageUpdate();

        System.assert(launchpadImageUpdate1.equals(launchpadImageUpdate2));
        System.assert(launchpadImageUpdate3.equals(launchpadImageUpdate4));
        System.assertEquals(launchpadImageUpdate1.hashCode(), launchpadImageUpdate2.hashCode());
        System.assertEquals(launchpadImageUpdate3.hashCode(), launchpadImageUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadImageUpdate launchpadImageUpdate = new OASLaunchpadImageUpdate();
        Map<String, String> propertymappings = launchpadImageUpdate.getPropertyMappings();
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
    }
}