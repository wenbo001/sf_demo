@isTest
private class OASInvitationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = invitations1;
        OASInvitations invitations3 = new OASInvitations();
        OASInvitations invitations4 = invitations3;

        System.assert(invitations1.equals(invitations2));
        System.assert(invitations2.equals(invitations1));
        System.assert(invitations1.equals(invitations1));
        System.assert(invitations3.equals(invitations4));
        System.assert(invitations4.equals(invitations3));
        System.assert(invitations3.equals(invitations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = OASInvitations.getExample();
        OASInvitations invitations3 = new OASInvitations();
        OASInvitations invitations4 = new OASInvitations();

        System.assert(invitations1.equals(invitations2));
        System.assert(invitations2.equals(invitations1));
        System.assert(invitations3.equals(invitations4));
        System.assert(invitations4.equals(invitations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = new OASInvitations();

        System.assertEquals(false, invitations1.equals('foo'));
        System.assertEquals(false, invitations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = new OASInvitations();
        OASInvitations invitations3;

        System.assertEquals(false, invitations1.equals(invitations3));
        System.assertEquals(false, invitations2.equals(invitations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = new OASInvitations();

        System.assertEquals(invitations1.hashCode(), invitations1.hashCode());
        System.assertEquals(invitations2.hashCode(), invitations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitations invitations1 = OASInvitations.getExample();
        OASInvitations invitations2 = OASInvitations.getExample();
        OASInvitations invitations3 = new OASInvitations();
        OASInvitations invitations4 = new OASInvitations();

        System.assert(invitations1.equals(invitations2));
        System.assert(invitations3.equals(invitations4));
        System.assertEquals(invitations1.hashCode(), invitations2.hashCode());
        System.assertEquals(invitations3.hashCode(), invitations4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitations invitations = new OASInvitations();
        System.assertEquals(new List<OASInvitation>(), invitations.invitations);
    }
}