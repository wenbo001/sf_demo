@isTest
private class OASLaunchpadContentBitlinkRequestConTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = launchpadContentBitlinkRequestContent1;
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent3 = new OASLaunchpadContentBitlinkRequestCon();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent4 = launchpadContentBitlinkRequestContent3;

        System.assert(launchpadContentBitlinkRequestContent1.equals(launchpadContentBitlinkRequestContent2));
        System.assert(launchpadContentBitlinkRequestContent2.equals(launchpadContentBitlinkRequestContent1));
        System.assert(launchpadContentBitlinkRequestContent1.equals(launchpadContentBitlinkRequestContent1));
        System.assert(launchpadContentBitlinkRequestContent3.equals(launchpadContentBitlinkRequestContent4));
        System.assert(launchpadContentBitlinkRequestContent4.equals(launchpadContentBitlinkRequestContent3));
        System.assert(launchpadContentBitlinkRequestContent3.equals(launchpadContentBitlinkRequestContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent3 = new OASLaunchpadContentBitlinkRequestCon();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent4 = new OASLaunchpadContentBitlinkRequestCon();

        System.assert(launchpadContentBitlinkRequestContent1.equals(launchpadContentBitlinkRequestContent2));
        System.assert(launchpadContentBitlinkRequestContent2.equals(launchpadContentBitlinkRequestContent1));
        System.assert(launchpadContentBitlinkRequestContent3.equals(launchpadContentBitlinkRequestContent4));
        System.assert(launchpadContentBitlinkRequestContent4.equals(launchpadContentBitlinkRequestContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = new OASLaunchpadContentBitlinkRequestCon();

        System.assertEquals(false, launchpadContentBitlinkRequestContent1.equals('foo'));
        System.assertEquals(false, launchpadContentBitlinkRequestContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = new OASLaunchpadContentBitlinkRequestCon();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent3;

        System.assertEquals(false, launchpadContentBitlinkRequestContent1.equals(launchpadContentBitlinkRequestContent3));
        System.assertEquals(false, launchpadContentBitlinkRequestContent2.equals(launchpadContentBitlinkRequestContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = new OASLaunchpadContentBitlinkRequestCon();

        System.assertEquals(launchpadContentBitlinkRequestContent1.hashCode(), launchpadContentBitlinkRequestContent1.hashCode());
        System.assertEquals(launchpadContentBitlinkRequestContent2.hashCode(), launchpadContentBitlinkRequestContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent1 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent2 = OASLaunchpadContentBitlinkRequestCon.getExample();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent3 = new OASLaunchpadContentBitlinkRequestCon();
        OASLaunchpadContentBitlinkRequestCon launchpadContentBitlinkRequestContent4 = new OASLaunchpadContentBitlinkRequestCon();

        System.assert(launchpadContentBitlinkRequestContent1.equals(launchpadContentBitlinkRequestContent2));
        System.assert(launchpadContentBitlinkRequestContent3.equals(launchpadContentBitlinkRequestContent4));
        System.assertEquals(launchpadContentBitlinkRequestContent1.hashCode(), launchpadContentBitlinkRequestContent2.hashCode());
        System.assertEquals(launchpadContentBitlinkRequestContent3.hashCode(), launchpadContentBitlinkRequestContent4.hashCode());
    }
}