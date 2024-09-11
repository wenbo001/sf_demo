@isTest
private class OASGroupAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = groupAllOf1;
        OASGroupAllOf groupAllOf3 = new OASGroupAllOf();
        OASGroupAllOf groupAllOf4 = groupAllOf3;

        System.assert(groupAllOf1.equals(groupAllOf2));
        System.assert(groupAllOf2.equals(groupAllOf1));
        System.assert(groupAllOf1.equals(groupAllOf1));
        System.assert(groupAllOf3.equals(groupAllOf4));
        System.assert(groupAllOf4.equals(groupAllOf3));
        System.assert(groupAllOf3.equals(groupAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf3 = new OASGroupAllOf();
        OASGroupAllOf groupAllOf4 = new OASGroupAllOf();

        System.assert(groupAllOf1.equals(groupAllOf2));
        System.assert(groupAllOf2.equals(groupAllOf1));
        System.assert(groupAllOf3.equals(groupAllOf4));
        System.assert(groupAllOf4.equals(groupAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = new OASGroupAllOf();

        System.assertEquals(false, groupAllOf1.equals('foo'));
        System.assertEquals(false, groupAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = new OASGroupAllOf();
        OASGroupAllOf groupAllOf3;

        System.assertEquals(false, groupAllOf1.equals(groupAllOf3));
        System.assertEquals(false, groupAllOf2.equals(groupAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = new OASGroupAllOf();

        System.assertEquals(groupAllOf1.hashCode(), groupAllOf1.hashCode());
        System.assertEquals(groupAllOf2.hashCode(), groupAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupAllOf groupAllOf1 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf2 = OASGroupAllOf.getExample();
        OASGroupAllOf groupAllOf3 = new OASGroupAllOf();
        OASGroupAllOf groupAllOf4 = new OASGroupAllOf();

        System.assert(groupAllOf1.equals(groupAllOf2));
        System.assert(groupAllOf3.equals(groupAllOf4));
        System.assertEquals(groupAllOf1.hashCode(), groupAllOf2.hashCode());
        System.assertEquals(groupAllOf3.hashCode(), groupAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupAllOf groupAllOf = new OASGroupAllOf();
        Map<String, String> propertymappings = groupAllOf.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupAllOf groupAllOf = new OASGroupAllOf();
        System.assertEquals(new List<String>(), groupAllOf.bsds);
        System.assertEquals(null, groupAllOf.name);
        System.assertEquals(null, groupAllOf.guid);
        System.assertEquals(null, groupAllOf.created);
        System.assertEquals(null, groupAllOf.modified);
        System.assertEquals(null, groupAllOf.isActive);
        System.assertEquals(null, groupAllOf.role);
        System.assertEquals(null, groupAllOf.organizationGuid);
    }
}