@isTest
private class OASLaunchpadContainerResponseAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = launchpadContainerResponseAllOf1;
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf3 = new OASLaunchpadContainerResponseAllOf();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf4 = launchpadContainerResponseAllOf3;

        System.assert(launchpadContainerResponseAllOf1.equals(launchpadContainerResponseAllOf2));
        System.assert(launchpadContainerResponseAllOf2.equals(launchpadContainerResponseAllOf1));
        System.assert(launchpadContainerResponseAllOf1.equals(launchpadContainerResponseAllOf1));
        System.assert(launchpadContainerResponseAllOf3.equals(launchpadContainerResponseAllOf4));
        System.assert(launchpadContainerResponseAllOf4.equals(launchpadContainerResponseAllOf3));
        System.assert(launchpadContainerResponseAllOf3.equals(launchpadContainerResponseAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf3 = new OASLaunchpadContainerResponseAllOf();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf4 = new OASLaunchpadContainerResponseAllOf();

        System.assert(launchpadContainerResponseAllOf1.equals(launchpadContainerResponseAllOf2));
        System.assert(launchpadContainerResponseAllOf2.equals(launchpadContainerResponseAllOf1));
        System.assert(launchpadContainerResponseAllOf3.equals(launchpadContainerResponseAllOf4));
        System.assert(launchpadContainerResponseAllOf4.equals(launchpadContainerResponseAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = new OASLaunchpadContainerResponseAllOf();

        System.assertEquals(false, launchpadContainerResponseAllOf1.equals('foo'));
        System.assertEquals(false, launchpadContainerResponseAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = new OASLaunchpadContainerResponseAllOf();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf3;

        System.assertEquals(false, launchpadContainerResponseAllOf1.equals(launchpadContainerResponseAllOf3));
        System.assertEquals(false, launchpadContainerResponseAllOf2.equals(launchpadContainerResponseAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = new OASLaunchpadContainerResponseAllOf();

        System.assertEquals(launchpadContainerResponseAllOf1.hashCode(), launchpadContainerResponseAllOf1.hashCode());
        System.assertEquals(launchpadContainerResponseAllOf2.hashCode(), launchpadContainerResponseAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf1 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf2 = OASLaunchpadContainerResponseAllOf.getExample();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf3 = new OASLaunchpadContainerResponseAllOf();
        OASLaunchpadContainerResponseAllOf launchpadContainerResponseAllOf4 = new OASLaunchpadContainerResponseAllOf();

        System.assert(launchpadContainerResponseAllOf1.equals(launchpadContainerResponseAllOf2));
        System.assert(launchpadContainerResponseAllOf3.equals(launchpadContainerResponseAllOf4));
        System.assertEquals(launchpadContainerResponseAllOf1.hashCode(), launchpadContainerResponseAllOf2.hashCode());
        System.assertEquals(launchpadContainerResponseAllOf3.hashCode(), launchpadContainerResponseAllOf4.hashCode());
    }
}