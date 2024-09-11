@isTest
private class OASPublicOAuthUserTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = publicOAuthUser1;
        OASPublicOAuthUser publicOAuthUser3 = new OASPublicOAuthUser();
        OASPublicOAuthUser publicOAuthUser4 = publicOAuthUser3;

        System.assert(publicOAuthUser1.equals(publicOAuthUser2));
        System.assert(publicOAuthUser2.equals(publicOAuthUser1));
        System.assert(publicOAuthUser1.equals(publicOAuthUser1));
        System.assert(publicOAuthUser3.equals(publicOAuthUser4));
        System.assert(publicOAuthUser4.equals(publicOAuthUser3));
        System.assert(publicOAuthUser3.equals(publicOAuthUser3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser3 = new OASPublicOAuthUser();
        OASPublicOAuthUser publicOAuthUser4 = new OASPublicOAuthUser();

        System.assert(publicOAuthUser1.equals(publicOAuthUser2));
        System.assert(publicOAuthUser2.equals(publicOAuthUser1));
        System.assert(publicOAuthUser3.equals(publicOAuthUser4));
        System.assert(publicOAuthUser4.equals(publicOAuthUser3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = new OASPublicOAuthUser();

        System.assertEquals(false, publicOAuthUser1.equals('foo'));
        System.assertEquals(false, publicOAuthUser2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = new OASPublicOAuthUser();
        OASPublicOAuthUser publicOAuthUser3;

        System.assertEquals(false, publicOAuthUser1.equals(publicOAuthUser3));
        System.assertEquals(false, publicOAuthUser2.equals(publicOAuthUser3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = new OASPublicOAuthUser();

        System.assertEquals(publicOAuthUser1.hashCode(), publicOAuthUser1.hashCode());
        System.assertEquals(publicOAuthUser2.hashCode(), publicOAuthUser2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicOAuthUser publicOAuthUser1 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser2 = OASPublicOAuthUser.getExample();
        OASPublicOAuthUser publicOAuthUser3 = new OASPublicOAuthUser();
        OASPublicOAuthUser publicOAuthUser4 = new OASPublicOAuthUser();

        System.assert(publicOAuthUser1.equals(publicOAuthUser2));
        System.assert(publicOAuthUser3.equals(publicOAuthUser4));
        System.assertEquals(publicOAuthUser1.hashCode(), publicOAuthUser2.hashCode());
        System.assertEquals(publicOAuthUser3.hashCode(), publicOAuthUser4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicOAuthUser publicOAuthUser = new OASPublicOAuthUser();
        Map<String, String> propertymappings = publicOAuthUser.getPropertyMappings();
        System.assertEquals('accessToken', propertymappings.get('Access_Token'));
    }
}