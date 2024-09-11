@isTest
private class OASOrganizationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = organizations1;
        OASOrganizations organizations3 = new OASOrganizations();
        OASOrganizations organizations4 = organizations3;

        System.assert(organizations1.equals(organizations2));
        System.assert(organizations2.equals(organizations1));
        System.assert(organizations1.equals(organizations1));
        System.assert(organizations3.equals(organizations4));
        System.assert(organizations4.equals(organizations3));
        System.assert(organizations3.equals(organizations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = OASOrganizations.getExample();
        OASOrganizations organizations3 = new OASOrganizations();
        OASOrganizations organizations4 = new OASOrganizations();

        System.assert(organizations1.equals(organizations2));
        System.assert(organizations2.equals(organizations1));
        System.assert(organizations3.equals(organizations4));
        System.assert(organizations4.equals(organizations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = new OASOrganizations();

        System.assertEquals(false, organizations1.equals('foo'));
        System.assertEquals(false, organizations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = new OASOrganizations();
        OASOrganizations organizations3;

        System.assertEquals(false, organizations1.equals(organizations3));
        System.assertEquals(false, organizations2.equals(organizations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = new OASOrganizations();

        System.assertEquals(organizations1.hashCode(), organizations1.hashCode());
        System.assertEquals(organizations2.hashCode(), organizations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizations organizations1 = OASOrganizations.getExample();
        OASOrganizations organizations2 = OASOrganizations.getExample();
        OASOrganizations organizations3 = new OASOrganizations();
        OASOrganizations organizations4 = new OASOrganizations();

        System.assert(organizations1.equals(organizations2));
        System.assert(organizations3.equals(organizations4));
        System.assertEquals(organizations1.hashCode(), organizations2.hashCode());
        System.assertEquals(organizations3.hashCode(), organizations4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrganizations organizations = new OASOrganizations();
        System.assertEquals(new List<OASOrganization>(), organizations.organizations);
    }
}