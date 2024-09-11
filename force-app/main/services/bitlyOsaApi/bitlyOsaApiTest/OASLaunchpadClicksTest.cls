@isTest
private class OASLaunchpadClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = launchpadClicks1;
        OASLaunchpadClicks launchpadClicks3 = new OASLaunchpadClicks();
        OASLaunchpadClicks launchpadClicks4 = launchpadClicks3;

        System.assert(launchpadClicks1.equals(launchpadClicks2));
        System.assert(launchpadClicks2.equals(launchpadClicks1));
        System.assert(launchpadClicks1.equals(launchpadClicks1));
        System.assert(launchpadClicks3.equals(launchpadClicks4));
        System.assert(launchpadClicks4.equals(launchpadClicks3));
        System.assert(launchpadClicks3.equals(launchpadClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks3 = new OASLaunchpadClicks();
        OASLaunchpadClicks launchpadClicks4 = new OASLaunchpadClicks();

        System.assert(launchpadClicks1.equals(launchpadClicks2));
        System.assert(launchpadClicks2.equals(launchpadClicks1));
        System.assert(launchpadClicks3.equals(launchpadClicks4));
        System.assert(launchpadClicks4.equals(launchpadClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = new OASLaunchpadClicks();

        System.assertEquals(false, launchpadClicks1.equals('foo'));
        System.assertEquals(false, launchpadClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = new OASLaunchpadClicks();
        OASLaunchpadClicks launchpadClicks3;

        System.assertEquals(false, launchpadClicks1.equals(launchpadClicks3));
        System.assertEquals(false, launchpadClicks2.equals(launchpadClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = new OASLaunchpadClicks();

        System.assertEquals(launchpadClicks1.hashCode(), launchpadClicks1.hashCode());
        System.assertEquals(launchpadClicks2.hashCode(), launchpadClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadClicks launchpadClicks1 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks2 = OASLaunchpadClicks.getExample();
        OASLaunchpadClicks launchpadClicks3 = new OASLaunchpadClicks();
        OASLaunchpadClicks launchpadClicks4 = new OASLaunchpadClicks();

        System.assert(launchpadClicks1.equals(launchpadClicks2));
        System.assert(launchpadClicks3.equals(launchpadClicks4));
        System.assertEquals(launchpadClicks1.hashCode(), launchpadClicks2.hashCode());
        System.assertEquals(launchpadClicks3.hashCode(), launchpadClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadClicks launchpadClicks = new OASLaunchpadClicks();
        Map<String, String> propertymappings = launchpadClicks.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}