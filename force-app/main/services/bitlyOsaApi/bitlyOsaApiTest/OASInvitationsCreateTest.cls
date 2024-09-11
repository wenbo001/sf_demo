@isTest
private class OASInvitationsCreateTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = invitationsCreate1;
        OASInvitationsCreate invitationsCreate3 = new OASInvitationsCreate();
        OASInvitationsCreate invitationsCreate4 = invitationsCreate3;

        System.assert(invitationsCreate1.equals(invitationsCreate2));
        System.assert(invitationsCreate2.equals(invitationsCreate1));
        System.assert(invitationsCreate1.equals(invitationsCreate1));
        System.assert(invitationsCreate3.equals(invitationsCreate4));
        System.assert(invitationsCreate4.equals(invitationsCreate3));
        System.assert(invitationsCreate3.equals(invitationsCreate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate3 = new OASInvitationsCreate();
        OASInvitationsCreate invitationsCreate4 = new OASInvitationsCreate();

        System.assert(invitationsCreate1.equals(invitationsCreate2));
        System.assert(invitationsCreate2.equals(invitationsCreate1));
        System.assert(invitationsCreate3.equals(invitationsCreate4));
        System.assert(invitationsCreate4.equals(invitationsCreate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = new OASInvitationsCreate();

        System.assertEquals(false, invitationsCreate1.equals('foo'));
        System.assertEquals(false, invitationsCreate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = new OASInvitationsCreate();
        OASInvitationsCreate invitationsCreate3;

        System.assertEquals(false, invitationsCreate1.equals(invitationsCreate3));
        System.assertEquals(false, invitationsCreate2.equals(invitationsCreate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = new OASInvitationsCreate();

        System.assertEquals(invitationsCreate1.hashCode(), invitationsCreate1.hashCode());
        System.assertEquals(invitationsCreate2.hashCode(), invitationsCreate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationsCreate invitationsCreate1 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate2 = OASInvitationsCreate.getExample();
        OASInvitationsCreate invitationsCreate3 = new OASInvitationsCreate();
        OASInvitationsCreate invitationsCreate4 = new OASInvitationsCreate();

        System.assert(invitationsCreate1.equals(invitationsCreate2));
        System.assert(invitationsCreate3.equals(invitationsCreate4));
        System.assertEquals(invitationsCreate1.hashCode(), invitationsCreate2.hashCode());
        System.assertEquals(invitationsCreate3.hashCode(), invitationsCreate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvitationsCreate invitationsCreate = new OASInvitationsCreate();
        Map<String, String> propertymappings = invitationsCreate.getPropertyMappings();
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitationsCreate invitationsCreate = new OASInvitationsCreate();
        System.assertEquals(new List<String>(), invitationsCreate.emails);
        System.assertEquals(new List<OASInvitationGroup>(), invitationsCreate.groups);
        System.assertEquals(null, invitationsCreate.roleName);
        System.assertEquals(null, invitationsCreate.created);
        System.assertEquals(null, invitationsCreate.source);
    }
}