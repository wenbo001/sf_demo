@isTest
private class OASLaunchpadImageUploadTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = launchpadImageUpload1;
        OASLaunchpadImageUpload launchpadImageUpload3 = new OASLaunchpadImageUpload();
        OASLaunchpadImageUpload launchpadImageUpload4 = launchpadImageUpload3;

        System.assert(launchpadImageUpload1.equals(launchpadImageUpload2));
        System.assert(launchpadImageUpload2.equals(launchpadImageUpload1));
        System.assert(launchpadImageUpload1.equals(launchpadImageUpload1));
        System.assert(launchpadImageUpload3.equals(launchpadImageUpload4));
        System.assert(launchpadImageUpload4.equals(launchpadImageUpload3));
        System.assert(launchpadImageUpload3.equals(launchpadImageUpload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload3 = new OASLaunchpadImageUpload();
        OASLaunchpadImageUpload launchpadImageUpload4 = new OASLaunchpadImageUpload();

        System.assert(launchpadImageUpload1.equals(launchpadImageUpload2));
        System.assert(launchpadImageUpload2.equals(launchpadImageUpload1));
        System.assert(launchpadImageUpload3.equals(launchpadImageUpload4));
        System.assert(launchpadImageUpload4.equals(launchpadImageUpload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = new OASLaunchpadImageUpload();

        System.assertEquals(false, launchpadImageUpload1.equals('foo'));
        System.assertEquals(false, launchpadImageUpload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = new OASLaunchpadImageUpload();
        OASLaunchpadImageUpload launchpadImageUpload3;

        System.assertEquals(false, launchpadImageUpload1.equals(launchpadImageUpload3));
        System.assertEquals(false, launchpadImageUpload2.equals(launchpadImageUpload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = new OASLaunchpadImageUpload();

        System.assertEquals(launchpadImageUpload1.hashCode(), launchpadImageUpload1.hashCode());
        System.assertEquals(launchpadImageUpload2.hashCode(), launchpadImageUpload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadImageUpload launchpadImageUpload1 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload2 = OASLaunchpadImageUpload.getExample();
        OASLaunchpadImageUpload launchpadImageUpload3 = new OASLaunchpadImageUpload();
        OASLaunchpadImageUpload launchpadImageUpload4 = new OASLaunchpadImageUpload();

        System.assert(launchpadImageUpload1.equals(launchpadImageUpload2));
        System.assert(launchpadImageUpload3.equals(launchpadImageUpload4));
        System.assertEquals(launchpadImageUpload1.hashCode(), launchpadImageUpload2.hashCode());
        System.assertEquals(launchpadImageUpload3.hashCode(), launchpadImageUpload4.hashCode());
    }
}