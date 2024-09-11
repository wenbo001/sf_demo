@isTest
private class OASInvitationForLoginTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = invitationForLogin1;
        OASInvitationForLogin invitationForLogin3 = new OASInvitationForLogin();
        OASInvitationForLogin invitationForLogin4 = invitationForLogin3;

        System.assert(invitationForLogin1.equals(invitationForLogin2));
        System.assert(invitationForLogin2.equals(invitationForLogin1));
        System.assert(invitationForLogin1.equals(invitationForLogin1));
        System.assert(invitationForLogin3.equals(invitationForLogin4));
        System.assert(invitationForLogin4.equals(invitationForLogin3));
        System.assert(invitationForLogin3.equals(invitationForLogin3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin3 = new OASInvitationForLogin();
        OASInvitationForLogin invitationForLogin4 = new OASInvitationForLogin();

        System.assert(invitationForLogin1.equals(invitationForLogin2));
        System.assert(invitationForLogin2.equals(invitationForLogin1));
        System.assert(invitationForLogin3.equals(invitationForLogin4));
        System.assert(invitationForLogin4.equals(invitationForLogin3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = new OASInvitationForLogin();

        System.assertEquals(false, invitationForLogin1.equals('foo'));
        System.assertEquals(false, invitationForLogin2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = new OASInvitationForLogin();
        OASInvitationForLogin invitationForLogin3;

        System.assertEquals(false, invitationForLogin1.equals(invitationForLogin3));
        System.assertEquals(false, invitationForLogin2.equals(invitationForLogin3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = new OASInvitationForLogin();

        System.assertEquals(invitationForLogin1.hashCode(), invitationForLogin1.hashCode());
        System.assertEquals(invitationForLogin2.hashCode(), invitationForLogin2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationForLogin invitationForLogin1 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin2 = OASInvitationForLogin.getExample();
        OASInvitationForLogin invitationForLogin3 = new OASInvitationForLogin();
        OASInvitationForLogin invitationForLogin4 = new OASInvitationForLogin();

        System.assert(invitationForLogin1.equals(invitationForLogin2));
        System.assert(invitationForLogin3.equals(invitationForLogin4));
        System.assertEquals(invitationForLogin1.hashCode(), invitationForLogin2.hashCode());
        System.assertEquals(invitationForLogin3.hashCode(), invitationForLogin4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvitationForLogin invitationForLogin = new OASInvitationForLogin();
        Map<String, String> propertymappings = invitationForLogin.getPropertyMappings();
        System.assertEquals('invitedByEmail', propertymappings.get('invited_by_email'));
        System.assertEquals('invitedBy', propertymappings.get('invited_by'));
        System.assertEquals('invitedOrgGuid', propertymappings.get('invited_org_guid'));
        System.assertEquals('invitedOrgName', propertymappings.get('invited_org_name'));
    }
}