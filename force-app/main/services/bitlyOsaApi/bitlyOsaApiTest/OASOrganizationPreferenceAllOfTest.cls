@isTest
private class OASOrganizationPreferenceAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = organizationPreferenceAllOf1;
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf3 = new OASOrganizationPreferenceAllOf();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf4 = organizationPreferenceAllOf3;

        System.assert(organizationPreferenceAllOf1.equals(organizationPreferenceAllOf2));
        System.assert(organizationPreferenceAllOf2.equals(organizationPreferenceAllOf1));
        System.assert(organizationPreferenceAllOf1.equals(organizationPreferenceAllOf1));
        System.assert(organizationPreferenceAllOf3.equals(organizationPreferenceAllOf4));
        System.assert(organizationPreferenceAllOf4.equals(organizationPreferenceAllOf3));
        System.assert(organizationPreferenceAllOf3.equals(organizationPreferenceAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf3 = new OASOrganizationPreferenceAllOf();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf4 = new OASOrganizationPreferenceAllOf();

        System.assert(organizationPreferenceAllOf1.equals(organizationPreferenceAllOf2));
        System.assert(organizationPreferenceAllOf2.equals(organizationPreferenceAllOf1));
        System.assert(organizationPreferenceAllOf3.equals(organizationPreferenceAllOf4));
        System.assert(organizationPreferenceAllOf4.equals(organizationPreferenceAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = new OASOrganizationPreferenceAllOf();

        System.assertEquals(false, organizationPreferenceAllOf1.equals('foo'));
        System.assertEquals(false, organizationPreferenceAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = new OASOrganizationPreferenceAllOf();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf3;

        System.assertEquals(false, organizationPreferenceAllOf1.equals(organizationPreferenceAllOf3));
        System.assertEquals(false, organizationPreferenceAllOf2.equals(organizationPreferenceAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = new OASOrganizationPreferenceAllOf();

        System.assertEquals(organizationPreferenceAllOf1.hashCode(), organizationPreferenceAllOf1.hashCode());
        System.assertEquals(organizationPreferenceAllOf2.hashCode(), organizationPreferenceAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf1 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf2 = OASOrganizationPreferenceAllOf.getExample();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf3 = new OASOrganizationPreferenceAllOf();
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf4 = new OASOrganizationPreferenceAllOf();

        System.assert(organizationPreferenceAllOf1.equals(organizationPreferenceAllOf2));
        System.assert(organizationPreferenceAllOf3.equals(organizationPreferenceAllOf4));
        System.assertEquals(organizationPreferenceAllOf1.hashCode(), organizationPreferenceAllOf2.hashCode());
        System.assertEquals(organizationPreferenceAllOf3.hashCode(), organizationPreferenceAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganizationPreferenceAllOf organizationPreferenceAllOf = new OASOrganizationPreferenceAllOf();
        Map<String, String> propertymappings = organizationPreferenceAllOf.getPropertyMappings();
        System.assertEquals('preferenceName', propertymappings.get('preference_name'));
    }
}