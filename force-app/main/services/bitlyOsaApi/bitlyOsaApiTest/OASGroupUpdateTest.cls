@isTest
private class OASGroupUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = groupUpdate1;
        OASGroupUpdate groupUpdate3 = new OASGroupUpdate();
        OASGroupUpdate groupUpdate4 = groupUpdate3;

        System.assert(groupUpdate1.equals(groupUpdate2));
        System.assert(groupUpdate2.equals(groupUpdate1));
        System.assert(groupUpdate1.equals(groupUpdate1));
        System.assert(groupUpdate3.equals(groupUpdate4));
        System.assert(groupUpdate4.equals(groupUpdate3));
        System.assert(groupUpdate3.equals(groupUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate3 = new OASGroupUpdate();
        OASGroupUpdate groupUpdate4 = new OASGroupUpdate();

        System.assert(groupUpdate1.equals(groupUpdate2));
        System.assert(groupUpdate2.equals(groupUpdate1));
        System.assert(groupUpdate3.equals(groupUpdate4));
        System.assert(groupUpdate4.equals(groupUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = new OASGroupUpdate();

        System.assertEquals(false, groupUpdate1.equals('foo'));
        System.assertEquals(false, groupUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = new OASGroupUpdate();
        OASGroupUpdate groupUpdate3;

        System.assertEquals(false, groupUpdate1.equals(groupUpdate3));
        System.assertEquals(false, groupUpdate2.equals(groupUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = new OASGroupUpdate();

        System.assertEquals(groupUpdate1.hashCode(), groupUpdate1.hashCode());
        System.assertEquals(groupUpdate2.hashCode(), groupUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupUpdate groupUpdate1 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate2 = OASGroupUpdate.getExample();
        OASGroupUpdate groupUpdate3 = new OASGroupUpdate();
        OASGroupUpdate groupUpdate4 = new OASGroupUpdate();

        System.assert(groupUpdate1.equals(groupUpdate2));
        System.assert(groupUpdate3.equals(groupUpdate4));
        System.assertEquals(groupUpdate1.hashCode(), groupUpdate2.hashCode());
        System.assertEquals(groupUpdate3.hashCode(), groupUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupUpdate groupUpdate = new OASGroupUpdate();
        Map<String, String> propertymappings = groupUpdate.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupUpdate groupUpdate = new OASGroupUpdate();
        System.assertEquals(new List<String>(), groupUpdate.bsds);
        System.assertEquals(null, groupUpdate.name);
        System.assertEquals(null, groupUpdate.organizationGuid);
    }
}