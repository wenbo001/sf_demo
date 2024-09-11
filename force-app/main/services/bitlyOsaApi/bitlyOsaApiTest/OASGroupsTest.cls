@isTest
private class OASGroupsTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = groups1;
        OASGroups groups3 = new OASGroups();
        OASGroups groups4 = groups3;

        System.assert(groups1.equals(groups2));
        System.assert(groups2.equals(groups1));
        System.assert(groups1.equals(groups1));
        System.assert(groups3.equals(groups4));
        System.assert(groups4.equals(groups3));
        System.assert(groups3.equals(groups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = OASGroups.getExample();
        OASGroups groups3 = new OASGroups();
        OASGroups groups4 = new OASGroups();

        System.assert(groups1.equals(groups2));
        System.assert(groups2.equals(groups1));
        System.assert(groups3.equals(groups4));
        System.assert(groups4.equals(groups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = new OASGroups();

        System.assertEquals(false, groups1.equals('foo'));
        System.assertEquals(false, groups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = new OASGroups();
        OASGroups groups3;

        System.assertEquals(false, groups1.equals(groups3));
        System.assertEquals(false, groups2.equals(groups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = new OASGroups();

        System.assertEquals(groups1.hashCode(), groups1.hashCode());
        System.assertEquals(groups2.hashCode(), groups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroups groups1 = OASGroups.getExample();
        OASGroups groups2 = OASGroups.getExample();
        OASGroups groups3 = new OASGroups();
        OASGroups groups4 = new OASGroups();

        System.assert(groups1.equals(groups2));
        System.assert(groups3.equals(groups4));
        System.assertEquals(groups1.hashCode(), groups2.hashCode());
        System.assertEquals(groups3.hashCode(), groups4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroups groups = new OASGroups();
        System.assertEquals(new List<OASGroup>(), groups.groups);
    }
}