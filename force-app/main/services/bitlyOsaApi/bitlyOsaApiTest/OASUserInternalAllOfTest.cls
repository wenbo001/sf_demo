@isTest
private class OASUserInternalAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = userInternalAllOf1;
        OASUserInternalAllOf userInternalAllOf3 = new OASUserInternalAllOf();
        OASUserInternalAllOf userInternalAllOf4 = userInternalAllOf3;

        System.assert(userInternalAllOf1.equals(userInternalAllOf2));
        System.assert(userInternalAllOf2.equals(userInternalAllOf1));
        System.assert(userInternalAllOf1.equals(userInternalAllOf1));
        System.assert(userInternalAllOf3.equals(userInternalAllOf4));
        System.assert(userInternalAllOf4.equals(userInternalAllOf3));
        System.assert(userInternalAllOf3.equals(userInternalAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf3 = new OASUserInternalAllOf();
        OASUserInternalAllOf userInternalAllOf4 = new OASUserInternalAllOf();

        System.assert(userInternalAllOf1.equals(userInternalAllOf2));
        System.assert(userInternalAllOf2.equals(userInternalAllOf1));
        System.assert(userInternalAllOf3.equals(userInternalAllOf4));
        System.assert(userInternalAllOf4.equals(userInternalAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = new OASUserInternalAllOf();

        System.assertEquals(false, userInternalAllOf1.equals('foo'));
        System.assertEquals(false, userInternalAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = new OASUserInternalAllOf();
        OASUserInternalAllOf userInternalAllOf3;

        System.assertEquals(false, userInternalAllOf1.equals(userInternalAllOf3));
        System.assertEquals(false, userInternalAllOf2.equals(userInternalAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = new OASUserInternalAllOf();

        System.assertEquals(userInternalAllOf1.hashCode(), userInternalAllOf1.hashCode());
        System.assertEquals(userInternalAllOf2.hashCode(), userInternalAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserInternalAllOf userInternalAllOf1 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf2 = OASUserInternalAllOf.getExample();
        OASUserInternalAllOf userInternalAllOf3 = new OASUserInternalAllOf();
        OASUserInternalAllOf userInternalAllOf4 = new OASUserInternalAllOf();

        System.assert(userInternalAllOf1.equals(userInternalAllOf2));
        System.assert(userInternalAllOf3.equals(userInternalAllOf4));
        System.assertEquals(userInternalAllOf1.hashCode(), userInternalAllOf2.hashCode());
        System.assertEquals(userInternalAllOf3.hashCode(), userInternalAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserInternalAllOf userInternalAllOf = new OASUserInternalAllOf();
        Map<String, String> propertymappings = userInternalAllOf.getPropertyMappings();
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }
}