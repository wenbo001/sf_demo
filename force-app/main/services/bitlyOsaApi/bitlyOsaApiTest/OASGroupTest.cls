@isTest
private class OASGroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = r_group1;
        OASGroup r_group3 = new OASGroup();
        OASGroup r_group4 = r_group3;

        System.assert(r_group1.equals(r_group2));
        System.assert(r_group2.equals(r_group1));
        System.assert(r_group1.equals(r_group1));
        System.assert(r_group3.equals(r_group4));
        System.assert(r_group4.equals(r_group3));
        System.assert(r_group3.equals(r_group3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = OASGroup.getExample();
        OASGroup r_group3 = new OASGroup();
        OASGroup r_group4 = new OASGroup();

        System.assert(r_group1.equals(r_group2));
        System.assert(r_group2.equals(r_group1));
        System.assert(r_group3.equals(r_group4));
        System.assert(r_group4.equals(r_group3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = new OASGroup();

        System.assertEquals(false, r_group1.equals('foo'));
        System.assertEquals(false, r_group2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = new OASGroup();
        OASGroup r_group3;

        System.assertEquals(false, r_group1.equals(r_group3));
        System.assertEquals(false, r_group2.equals(r_group3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = new OASGroup();

        System.assertEquals(r_group1.hashCode(), r_group1.hashCode());
        System.assertEquals(r_group2.hashCode(), r_group2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroup r_group1 = OASGroup.getExample();
        OASGroup r_group2 = OASGroup.getExample();
        OASGroup r_group3 = new OASGroup();
        OASGroup r_group4 = new OASGroup();

        System.assert(r_group1.equals(r_group2));
        System.assert(r_group3.equals(r_group4));
        System.assertEquals(r_group1.hashCode(), r_group2.hashCode());
        System.assertEquals(r_group3.hashCode(), r_group4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroup r_group = new OASGroup();
        Map<String, String> propertymappings = r_group.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroup r_group = new OASGroup();
        System.assertEquals(new Map<String, String>(), r_group.references);
        System.assertEquals(new List<String>(), r_group.bsds);
        System.assertEquals(null, r_group.name);
        System.assertEquals(null, r_group.guid);
        System.assertEquals(null, r_group.created);
        System.assertEquals(null, r_group.modified);
        System.assertEquals(null, r_group.isActive);
        System.assertEquals(null, r_group.role);
        System.assertEquals(null, r_group.organizationGuid);
    }
}