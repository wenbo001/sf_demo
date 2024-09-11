@isTest
private class OASAuthorizationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = authorizations1;
        OASAuthorizations authorizations3 = new OASAuthorizations();
        OASAuthorizations authorizations4 = authorizations3;

        System.assert(authorizations1.equals(authorizations2));
        System.assert(authorizations2.equals(authorizations1));
        System.assert(authorizations1.equals(authorizations1));
        System.assert(authorizations3.equals(authorizations4));
        System.assert(authorizations4.equals(authorizations3));
        System.assert(authorizations3.equals(authorizations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = OASAuthorizations.getExample();
        OASAuthorizations authorizations3 = new OASAuthorizations();
        OASAuthorizations authorizations4 = new OASAuthorizations();

        System.assert(authorizations1.equals(authorizations2));
        System.assert(authorizations2.equals(authorizations1));
        System.assert(authorizations3.equals(authorizations4));
        System.assert(authorizations4.equals(authorizations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = new OASAuthorizations();

        System.assertEquals(false, authorizations1.equals('foo'));
        System.assertEquals(false, authorizations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = new OASAuthorizations();
        OASAuthorizations authorizations3;

        System.assertEquals(false, authorizations1.equals(authorizations3));
        System.assertEquals(false, authorizations2.equals(authorizations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = new OASAuthorizations();

        System.assertEquals(authorizations1.hashCode(), authorizations1.hashCode());
        System.assertEquals(authorizations2.hashCode(), authorizations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAuthorizations authorizations1 = OASAuthorizations.getExample();
        OASAuthorizations authorizations2 = OASAuthorizations.getExample();
        OASAuthorizations authorizations3 = new OASAuthorizations();
        OASAuthorizations authorizations4 = new OASAuthorizations();

        System.assert(authorizations1.equals(authorizations2));
        System.assert(authorizations3.equals(authorizations4));
        System.assertEquals(authorizations1.hashCode(), authorizations2.hashCode());
        System.assertEquals(authorizations3.hashCode(), authorizations4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAuthorizations authorizations = new OASAuthorizations();
        System.assertEquals(new List<OASAuthorization>(), authorizations.authorizations);
    }
}