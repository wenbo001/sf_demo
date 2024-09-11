@isTest
private class OASLaunchpadContentImageShortenURLDaTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = launchpadContentImageShortenURLData1;
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData3 = new OASLaunchpadContentImageShortenURLDa();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData4 = launchpadContentImageShortenURLData3;

        System.assert(launchpadContentImageShortenURLData1.equals(launchpadContentImageShortenURLData2));
        System.assert(launchpadContentImageShortenURLData2.equals(launchpadContentImageShortenURLData1));
        System.assert(launchpadContentImageShortenURLData1.equals(launchpadContentImageShortenURLData1));
        System.assert(launchpadContentImageShortenURLData3.equals(launchpadContentImageShortenURLData4));
        System.assert(launchpadContentImageShortenURLData4.equals(launchpadContentImageShortenURLData3));
        System.assert(launchpadContentImageShortenURLData3.equals(launchpadContentImageShortenURLData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData3 = new OASLaunchpadContentImageShortenURLDa();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData4 = new OASLaunchpadContentImageShortenURLDa();

        System.assert(launchpadContentImageShortenURLData1.equals(launchpadContentImageShortenURLData2));
        System.assert(launchpadContentImageShortenURLData2.equals(launchpadContentImageShortenURLData1));
        System.assert(launchpadContentImageShortenURLData3.equals(launchpadContentImageShortenURLData4));
        System.assert(launchpadContentImageShortenURLData4.equals(launchpadContentImageShortenURLData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = new OASLaunchpadContentImageShortenURLDa();

        System.assertEquals(false, launchpadContentImageShortenURLData1.equals('foo'));
        System.assertEquals(false, launchpadContentImageShortenURLData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = new OASLaunchpadContentImageShortenURLDa();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData3;

        System.assertEquals(false, launchpadContentImageShortenURLData1.equals(launchpadContentImageShortenURLData3));
        System.assertEquals(false, launchpadContentImageShortenURLData2.equals(launchpadContentImageShortenURLData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = new OASLaunchpadContentImageShortenURLDa();

        System.assertEquals(launchpadContentImageShortenURLData1.hashCode(), launchpadContentImageShortenURLData1.hashCode());
        System.assertEquals(launchpadContentImageShortenURLData2.hashCode(), launchpadContentImageShortenURLData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData1 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData2 = OASLaunchpadContentImageShortenURLDa.getExample();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData3 = new OASLaunchpadContentImageShortenURLDa();
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData4 = new OASLaunchpadContentImageShortenURLDa();

        System.assert(launchpadContentImageShortenURLData1.equals(launchpadContentImageShortenURLData2));
        System.assert(launchpadContentImageShortenURLData3.equals(launchpadContentImageShortenURLData4));
        System.assertEquals(launchpadContentImageShortenURLData1.hashCode(), launchpadContentImageShortenURLData2.hashCode());
        System.assertEquals(launchpadContentImageShortenURLData3.hashCode(), launchpadContentImageShortenURLData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadContentImageShortenURLDa launchpadContentImageShortenURLData = new OASLaunchpadContentImageShortenURLDa();
        Map<String, String> propertymappings = launchpadContentImageShortenURLData.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }
}