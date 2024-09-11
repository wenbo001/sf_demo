@isTest
private class OASOAuthAppWithOwnerLoginTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = oauthAppWithOwnerLogin1;
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin3 = new OASOAuthAppWithOwnerLogin();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin4 = oauthAppWithOwnerLogin3;

        System.assert(oauthAppWithOwnerLogin1.equals(oauthAppWithOwnerLogin2));
        System.assert(oauthAppWithOwnerLogin2.equals(oauthAppWithOwnerLogin1));
        System.assert(oauthAppWithOwnerLogin1.equals(oauthAppWithOwnerLogin1));
        System.assert(oauthAppWithOwnerLogin3.equals(oauthAppWithOwnerLogin4));
        System.assert(oauthAppWithOwnerLogin4.equals(oauthAppWithOwnerLogin3));
        System.assert(oauthAppWithOwnerLogin3.equals(oauthAppWithOwnerLogin3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin3 = new OASOAuthAppWithOwnerLogin();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin4 = new OASOAuthAppWithOwnerLogin();

        System.assert(oauthAppWithOwnerLogin1.equals(oauthAppWithOwnerLogin2));
        System.assert(oauthAppWithOwnerLogin2.equals(oauthAppWithOwnerLogin1));
        System.assert(oauthAppWithOwnerLogin3.equals(oauthAppWithOwnerLogin4));
        System.assert(oauthAppWithOwnerLogin4.equals(oauthAppWithOwnerLogin3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = new OASOAuthAppWithOwnerLogin();

        System.assertEquals(false, oauthAppWithOwnerLogin1.equals('foo'));
        System.assertEquals(false, oauthAppWithOwnerLogin2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = new OASOAuthAppWithOwnerLogin();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin3;

        System.assertEquals(false, oauthAppWithOwnerLogin1.equals(oauthAppWithOwnerLogin3));
        System.assertEquals(false, oauthAppWithOwnerLogin2.equals(oauthAppWithOwnerLogin3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = new OASOAuthAppWithOwnerLogin();

        System.assertEquals(oauthAppWithOwnerLogin1.hashCode(), oauthAppWithOwnerLogin1.hashCode());
        System.assertEquals(oauthAppWithOwnerLogin2.hashCode(), oauthAppWithOwnerLogin2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin1 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin2 = OASOAuthAppWithOwnerLogin.getExample();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin3 = new OASOAuthAppWithOwnerLogin();
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin4 = new OASOAuthAppWithOwnerLogin();

        System.assert(oauthAppWithOwnerLogin1.equals(oauthAppWithOwnerLogin2));
        System.assert(oauthAppWithOwnerLogin3.equals(oauthAppWithOwnerLogin4));
        System.assertEquals(oauthAppWithOwnerLogin1.hashCode(), oauthAppWithOwnerLogin2.hashCode());
        System.assertEquals(oauthAppWithOwnerLogin3.hashCode(), oauthAppWithOwnerLogin4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthAppWithOwnerLogin oauthAppWithOwnerLogin = new OASOAuthAppWithOwnerLogin();
        Map<String, String> propertymappings = oauthAppWithOwnerLogin.getPropertyMappings();
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('ownerLogin', propertymappings.get('owner_login'));
    }
}