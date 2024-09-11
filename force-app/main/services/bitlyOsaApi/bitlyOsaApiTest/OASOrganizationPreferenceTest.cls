@isTest
private class OASOrganizationPreferenceTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = organizationPreference1;
        OASOrganizationPreference organizationPreference3 = new OASOrganizationPreference();
        OASOrganizationPreference organizationPreference4 = organizationPreference3;

        System.assert(organizationPreference1.equals(organizationPreference2));
        System.assert(organizationPreference2.equals(organizationPreference1));
        System.assert(organizationPreference1.equals(organizationPreference1));
        System.assert(organizationPreference3.equals(organizationPreference4));
        System.assert(organizationPreference4.equals(organizationPreference3));
        System.assert(organizationPreference3.equals(organizationPreference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference3 = new OASOrganizationPreference();
        OASOrganizationPreference organizationPreference4 = new OASOrganizationPreference();

        System.assert(organizationPreference1.equals(organizationPreference2));
        System.assert(organizationPreference2.equals(organizationPreference1));
        System.assert(organizationPreference3.equals(organizationPreference4));
        System.assert(organizationPreference4.equals(organizationPreference3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = new OASOrganizationPreference();

        System.assertEquals(false, organizationPreference1.equals('foo'));
        System.assertEquals(false, organizationPreference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = new OASOrganizationPreference();
        OASOrganizationPreference organizationPreference3;

        System.assertEquals(false, organizationPreference1.equals(organizationPreference3));
        System.assertEquals(false, organizationPreference2.equals(organizationPreference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = new OASOrganizationPreference();

        System.assertEquals(organizationPreference1.hashCode(), organizationPreference1.hashCode());
        System.assertEquals(organizationPreference2.hashCode(), organizationPreference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationPreference organizationPreference1 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference2 = OASOrganizationPreference.getExample();
        OASOrganizationPreference organizationPreference3 = new OASOrganizationPreference();
        OASOrganizationPreference organizationPreference4 = new OASOrganizationPreference();

        System.assert(organizationPreference1.equals(organizationPreference2));
        System.assert(organizationPreference3.equals(organizationPreference4));
        System.assertEquals(organizationPreference1.hashCode(), organizationPreference2.hashCode());
        System.assertEquals(organizationPreference3.hashCode(), organizationPreference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganizationPreference organizationPreference = new OASOrganizationPreference();
        Map<String, String> propertymappings = organizationPreference.getPropertyMappings();
        System.assertEquals('preferenceName', propertymappings.get('preference_name'));
    }
}