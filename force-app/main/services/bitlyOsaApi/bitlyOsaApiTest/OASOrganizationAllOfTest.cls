@isTest
private class OASOrganizationAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = organizationAllOf1;
        OASOrganizationAllOf organizationAllOf3 = new OASOrganizationAllOf();
        OASOrganizationAllOf organizationAllOf4 = organizationAllOf3;

        System.assert(organizationAllOf1.equals(organizationAllOf2));
        System.assert(organizationAllOf2.equals(organizationAllOf1));
        System.assert(organizationAllOf1.equals(organizationAllOf1));
        System.assert(organizationAllOf3.equals(organizationAllOf4));
        System.assert(organizationAllOf4.equals(organizationAllOf3));
        System.assert(organizationAllOf3.equals(organizationAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf3 = new OASOrganizationAllOf();
        OASOrganizationAllOf organizationAllOf4 = new OASOrganizationAllOf();

        System.assert(organizationAllOf1.equals(organizationAllOf2));
        System.assert(organizationAllOf2.equals(organizationAllOf1));
        System.assert(organizationAllOf3.equals(organizationAllOf4));
        System.assert(organizationAllOf4.equals(organizationAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = new OASOrganizationAllOf();

        System.assertEquals(false, organizationAllOf1.equals('foo'));
        System.assertEquals(false, organizationAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = new OASOrganizationAllOf();
        OASOrganizationAllOf organizationAllOf3;

        System.assertEquals(false, organizationAllOf1.equals(organizationAllOf3));
        System.assertEquals(false, organizationAllOf2.equals(organizationAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = new OASOrganizationAllOf();

        System.assertEquals(organizationAllOf1.hashCode(), organizationAllOf1.hashCode());
        System.assertEquals(organizationAllOf2.hashCode(), organizationAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationAllOf organizationAllOf1 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf2 = OASOrganizationAllOf.getExample();
        OASOrganizationAllOf organizationAllOf3 = new OASOrganizationAllOf();
        OASOrganizationAllOf organizationAllOf4 = new OASOrganizationAllOf();

        System.assert(organizationAllOf1.equals(organizationAllOf2));
        System.assert(organizationAllOf3.equals(organizationAllOf4));
        System.assertEquals(organizationAllOf1.hashCode(), organizationAllOf2.hashCode());
        System.assertEquals(organizationAllOf3.hashCode(), organizationAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrganizationAllOf organizationAllOf = new OASOrganizationAllOf();
        Map<String, String> propertymappings = organizationAllOf.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('tierFamily', propertymappings.get('tier_family'));
        System.assertEquals('tierDisplayName', propertymappings.get('tier_display_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrganizationAllOf organizationAllOf = new OASOrganizationAllOf();
        System.assertEquals(new List<String>(), organizationAllOf.bsds);
        System.assertEquals(null, organizationAllOf.name);
        System.assertEquals(null, organizationAllOf.isActive);
        System.assertEquals(null, organizationAllOf.guid);
        System.assertEquals(null, organizationAllOf.tier);
        System.assertEquals(null, organizationAllOf.tierFamily);
        System.assertEquals(null, organizationAllOf.tierDisplayName);
        System.assertEquals(null, organizationAllOf.role);
        System.assertEquals(null, organizationAllOf.created);
        System.assertEquals(null, organizationAllOf.modified);
    }
}