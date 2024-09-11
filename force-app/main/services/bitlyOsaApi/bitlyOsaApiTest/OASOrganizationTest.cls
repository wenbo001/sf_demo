@isTest
private class OASOrganizationTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = organization1;
        OASOrganization organization3 = new OASOrganization();
        OASOrganization organization4 = organization3;

        System.assert(organization1.equals(organization2));
        System.assert(organization2.equals(organization1));
        System.assert(organization1.equals(organization1));
        System.assert(organization3.equals(organization4));
        System.assert(organization4.equals(organization3));
        System.assert(organization3.equals(organization3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = OASOrganization.getExample();
        OASOrganization organization3 = new OASOrganization();
        OASOrganization organization4 = new OASOrganization();

        System.assert(organization1.equals(organization2));
        System.assert(organization2.equals(organization1));
        System.assert(organization3.equals(organization4));
        System.assert(organization4.equals(organization3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = new OASOrganization();

        System.assertEquals(false, organization1.equals('foo'));
        System.assertEquals(false, organization2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = new OASOrganization();
        OASOrganization organization3;

        System.assertEquals(false, organization1.equals(organization3));
        System.assertEquals(false, organization2.equals(organization3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = new OASOrganization();

        System.assertEquals(organization1.hashCode(), organization1.hashCode());
        System.assertEquals(organization2.hashCode(), organization2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganization organization1 = OASOrganization.getExample();
        OASOrganization organization2 = OASOrganization.getExample();
        OASOrganization organization3 = new OASOrganization();
        OASOrganization organization4 = new OASOrganization();

        System.assert(organization1.equals(organization2));
        System.assert(organization3.equals(organization4));
        System.assertEquals(organization1.hashCode(), organization2.hashCode());
        System.assertEquals(organization3.hashCode(), organization4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganization organization = new OASOrganization();
        Map<String, String> propertymappings = organization.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('tierFamily', propertymappings.get('tier_family'));
        System.assertEquals('tierDisplayName', propertymappings.get('tier_display_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrganization organization = new OASOrganization();
        System.assertEquals(new Map<String, String>(), organization.references);
        System.assertEquals(new List<String>(), organization.bsds);
        System.assertEquals(null, organization.name);
        System.assertEquals(null, organization.isActive);
        System.assertEquals(null, organization.guid);
        System.assertEquals(null, organization.tier);
        System.assertEquals(null, organization.tierFamily);
        System.assertEquals(null, organization.tierDisplayName);
        System.assertEquals(null, organization.role);
        System.assertEquals(null, organization.created);
        System.assertEquals(null, organization.modified);
    }
}