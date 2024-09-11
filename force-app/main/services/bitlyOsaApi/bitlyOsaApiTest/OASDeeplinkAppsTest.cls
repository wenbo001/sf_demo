@isTest
private class OASDeeplinkAppsTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = deeplinkApps1;
        OASDeeplinkApps deeplinkApps3 = new OASDeeplinkApps();
        OASDeeplinkApps deeplinkApps4 = deeplinkApps3;

        System.assert(deeplinkApps1.equals(deeplinkApps2));
        System.assert(deeplinkApps2.equals(deeplinkApps1));
        System.assert(deeplinkApps1.equals(deeplinkApps1));
        System.assert(deeplinkApps3.equals(deeplinkApps4));
        System.assert(deeplinkApps4.equals(deeplinkApps3));
        System.assert(deeplinkApps3.equals(deeplinkApps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps3 = new OASDeeplinkApps();
        OASDeeplinkApps deeplinkApps4 = new OASDeeplinkApps();

        System.assert(deeplinkApps1.equals(deeplinkApps2));
        System.assert(deeplinkApps2.equals(deeplinkApps1));
        System.assert(deeplinkApps3.equals(deeplinkApps4));
        System.assert(deeplinkApps4.equals(deeplinkApps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = new OASDeeplinkApps();

        System.assertEquals(false, deeplinkApps1.equals('foo'));
        System.assertEquals(false, deeplinkApps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = new OASDeeplinkApps();
        OASDeeplinkApps deeplinkApps3;

        System.assertEquals(false, deeplinkApps1.equals(deeplinkApps3));
        System.assertEquals(false, deeplinkApps2.equals(deeplinkApps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = new OASDeeplinkApps();

        System.assertEquals(deeplinkApps1.hashCode(), deeplinkApps1.hashCode());
        System.assertEquals(deeplinkApps2.hashCode(), deeplinkApps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkApps deeplinkApps1 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps2 = OASDeeplinkApps.getExample();
        OASDeeplinkApps deeplinkApps3 = new OASDeeplinkApps();
        OASDeeplinkApps deeplinkApps4 = new OASDeeplinkApps();

        System.assert(deeplinkApps1.equals(deeplinkApps2));
        System.assert(deeplinkApps3.equals(deeplinkApps4));
        System.assertEquals(deeplinkApps1.hashCode(), deeplinkApps2.hashCode());
        System.assertEquals(deeplinkApps3.hashCode(), deeplinkApps4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeeplinkApps deeplinkApps = new OASDeeplinkApps();
        System.assertEquals(new List<OASDeeplinkApp>(), deeplinkApps.apps);
    }
}