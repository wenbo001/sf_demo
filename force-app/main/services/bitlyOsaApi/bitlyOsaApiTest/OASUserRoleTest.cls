@isTest
private class OASUserRoleTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = userRole1;
        OASUserRole userRole3 = new OASUserRole();
        OASUserRole userRole4 = userRole3;

        System.assert(userRole1.equals(userRole2));
        System.assert(userRole2.equals(userRole1));
        System.assert(userRole1.equals(userRole1));
        System.assert(userRole3.equals(userRole4));
        System.assert(userRole4.equals(userRole3));
        System.assert(userRole3.equals(userRole3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = OASUserRole.getExample();
        OASUserRole userRole3 = new OASUserRole();
        OASUserRole userRole4 = new OASUserRole();

        System.assert(userRole1.equals(userRole2));
        System.assert(userRole2.equals(userRole1));
        System.assert(userRole3.equals(userRole4));
        System.assert(userRole4.equals(userRole3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = new OASUserRole();

        System.assertEquals(false, userRole1.equals('foo'));
        System.assertEquals(false, userRole2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = new OASUserRole();
        OASUserRole userRole3;

        System.assertEquals(false, userRole1.equals(userRole3));
        System.assertEquals(false, userRole2.equals(userRole3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = new OASUserRole();

        System.assertEquals(userRole1.hashCode(), userRole1.hashCode());
        System.assertEquals(userRole2.hashCode(), userRole2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserRole userRole1 = OASUserRole.getExample();
        OASUserRole userRole2 = OASUserRole.getExample();
        OASUserRole userRole3 = new OASUserRole();
        OASUserRole userRole4 = new OASUserRole();

        System.assert(userRole1.equals(userRole2));
        System.assert(userRole3.equals(userRole4));
        System.assertEquals(userRole1.hashCode(), userRole2.hashCode());
        System.assertEquals(userRole3.hashCode(), userRole4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserRole userRole = new OASUserRole();
        Map<String, String> propertymappings = userRole.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }
}