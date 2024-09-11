@isTest
private class OASOrganizationPreferencesTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = organizationPreferences1;
        OASOrganizationPreferences organizationPreferences3 = new OASOrganizationPreferences();
        OASOrganizationPreferences organizationPreferences4 = organizationPreferences3;

        System.assert(organizationPreferences1.equals(organizationPreferences2));
        System.assert(organizationPreferences2.equals(organizationPreferences1));
        System.assert(organizationPreferences1.equals(organizationPreferences1));
        System.assert(organizationPreferences3.equals(organizationPreferences4));
        System.assert(organizationPreferences4.equals(organizationPreferences3));
        System.assert(organizationPreferences3.equals(organizationPreferences3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences3 = new OASOrganizationPreferences();
        OASOrganizationPreferences organizationPreferences4 = new OASOrganizationPreferences();

        System.assert(organizationPreferences1.equals(organizationPreferences2));
        System.assert(organizationPreferences2.equals(organizationPreferences1));
        System.assert(organizationPreferences3.equals(organizationPreferences4));
        System.assert(organizationPreferences4.equals(organizationPreferences3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = new OASOrganizationPreferences();

        System.assertEquals(false, organizationPreferences1.equals('foo'));
        System.assertEquals(false, organizationPreferences2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = new OASOrganizationPreferences();
        OASOrganizationPreferences organizationPreferences3;

        System.assertEquals(false, organizationPreferences1.equals(organizationPreferences3));
        System.assertEquals(false, organizationPreferences2.equals(organizationPreferences3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = new OASOrganizationPreferences();

        System.assertEquals(organizationPreferences1.hashCode(), organizationPreferences1.hashCode());
        System.assertEquals(organizationPreferences2.hashCode(), organizationPreferences2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationPreferences organizationPreferences1 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences2 = OASOrganizationPreferences.getExample();
        OASOrganizationPreferences organizationPreferences3 = new OASOrganizationPreferences();
        OASOrganizationPreferences organizationPreferences4 = new OASOrganizationPreferences();

        System.assert(organizationPreferences1.equals(organizationPreferences2));
        System.assert(organizationPreferences3.equals(organizationPreferences4));
        System.assertEquals(organizationPreferences1.hashCode(), organizationPreferences2.hashCode());
        System.assertEquals(organizationPreferences3.hashCode(), organizationPreferences4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrganizationPreferences organizationPreferences = new OASOrganizationPreferences();
        System.assertEquals(new List<OASOrganizationPreference>(), organizationPreferences.preferences);
    }
}