@isTest
private class OASLaunchpadContentImageAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = launchpadContentImageAllOf1;
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf3 = new OASLaunchpadContentImageAllOf();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf4 = launchpadContentImageAllOf3;

        System.assert(launchpadContentImageAllOf1.equals(launchpadContentImageAllOf2));
        System.assert(launchpadContentImageAllOf2.equals(launchpadContentImageAllOf1));
        System.assert(launchpadContentImageAllOf1.equals(launchpadContentImageAllOf1));
        System.assert(launchpadContentImageAllOf3.equals(launchpadContentImageAllOf4));
        System.assert(launchpadContentImageAllOf4.equals(launchpadContentImageAllOf3));
        System.assert(launchpadContentImageAllOf3.equals(launchpadContentImageAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf3 = new OASLaunchpadContentImageAllOf();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf4 = new OASLaunchpadContentImageAllOf();

        System.assert(launchpadContentImageAllOf1.equals(launchpadContentImageAllOf2));
        System.assert(launchpadContentImageAllOf2.equals(launchpadContentImageAllOf1));
        System.assert(launchpadContentImageAllOf3.equals(launchpadContentImageAllOf4));
        System.assert(launchpadContentImageAllOf4.equals(launchpadContentImageAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = new OASLaunchpadContentImageAllOf();

        System.assertEquals(false, launchpadContentImageAllOf1.equals('foo'));
        System.assertEquals(false, launchpadContentImageAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = new OASLaunchpadContentImageAllOf();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf3;

        System.assertEquals(false, launchpadContentImageAllOf1.equals(launchpadContentImageAllOf3));
        System.assertEquals(false, launchpadContentImageAllOf2.equals(launchpadContentImageAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = new OASLaunchpadContentImageAllOf();

        System.assertEquals(launchpadContentImageAllOf1.hashCode(), launchpadContentImageAllOf1.hashCode());
        System.assertEquals(launchpadContentImageAllOf2.hashCode(), launchpadContentImageAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf1 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf2 = OASLaunchpadContentImageAllOf.getExample();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf3 = new OASLaunchpadContentImageAllOf();
        OASLaunchpadContentImageAllOf launchpadContentImageAllOf4 = new OASLaunchpadContentImageAllOf();

        System.assert(launchpadContentImageAllOf1.equals(launchpadContentImageAllOf2));
        System.assert(launchpadContentImageAllOf3.equals(launchpadContentImageAllOf4));
        System.assertEquals(launchpadContentImageAllOf1.hashCode(), launchpadContentImageAllOf2.hashCode());
        System.assertEquals(launchpadContentImageAllOf3.hashCode(), launchpadContentImageAllOf4.hashCode());
    }
}