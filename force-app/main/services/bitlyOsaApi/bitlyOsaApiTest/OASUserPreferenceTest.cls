@isTest
private class OASUserPreferenceTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = userPreference1;
        OASUserPreference userPreference3 = new OASUserPreference();
        OASUserPreference userPreference4 = userPreference3;

        System.assert(userPreference1.equals(userPreference2));
        System.assert(userPreference2.equals(userPreference1));
        System.assert(userPreference1.equals(userPreference1));
        System.assert(userPreference3.equals(userPreference4));
        System.assert(userPreference4.equals(userPreference3));
        System.assert(userPreference3.equals(userPreference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = OASUserPreference.getExample();
        OASUserPreference userPreference3 = new OASUserPreference();
        OASUserPreference userPreference4 = new OASUserPreference();

        System.assert(userPreference1.equals(userPreference2));
        System.assert(userPreference2.equals(userPreference1));
        System.assert(userPreference3.equals(userPreference4));
        System.assert(userPreference4.equals(userPreference3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = new OASUserPreference();

        System.assertEquals(false, userPreference1.equals('foo'));
        System.assertEquals(false, userPreference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = new OASUserPreference();
        OASUserPreference userPreference3;

        System.assertEquals(false, userPreference1.equals(userPreference3));
        System.assertEquals(false, userPreference2.equals(userPreference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = new OASUserPreference();

        System.assertEquals(userPreference1.hashCode(), userPreference1.hashCode());
        System.assertEquals(userPreference2.hashCode(), userPreference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserPreference userPreference1 = OASUserPreference.getExample();
        OASUserPreference userPreference2 = OASUserPreference.getExample();
        OASUserPreference userPreference3 = new OASUserPreference();
        OASUserPreference userPreference4 = new OASUserPreference();

        System.assert(userPreference1.equals(userPreference2));
        System.assert(userPreference3.equals(userPreference4));
        System.assertEquals(userPreference1.hashCode(), userPreference2.hashCode());
        System.assertEquals(userPreference3.hashCode(), userPreference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserPreference userPreference = new OASUserPreference();
        Map<String, String> propertymappings = userPreference.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('lastSeen', propertymappings.get('last_seen'));
    }
}