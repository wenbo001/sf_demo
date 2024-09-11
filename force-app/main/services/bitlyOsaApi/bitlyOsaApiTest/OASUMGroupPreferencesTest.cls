@isTest
private class OASUMGroupPreferencesTest {
    @isTest
    private static void equalsSameInstance() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = umGroupPreferences1;
        OASUMGroupPreferences umGroupPreferences3 = new OASUMGroupPreferences();
        OASUMGroupPreferences umGroupPreferences4 = umGroupPreferences3;

        System.assert(umGroupPreferences1.equals(umGroupPreferences2));
        System.assert(umGroupPreferences2.equals(umGroupPreferences1));
        System.assert(umGroupPreferences1.equals(umGroupPreferences1));
        System.assert(umGroupPreferences3.equals(umGroupPreferences4));
        System.assert(umGroupPreferences4.equals(umGroupPreferences3));
        System.assert(umGroupPreferences3.equals(umGroupPreferences3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences3 = new OASUMGroupPreferences();
        OASUMGroupPreferences umGroupPreferences4 = new OASUMGroupPreferences();

        System.assert(umGroupPreferences1.equals(umGroupPreferences2));
        System.assert(umGroupPreferences2.equals(umGroupPreferences1));
        System.assert(umGroupPreferences3.equals(umGroupPreferences4));
        System.assert(umGroupPreferences4.equals(umGroupPreferences3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = new OASUMGroupPreferences();

        System.assertEquals(false, umGroupPreferences1.equals('foo'));
        System.assertEquals(false, umGroupPreferences2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = new OASUMGroupPreferences();
        OASUMGroupPreferences umGroupPreferences3;

        System.assertEquals(false, umGroupPreferences1.equals(umGroupPreferences3));
        System.assertEquals(false, umGroupPreferences2.equals(umGroupPreferences3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = new OASUMGroupPreferences();

        System.assertEquals(umGroupPreferences1.hashCode(), umGroupPreferences1.hashCode());
        System.assertEquals(umGroupPreferences2.hashCode(), umGroupPreferences2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUMGroupPreferences umGroupPreferences1 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences2 = OASUMGroupPreferences.getExample();
        OASUMGroupPreferences umGroupPreferences3 = new OASUMGroupPreferences();
        OASUMGroupPreferences umGroupPreferences4 = new OASUMGroupPreferences();

        System.assert(umGroupPreferences1.equals(umGroupPreferences2));
        System.assert(umGroupPreferences3.equals(umGroupPreferences4));
        System.assertEquals(umGroupPreferences1.hashCode(), umGroupPreferences2.hashCode());
        System.assertEquals(umGroupPreferences3.hashCode(), umGroupPreferences4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUMGroupPreferences umGroupPreferences = new OASUMGroupPreferences();
        System.assertEquals(new List<OASUMGroupPreference>(), umGroupPreferences.preferences);
    }
}