@isTest
private class OASInvitationGroupTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = invitationGroup1;
        OASInvitationGroup invitationGroup3 = new OASInvitationGroup();
        OASInvitationGroup invitationGroup4 = invitationGroup3;

        System.assert(invitationGroup1.equals(invitationGroup2));
        System.assert(invitationGroup2.equals(invitationGroup1));
        System.assert(invitationGroup1.equals(invitationGroup1));
        System.assert(invitationGroup3.equals(invitationGroup4));
        System.assert(invitationGroup4.equals(invitationGroup3));
        System.assert(invitationGroup3.equals(invitationGroup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup3 = new OASInvitationGroup();
        OASInvitationGroup invitationGroup4 = new OASInvitationGroup();

        System.assert(invitationGroup1.equals(invitationGroup2));
        System.assert(invitationGroup2.equals(invitationGroup1));
        System.assert(invitationGroup3.equals(invitationGroup4));
        System.assert(invitationGroup4.equals(invitationGroup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = new OASInvitationGroup();

        System.assertEquals(false, invitationGroup1.equals('foo'));
        System.assertEquals(false, invitationGroup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = new OASInvitationGroup();
        OASInvitationGroup invitationGroup3;

        System.assertEquals(false, invitationGroup1.equals(invitationGroup3));
        System.assertEquals(false, invitationGroup2.equals(invitationGroup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = new OASInvitationGroup();

        System.assertEquals(invitationGroup1.hashCode(), invitationGroup1.hashCode());
        System.assertEquals(invitationGroup2.hashCode(), invitationGroup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationGroup invitationGroup1 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup2 = OASInvitationGroup.getExample();
        OASInvitationGroup invitationGroup3 = new OASInvitationGroup();
        OASInvitationGroup invitationGroup4 = new OASInvitationGroup();

        System.assert(invitationGroup1.equals(invitationGroup2));
        System.assert(invitationGroup3.equals(invitationGroup4));
        System.assertEquals(invitationGroup1.hashCode(), invitationGroup2.hashCode());
        System.assertEquals(invitationGroup3.hashCode(), invitationGroup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvitationGroup invitationGroup = new OASInvitationGroup();
        Map<String, String> propertymappings = invitationGroup.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }
}