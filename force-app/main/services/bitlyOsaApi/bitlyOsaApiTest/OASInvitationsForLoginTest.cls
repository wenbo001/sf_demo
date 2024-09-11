@isTest
private class OASInvitationsForLoginTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = invitationsForLogin1;
        OASInvitationsForLogin invitationsForLogin3 = new OASInvitationsForLogin();
        OASInvitationsForLogin invitationsForLogin4 = invitationsForLogin3;

        System.assert(invitationsForLogin1.equals(invitationsForLogin2));
        System.assert(invitationsForLogin2.equals(invitationsForLogin1));
        System.assert(invitationsForLogin1.equals(invitationsForLogin1));
        System.assert(invitationsForLogin3.equals(invitationsForLogin4));
        System.assert(invitationsForLogin4.equals(invitationsForLogin3));
        System.assert(invitationsForLogin3.equals(invitationsForLogin3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin3 = new OASInvitationsForLogin();
        OASInvitationsForLogin invitationsForLogin4 = new OASInvitationsForLogin();

        System.assert(invitationsForLogin1.equals(invitationsForLogin2));
        System.assert(invitationsForLogin2.equals(invitationsForLogin1));
        System.assert(invitationsForLogin3.equals(invitationsForLogin4));
        System.assert(invitationsForLogin4.equals(invitationsForLogin3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = new OASInvitationsForLogin();

        System.assertEquals(false, invitationsForLogin1.equals('foo'));
        System.assertEquals(false, invitationsForLogin2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = new OASInvitationsForLogin();
        OASInvitationsForLogin invitationsForLogin3;

        System.assertEquals(false, invitationsForLogin1.equals(invitationsForLogin3));
        System.assertEquals(false, invitationsForLogin2.equals(invitationsForLogin3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = new OASInvitationsForLogin();

        System.assertEquals(invitationsForLogin1.hashCode(), invitationsForLogin1.hashCode());
        System.assertEquals(invitationsForLogin2.hashCode(), invitationsForLogin2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationsForLogin invitationsForLogin1 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin2 = OASInvitationsForLogin.getExample();
        OASInvitationsForLogin invitationsForLogin3 = new OASInvitationsForLogin();
        OASInvitationsForLogin invitationsForLogin4 = new OASInvitationsForLogin();

        System.assert(invitationsForLogin1.equals(invitationsForLogin2));
        System.assert(invitationsForLogin3.equals(invitationsForLogin4));
        System.assertEquals(invitationsForLogin1.hashCode(), invitationsForLogin2.hashCode());
        System.assertEquals(invitationsForLogin3.hashCode(), invitationsForLogin4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitationsForLogin invitationsForLogin = new OASInvitationsForLogin();
        System.assertEquals(new List<OASInvitationForLogin>(), invitationsForLogin.invitations);
    }
}