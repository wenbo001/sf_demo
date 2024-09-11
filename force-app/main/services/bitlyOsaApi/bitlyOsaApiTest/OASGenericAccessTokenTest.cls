@isTest
private class OASGenericAccessTokenTest {
    @isTest
    private static void equalsSameInstance() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = genericAccessToken1;
        OASGenericAccessToken genericAccessToken3 = new OASGenericAccessToken();
        OASGenericAccessToken genericAccessToken4 = genericAccessToken3;

        System.assert(genericAccessToken1.equals(genericAccessToken2));
        System.assert(genericAccessToken2.equals(genericAccessToken1));
        System.assert(genericAccessToken1.equals(genericAccessToken1));
        System.assert(genericAccessToken3.equals(genericAccessToken4));
        System.assert(genericAccessToken4.equals(genericAccessToken3));
        System.assert(genericAccessToken3.equals(genericAccessToken3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken3 = new OASGenericAccessToken();
        OASGenericAccessToken genericAccessToken4 = new OASGenericAccessToken();

        System.assert(genericAccessToken1.equals(genericAccessToken2));
        System.assert(genericAccessToken2.equals(genericAccessToken1));
        System.assert(genericAccessToken3.equals(genericAccessToken4));
        System.assert(genericAccessToken4.equals(genericAccessToken3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = new OASGenericAccessToken();

        System.assertEquals(false, genericAccessToken1.equals('foo'));
        System.assertEquals(false, genericAccessToken2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = new OASGenericAccessToken();
        OASGenericAccessToken genericAccessToken3;

        System.assertEquals(false, genericAccessToken1.equals(genericAccessToken3));
        System.assertEquals(false, genericAccessToken2.equals(genericAccessToken3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = new OASGenericAccessToken();

        System.assertEquals(genericAccessToken1.hashCode(), genericAccessToken1.hashCode());
        System.assertEquals(genericAccessToken2.hashCode(), genericAccessToken2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGenericAccessToken genericAccessToken1 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken2 = OASGenericAccessToken.getExample();
        OASGenericAccessToken genericAccessToken3 = new OASGenericAccessToken();
        OASGenericAccessToken genericAccessToken4 = new OASGenericAccessToken();

        System.assert(genericAccessToken1.equals(genericAccessToken2));
        System.assert(genericAccessToken3.equals(genericAccessToken4));
        System.assertEquals(genericAccessToken1.hashCode(), genericAccessToken2.hashCode());
        System.assertEquals(genericAccessToken3.hashCode(), genericAccessToken4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGenericAccessToken genericAccessToken = new OASGenericAccessToken();
        Map<String, String> propertymappings = genericAccessToken.getPropertyMappings();
        System.assertEquals('accessToken', propertymappings.get('access_token'));
        System.assertEquals('isNewToken', propertymappings.get('is_new_token'));
    }
}