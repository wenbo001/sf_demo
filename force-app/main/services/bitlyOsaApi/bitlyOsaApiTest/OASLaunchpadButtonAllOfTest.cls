@isTest
private class OASLaunchpadButtonAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = launchpadButtonAllOf1;
        OASLaunchpadButtonAllOf launchpadButtonAllOf3 = new OASLaunchpadButtonAllOf();
        OASLaunchpadButtonAllOf launchpadButtonAllOf4 = launchpadButtonAllOf3;

        System.assert(launchpadButtonAllOf1.equals(launchpadButtonAllOf2));
        System.assert(launchpadButtonAllOf2.equals(launchpadButtonAllOf1));
        System.assert(launchpadButtonAllOf1.equals(launchpadButtonAllOf1));
        System.assert(launchpadButtonAllOf3.equals(launchpadButtonAllOf4));
        System.assert(launchpadButtonAllOf4.equals(launchpadButtonAllOf3));
        System.assert(launchpadButtonAllOf3.equals(launchpadButtonAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf3 = new OASLaunchpadButtonAllOf();
        OASLaunchpadButtonAllOf launchpadButtonAllOf4 = new OASLaunchpadButtonAllOf();

        System.assert(launchpadButtonAllOf1.equals(launchpadButtonAllOf2));
        System.assert(launchpadButtonAllOf2.equals(launchpadButtonAllOf1));
        System.assert(launchpadButtonAllOf3.equals(launchpadButtonAllOf4));
        System.assert(launchpadButtonAllOf4.equals(launchpadButtonAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = new OASLaunchpadButtonAllOf();

        System.assertEquals(false, launchpadButtonAllOf1.equals('foo'));
        System.assertEquals(false, launchpadButtonAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = new OASLaunchpadButtonAllOf();
        OASLaunchpadButtonAllOf launchpadButtonAllOf3;

        System.assertEquals(false, launchpadButtonAllOf1.equals(launchpadButtonAllOf3));
        System.assertEquals(false, launchpadButtonAllOf2.equals(launchpadButtonAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = new OASLaunchpadButtonAllOf();

        System.assertEquals(launchpadButtonAllOf1.hashCode(), launchpadButtonAllOf1.hashCode());
        System.assertEquals(launchpadButtonAllOf2.hashCode(), launchpadButtonAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf1 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf2 = OASLaunchpadButtonAllOf.getExample();
        OASLaunchpadButtonAllOf launchpadButtonAllOf3 = new OASLaunchpadButtonAllOf();
        OASLaunchpadButtonAllOf launchpadButtonAllOf4 = new OASLaunchpadButtonAllOf();

        System.assert(launchpadButtonAllOf1.equals(launchpadButtonAllOf2));
        System.assert(launchpadButtonAllOf3.equals(launchpadButtonAllOf4));
        System.assertEquals(launchpadButtonAllOf1.hashCode(), launchpadButtonAllOf2.hashCode());
        System.assertEquals(launchpadButtonAllOf3.hashCode(), launchpadButtonAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonAllOf launchpadButtonAllOf = new OASLaunchpadButtonAllOf();
        Map<String, String> propertymappings = launchpadButtonAllOf.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }
}