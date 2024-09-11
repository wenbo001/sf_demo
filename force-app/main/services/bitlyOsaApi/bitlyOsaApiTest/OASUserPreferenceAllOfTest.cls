@isTest
private class OASUserPreferenceAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = userPreferenceAllOf1;
        OASUserPreferenceAllOf userPreferenceAllOf3 = new OASUserPreferenceAllOf();
        OASUserPreferenceAllOf userPreferenceAllOf4 = userPreferenceAllOf3;

        System.assert(userPreferenceAllOf1.equals(userPreferenceAllOf2));
        System.assert(userPreferenceAllOf2.equals(userPreferenceAllOf1));
        System.assert(userPreferenceAllOf1.equals(userPreferenceAllOf1));
        System.assert(userPreferenceAllOf3.equals(userPreferenceAllOf4));
        System.assert(userPreferenceAllOf4.equals(userPreferenceAllOf3));
        System.assert(userPreferenceAllOf3.equals(userPreferenceAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf3 = new OASUserPreferenceAllOf();
        OASUserPreferenceAllOf userPreferenceAllOf4 = new OASUserPreferenceAllOf();

        System.assert(userPreferenceAllOf1.equals(userPreferenceAllOf2));
        System.assert(userPreferenceAllOf2.equals(userPreferenceAllOf1));
        System.assert(userPreferenceAllOf3.equals(userPreferenceAllOf4));
        System.assert(userPreferenceAllOf4.equals(userPreferenceAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = new OASUserPreferenceAllOf();

        System.assertEquals(false, userPreferenceAllOf1.equals('foo'));
        System.assertEquals(false, userPreferenceAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = new OASUserPreferenceAllOf();
        OASUserPreferenceAllOf userPreferenceAllOf3;

        System.assertEquals(false, userPreferenceAllOf1.equals(userPreferenceAllOf3));
        System.assertEquals(false, userPreferenceAllOf2.equals(userPreferenceAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = new OASUserPreferenceAllOf();

        System.assertEquals(userPreferenceAllOf1.hashCode(), userPreferenceAllOf1.hashCode());
        System.assertEquals(userPreferenceAllOf2.hashCode(), userPreferenceAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserPreferenceAllOf userPreferenceAllOf1 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf2 = OASUserPreferenceAllOf.getExample();
        OASUserPreferenceAllOf userPreferenceAllOf3 = new OASUserPreferenceAllOf();
        OASUserPreferenceAllOf userPreferenceAllOf4 = new OASUserPreferenceAllOf();

        System.assert(userPreferenceAllOf1.equals(userPreferenceAllOf2));
        System.assert(userPreferenceAllOf3.equals(userPreferenceAllOf4));
        System.assertEquals(userPreferenceAllOf1.hashCode(), userPreferenceAllOf2.hashCode());
        System.assertEquals(userPreferenceAllOf3.hashCode(), userPreferenceAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserPreferenceAllOf userPreferenceAllOf = new OASUserPreferenceAllOf();
        Map<String, String> propertymappings = userPreferenceAllOf.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('lastSeen', propertymappings.get('last_seen'));
    }
}