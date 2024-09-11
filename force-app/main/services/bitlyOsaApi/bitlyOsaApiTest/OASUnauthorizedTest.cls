@isTest
private class OASUnauthorizedTest {
    @isTest
    private static void equalsSameInstance() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = unauthorized1;
        OASUnauthorized unauthorized3 = new OASUnauthorized();
        OASUnauthorized unauthorized4 = unauthorized3;

        System.assert(unauthorized1.equals(unauthorized2));
        System.assert(unauthorized2.equals(unauthorized1));
        System.assert(unauthorized1.equals(unauthorized1));
        System.assert(unauthorized3.equals(unauthorized4));
        System.assert(unauthorized4.equals(unauthorized3));
        System.assert(unauthorized3.equals(unauthorized3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized3 = new OASUnauthorized();
        OASUnauthorized unauthorized4 = new OASUnauthorized();

        System.assert(unauthorized1.equals(unauthorized2));
        System.assert(unauthorized2.equals(unauthorized1));
        System.assert(unauthorized3.equals(unauthorized4));
        System.assert(unauthorized4.equals(unauthorized3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = new OASUnauthorized();

        System.assertEquals(false, unauthorized1.equals('foo'));
        System.assertEquals(false, unauthorized2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = new OASUnauthorized();
        OASUnauthorized unauthorized3;

        System.assertEquals(false, unauthorized1.equals(unauthorized3));
        System.assertEquals(false, unauthorized2.equals(unauthorized3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = new OASUnauthorized();

        System.assertEquals(unauthorized1.hashCode(), unauthorized1.hashCode());
        System.assertEquals(unauthorized2.hashCode(), unauthorized2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUnauthorized unauthorized1 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized2 = OASUnauthorized.getExample();
        OASUnauthorized unauthorized3 = new OASUnauthorized();
        OASUnauthorized unauthorized4 = new OASUnauthorized();

        System.assert(unauthorized1.equals(unauthorized2));
        System.assert(unauthorized3.equals(unauthorized4));
        System.assertEquals(unauthorized1.hashCode(), unauthorized2.hashCode());
        System.assertEquals(unauthorized3.hashCode(), unauthorized4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUnauthorized unauthorized = new OASUnauthorized();
        System.assertEquals(new List<OASFieldError>(), unauthorized.errors);
        System.assertEquals(null, unauthorized.message);
        System.assertEquals(null, unauthorized.description);
        System.assertEquals(null, unauthorized.resource);
    }
}