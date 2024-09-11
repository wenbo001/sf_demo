@isTest
private class OASOAuthAppFullTest {
    @isTest
    private static void equalsSameInstance() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = oauthAppFull1;
        OASOAuthAppFull oauthAppFull3 = new OASOAuthAppFull();
        OASOAuthAppFull oauthAppFull4 = oauthAppFull3;

        System.assert(oauthAppFull1.equals(oauthAppFull2));
        System.assert(oauthAppFull2.equals(oauthAppFull1));
        System.assert(oauthAppFull1.equals(oauthAppFull1));
        System.assert(oauthAppFull3.equals(oauthAppFull4));
        System.assert(oauthAppFull4.equals(oauthAppFull3));
        System.assert(oauthAppFull3.equals(oauthAppFull3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull3 = new OASOAuthAppFull();
        OASOAuthAppFull oauthAppFull4 = new OASOAuthAppFull();

        System.assert(oauthAppFull1.equals(oauthAppFull2));
        System.assert(oauthAppFull2.equals(oauthAppFull1));
        System.assert(oauthAppFull3.equals(oauthAppFull4));
        System.assert(oauthAppFull4.equals(oauthAppFull3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = new OASOAuthAppFull();

        System.assertEquals(false, oauthAppFull1.equals('foo'));
        System.assertEquals(false, oauthAppFull2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = new OASOAuthAppFull();
        OASOAuthAppFull oauthAppFull3;

        System.assertEquals(false, oauthAppFull1.equals(oauthAppFull3));
        System.assertEquals(false, oauthAppFull2.equals(oauthAppFull3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = new OASOAuthAppFull();

        System.assertEquals(oauthAppFull1.hashCode(), oauthAppFull1.hashCode());
        System.assertEquals(oauthAppFull2.hashCode(), oauthAppFull2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOAuthAppFull oauthAppFull1 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull2 = OASOAuthAppFull.getExample();
        OASOAuthAppFull oauthAppFull3 = new OASOAuthAppFull();
        OASOAuthAppFull oauthAppFull4 = new OASOAuthAppFull();

        System.assert(oauthAppFull1.equals(oauthAppFull2));
        System.assert(oauthAppFull3.equals(oauthAppFull4));
        System.assertEquals(oauthAppFull1.hashCode(), oauthAppFull2.hashCode());
        System.assertEquals(oauthAppFull3.hashCode(), oauthAppFull4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOAuthAppFull oauthAppFull = new OASOAuthAppFull();
        Map<String, String> propertymappings = oauthAppFull.getPropertyMappings();
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('clientSecret', propertymappings.get('client_secret'));
        System.assertEquals('redirectUris', propertymappings.get('redirect_uris'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOAuthAppFull oauthAppFull = new OASOAuthAppFull();
        System.assertEquals(new List<String>(), oauthAppFull.redirectUris);
        System.assertEquals(null, oauthAppFull.name);
        System.assertEquals(null, oauthAppFull.clientId);
        System.assertEquals(null, oauthAppFull.clientSecret);
        System.assertEquals(null, oauthAppFull.description);
        System.assertEquals(null, oauthAppFull.link);
    }
}