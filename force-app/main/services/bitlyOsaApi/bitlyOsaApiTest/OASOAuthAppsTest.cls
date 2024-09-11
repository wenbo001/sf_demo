@isTest
private class OASOAuthAppsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = oauthApps1;
        OASOAuthApps oauthApps3 = new OASOAuthApps();
        OASOAuthApps oauthApps4 = oauthApps3;

        System.assert(oauthApps1.equals(oauthApps2));
        System.assert(oauthApps2.equals(oauthApps1));
        System.assert(oauthApps1.equals(oauthApps1));
        System.assert(oauthApps3.equals(oauthApps4));
        System.assert(oauthApps4.equals(oauthApps3));
        System.assert(oauthApps3.equals(oauthApps3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps3 = new OASOAuthApps();
        OASOAuthApps oauthApps4 = new OASOAuthApps();

        System.assert(oauthApps1.equals(oauthApps2));
        System.assert(oauthApps2.equals(oauthApps1));
        System.assert(oauthApps3.equals(oauthApps4));
        System.assert(oauthApps4.equals(oauthApps3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = new OASOAuthApps();

        System.assertEquals(false, oauthApps1.equals('foo'));
        System.assertEquals(false, oauthApps2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = new OASOAuthApps();
        OASOAuthApps oauthApps3;

        System.assertEquals(false, oauthApps1.equals(oauthApps3));
        System.assertEquals(false, oauthApps2.equals(oauthApps3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = new OASOAuthApps();

        System.assertEquals(oauthApps1.hashCode(), oauthApps1.hashCode());
        System.assertEquals(oauthApps2.hashCode(), oauthApps2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthApps oauthApps1 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps2 = OASOAuthApps.getExample();
        OASOAuthApps oauthApps3 = new OASOAuthApps();
        OASOAuthApps oauthApps4 = new OASOAuthApps();

        System.assert(oauthApps1.equals(oauthApps2));
        System.assert(oauthApps3.equals(oauthApps4));
        System.assertEquals(oauthApps1.hashCode(), oauthApps2.hashCode());
        System.assertEquals(oauthApps3.hashCode(), oauthApps4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOAuthApps oauthApps = new OASOAuthApps();
        System.assertEquals(new List<OASOAuthAppFull>(), oauthApps.applications);
    }
}