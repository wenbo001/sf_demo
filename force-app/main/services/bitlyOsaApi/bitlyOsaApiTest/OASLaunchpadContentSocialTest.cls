@isTest
private class OASLaunchpadContentSocialTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = launchpadContentSocial1;
        OASLaunchpadContentSocial launchpadContentSocial3 = new OASLaunchpadContentSocial();
        OASLaunchpadContentSocial launchpadContentSocial4 = launchpadContentSocial3;

        System.assert(launchpadContentSocial1.equals(launchpadContentSocial2));
        System.assert(launchpadContentSocial2.equals(launchpadContentSocial1));
        System.assert(launchpadContentSocial1.equals(launchpadContentSocial1));
        System.assert(launchpadContentSocial3.equals(launchpadContentSocial4));
        System.assert(launchpadContentSocial4.equals(launchpadContentSocial3));
        System.assert(launchpadContentSocial3.equals(launchpadContentSocial3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial3 = new OASLaunchpadContentSocial();
        OASLaunchpadContentSocial launchpadContentSocial4 = new OASLaunchpadContentSocial();

        System.assert(launchpadContentSocial1.equals(launchpadContentSocial2));
        System.assert(launchpadContentSocial2.equals(launchpadContentSocial1));
        System.assert(launchpadContentSocial3.equals(launchpadContentSocial4));
        System.assert(launchpadContentSocial4.equals(launchpadContentSocial3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = new OASLaunchpadContentSocial();

        System.assertEquals(false, launchpadContentSocial1.equals('foo'));
        System.assertEquals(false, launchpadContentSocial2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = new OASLaunchpadContentSocial();
        OASLaunchpadContentSocial launchpadContentSocial3;

        System.assertEquals(false, launchpadContentSocial1.equals(launchpadContentSocial3));
        System.assertEquals(false, launchpadContentSocial2.equals(launchpadContentSocial3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = new OASLaunchpadContentSocial();

        System.assertEquals(launchpadContentSocial1.hashCode(), launchpadContentSocial1.hashCode());
        System.assertEquals(launchpadContentSocial2.hashCode(), launchpadContentSocial2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentSocial launchpadContentSocial1 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial2 = OASLaunchpadContentSocial.getExample();
        OASLaunchpadContentSocial launchpadContentSocial3 = new OASLaunchpadContentSocial();
        OASLaunchpadContentSocial launchpadContentSocial4 = new OASLaunchpadContentSocial();

        System.assert(launchpadContentSocial1.equals(launchpadContentSocial2));
        System.assert(launchpadContentSocial3.equals(launchpadContentSocial4));
        System.assertEquals(launchpadContentSocial1.hashCode(), launchpadContentSocial2.hashCode());
        System.assertEquals(launchpadContentSocial3.hashCode(), launchpadContentSocial4.hashCode());
    }
}