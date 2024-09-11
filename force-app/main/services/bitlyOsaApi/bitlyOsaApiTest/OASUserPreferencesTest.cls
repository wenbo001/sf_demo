@isTest
private class OASUserPreferencesTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = userPreferences1;
        OASUserPreferences userPreferences3 = new OASUserPreferences();
        OASUserPreferences userPreferences4 = userPreferences3;

        System.assert(userPreferences1.equals(userPreferences2));
        System.assert(userPreferences2.equals(userPreferences1));
        System.assert(userPreferences1.equals(userPreferences1));
        System.assert(userPreferences3.equals(userPreferences4));
        System.assert(userPreferences4.equals(userPreferences3));
        System.assert(userPreferences3.equals(userPreferences3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences3 = new OASUserPreferences();
        OASUserPreferences userPreferences4 = new OASUserPreferences();

        System.assert(userPreferences1.equals(userPreferences2));
        System.assert(userPreferences2.equals(userPreferences1));
        System.assert(userPreferences3.equals(userPreferences4));
        System.assert(userPreferences4.equals(userPreferences3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = new OASUserPreferences();

        System.assertEquals(false, userPreferences1.equals('foo'));
        System.assertEquals(false, userPreferences2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = new OASUserPreferences();
        OASUserPreferences userPreferences3;

        System.assertEquals(false, userPreferences1.equals(userPreferences3));
        System.assertEquals(false, userPreferences2.equals(userPreferences3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = new OASUserPreferences();

        System.assertEquals(userPreferences1.hashCode(), userPreferences1.hashCode());
        System.assertEquals(userPreferences2.hashCode(), userPreferences2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserPreferences userPreferences1 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences2 = OASUserPreferences.getExample();
        OASUserPreferences userPreferences3 = new OASUserPreferences();
        OASUserPreferences userPreferences4 = new OASUserPreferences();

        System.assert(userPreferences1.equals(userPreferences2));
        System.assert(userPreferences3.equals(userPreferences4));
        System.assertEquals(userPreferences1.hashCode(), userPreferences2.hashCode());
        System.assertEquals(userPreferences3.hashCode(), userPreferences4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUserPreferences userPreferences = new OASUserPreferences();
        System.assertEquals(new List<OASUserPreference>(), userPreferences.preferences);
    }
}