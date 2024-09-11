@isTest
private class OASOrganizationUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = organizationUpdate1;
        OASOrganizationUpdate organizationUpdate3 = new OASOrganizationUpdate();
        OASOrganizationUpdate organizationUpdate4 = organizationUpdate3;

        System.assert(organizationUpdate1.equals(organizationUpdate2));
        System.assert(organizationUpdate2.equals(organizationUpdate1));
        System.assert(organizationUpdate1.equals(organizationUpdate1));
        System.assert(organizationUpdate3.equals(organizationUpdate4));
        System.assert(organizationUpdate4.equals(organizationUpdate3));
        System.assert(organizationUpdate3.equals(organizationUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate3 = new OASOrganizationUpdate();
        OASOrganizationUpdate organizationUpdate4 = new OASOrganizationUpdate();

        System.assert(organizationUpdate1.equals(organizationUpdate2));
        System.assert(organizationUpdate2.equals(organizationUpdate1));
        System.assert(organizationUpdate3.equals(organizationUpdate4));
        System.assert(organizationUpdate4.equals(organizationUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = new OASOrganizationUpdate();

        System.assertEquals(false, organizationUpdate1.equals('foo'));
        System.assertEquals(false, organizationUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = new OASOrganizationUpdate();
        OASOrganizationUpdate organizationUpdate3;

        System.assertEquals(false, organizationUpdate1.equals(organizationUpdate3));
        System.assertEquals(false, organizationUpdate2.equals(organizationUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = new OASOrganizationUpdate();

        System.assertEquals(organizationUpdate1.hashCode(), organizationUpdate1.hashCode());
        System.assertEquals(organizationUpdate2.hashCode(), organizationUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrganizationUpdate organizationUpdate1 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate2 = OASOrganizationUpdate.getExample();
        OASOrganizationUpdate organizationUpdate3 = new OASOrganizationUpdate();
        OASOrganizationUpdate organizationUpdate4 = new OASOrganizationUpdate();

        System.assert(organizationUpdate1.equals(organizationUpdate2));
        System.assert(organizationUpdate3.equals(organizationUpdate4));
        System.assertEquals(organizationUpdate1.hashCode(), organizationUpdate2.hashCode());
        System.assertEquals(organizationUpdate3.hashCode(), organizationUpdate4.hashCode());
    }
}