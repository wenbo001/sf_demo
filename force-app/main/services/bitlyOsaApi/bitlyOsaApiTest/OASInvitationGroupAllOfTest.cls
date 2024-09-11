@isTest
private class OASInvitationGroupAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = invitationGroupAllOf1;
        OASInvitationGroupAllOf invitationGroupAllOf3 = new OASInvitationGroupAllOf();
        OASInvitationGroupAllOf invitationGroupAllOf4 = invitationGroupAllOf3;

        System.assert(invitationGroupAllOf1.equals(invitationGroupAllOf2));
        System.assert(invitationGroupAllOf2.equals(invitationGroupAllOf1));
        System.assert(invitationGroupAllOf1.equals(invitationGroupAllOf1));
        System.assert(invitationGroupAllOf3.equals(invitationGroupAllOf4));
        System.assert(invitationGroupAllOf4.equals(invitationGroupAllOf3));
        System.assert(invitationGroupAllOf3.equals(invitationGroupAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf3 = new OASInvitationGroupAllOf();
        OASInvitationGroupAllOf invitationGroupAllOf4 = new OASInvitationGroupAllOf();

        System.assert(invitationGroupAllOf1.equals(invitationGroupAllOf2));
        System.assert(invitationGroupAllOf2.equals(invitationGroupAllOf1));
        System.assert(invitationGroupAllOf3.equals(invitationGroupAllOf4));
        System.assert(invitationGroupAllOf4.equals(invitationGroupAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = new OASInvitationGroupAllOf();

        System.assertEquals(false, invitationGroupAllOf1.equals('foo'));
        System.assertEquals(false, invitationGroupAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = new OASInvitationGroupAllOf();
        OASInvitationGroupAllOf invitationGroupAllOf3;

        System.assertEquals(false, invitationGroupAllOf1.equals(invitationGroupAllOf3));
        System.assertEquals(false, invitationGroupAllOf2.equals(invitationGroupAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = new OASInvitationGroupAllOf();

        System.assertEquals(invitationGroupAllOf1.hashCode(), invitationGroupAllOf1.hashCode());
        System.assertEquals(invitationGroupAllOf2.hashCode(), invitationGroupAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationGroupAllOf invitationGroupAllOf1 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf2 = OASInvitationGroupAllOf.getExample();
        OASInvitationGroupAllOf invitationGroupAllOf3 = new OASInvitationGroupAllOf();
        OASInvitationGroupAllOf invitationGroupAllOf4 = new OASInvitationGroupAllOf();

        System.assert(invitationGroupAllOf1.equals(invitationGroupAllOf2));
        System.assert(invitationGroupAllOf3.equals(invitationGroupAllOf4));
        System.assertEquals(invitationGroupAllOf1.hashCode(), invitationGroupAllOf2.hashCode());
        System.assertEquals(invitationGroupAllOf3.hashCode(), invitationGroupAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvitationGroupAllOf invitationGroupAllOf = new OASInvitationGroupAllOf();
        Map<String, String> propertymappings = invitationGroupAllOf.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }
}