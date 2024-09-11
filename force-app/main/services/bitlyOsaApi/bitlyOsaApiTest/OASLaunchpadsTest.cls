@isTest
private class OASLaunchpadsTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = launchpads1;
        OASLaunchpads launchpads3 = new OASLaunchpads();
        OASLaunchpads launchpads4 = launchpads3;

        System.assert(launchpads1.equals(launchpads2));
        System.assert(launchpads2.equals(launchpads1));
        System.assert(launchpads1.equals(launchpads1));
        System.assert(launchpads3.equals(launchpads4));
        System.assert(launchpads4.equals(launchpads3));
        System.assert(launchpads3.equals(launchpads3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = OASLaunchpads.getExample();
        OASLaunchpads launchpads3 = new OASLaunchpads();
        OASLaunchpads launchpads4 = new OASLaunchpads();

        System.assert(launchpads1.equals(launchpads2));
        System.assert(launchpads2.equals(launchpads1));
        System.assert(launchpads3.equals(launchpads4));
        System.assert(launchpads4.equals(launchpads3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = new OASLaunchpads();

        System.assertEquals(false, launchpads1.equals('foo'));
        System.assertEquals(false, launchpads2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = new OASLaunchpads();
        OASLaunchpads launchpads3;

        System.assertEquals(false, launchpads1.equals(launchpads3));
        System.assertEquals(false, launchpads2.equals(launchpads3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = new OASLaunchpads();

        System.assertEquals(launchpads1.hashCode(), launchpads1.hashCode());
        System.assertEquals(launchpads2.hashCode(), launchpads2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpads launchpads1 = OASLaunchpads.getExample();
        OASLaunchpads launchpads2 = OASLaunchpads.getExample();
        OASLaunchpads launchpads3 = new OASLaunchpads();
        OASLaunchpads launchpads4 = new OASLaunchpads();

        System.assert(launchpads1.equals(launchpads2));
        System.assert(launchpads3.equals(launchpads4));
        System.assertEquals(launchpads1.hashCode(), launchpads2.hashCode());
        System.assertEquals(launchpads3.hashCode(), launchpads4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLaunchpads launchpads = new OASLaunchpads();
        System.assertEquals(new List<OASLaunchpad>(), launchpads.launchpads);
    }
}