@isTest
private class OASOrganizationGUIDTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = organizationGUID1;
        OASOrganizationGUID organizationGUID3 = new OASOrganizationGUID();
        OASOrganizationGUID organizationGUID4 = organizationGUID3;

        System.assert(organizationGUID1.equals(organizationGUID2));
        System.assert(organizationGUID2.equals(organizationGUID1));
        System.assert(organizationGUID1.equals(organizationGUID1));
        System.assert(organizationGUID3.equals(organizationGUID4));
        System.assert(organizationGUID4.equals(organizationGUID3));
        System.assert(organizationGUID3.equals(organizationGUID3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID3 = new OASOrganizationGUID();
        OASOrganizationGUID organizationGUID4 = new OASOrganizationGUID();

        System.assert(organizationGUID1.equals(organizationGUID2));
        System.assert(organizationGUID2.equals(organizationGUID1));
        System.assert(organizationGUID3.equals(organizationGUID4));
        System.assert(organizationGUID4.equals(organizationGUID3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = new OASOrganizationGUID();

        System.assertEquals(false, organizationGUID1.equals('foo'));
        System.assertEquals(false, organizationGUID2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = new OASOrganizationGUID();
        OASOrganizationGUID organizationGUID3;

        System.assertEquals(false, organizationGUID1.equals(organizationGUID3));
        System.assertEquals(false, organizationGUID2.equals(organizationGUID3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = new OASOrganizationGUID();

        System.assertEquals(organizationGUID1.hashCode(), organizationGUID1.hashCode());
        System.assertEquals(organizationGUID2.hashCode(), organizationGUID2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationGUID organizationGUID1 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID2 = OASOrganizationGUID.getExample();
        OASOrganizationGUID organizationGUID3 = new OASOrganizationGUID();
        OASOrganizationGUID organizationGUID4 = new OASOrganizationGUID();

        System.assert(organizationGUID1.equals(organizationGUID2));
        System.assert(organizationGUID3.equals(organizationGUID4));
        System.assertEquals(organizationGUID1.hashCode(), organizationGUID2.hashCode());
        System.assertEquals(organizationGUID3.hashCode(), organizationGUID4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganizationGUID organizationGUID = new OASOrganizationGUID();
        Map<String, String> propertymappings = organizationGUID.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
    }
}