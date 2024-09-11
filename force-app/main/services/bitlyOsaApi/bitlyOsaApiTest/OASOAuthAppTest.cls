@isTest
private class OASOAuthAppTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = oauthApp1;
        OASOAuthApp oauthApp3 = new OASOAuthApp();
        OASOAuthApp oauthApp4 = oauthApp3;

        System.assert(oauthApp1.equals(oauthApp2));
        System.assert(oauthApp2.equals(oauthApp1));
        System.assert(oauthApp1.equals(oauthApp1));
        System.assert(oauthApp3.equals(oauthApp4));
        System.assert(oauthApp4.equals(oauthApp3));
        System.assert(oauthApp3.equals(oauthApp3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp3 = new OASOAuthApp();
        OASOAuthApp oauthApp4 = new OASOAuthApp();

        System.assert(oauthApp1.equals(oauthApp2));
        System.assert(oauthApp2.equals(oauthApp1));
        System.assert(oauthApp3.equals(oauthApp4));
        System.assert(oauthApp4.equals(oauthApp3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = new OASOAuthApp();

        System.assertEquals(false, oauthApp1.equals('foo'));
        System.assertEquals(false, oauthApp2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = new OASOAuthApp();
        OASOAuthApp oauthApp3;

        System.assertEquals(false, oauthApp1.equals(oauthApp3));
        System.assertEquals(false, oauthApp2.equals(oauthApp3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = new OASOAuthApp();

        System.assertEquals(oauthApp1.hashCode(), oauthApp1.hashCode());
        System.assertEquals(oauthApp2.hashCode(), oauthApp2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthApp oauthApp1 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp2 = OASOAuthApp.getExample();
        OASOAuthApp oauthApp3 = new OASOAuthApp();
        OASOAuthApp oauthApp4 = new OASOAuthApp();

        System.assert(oauthApp1.equals(oauthApp2));
        System.assert(oauthApp3.equals(oauthApp4));
        System.assertEquals(oauthApp1.hashCode(), oauthApp2.hashCode());
        System.assertEquals(oauthApp3.hashCode(), oauthApp4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthApp oauthApp = new OASOAuthApp();
        Map<String, String> propertymappings = oauthApp.getPropertyMappings();
        System.assertEquals('clientId', propertymappings.get('client_id'));
    }
}