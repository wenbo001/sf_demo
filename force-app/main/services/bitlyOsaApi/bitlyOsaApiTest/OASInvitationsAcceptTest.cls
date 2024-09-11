@isTest
private class OASInvitationsAcceptTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = invitationsAccept1;
        OASInvitationsAccept invitationsAccept3 = new OASInvitationsAccept();
        OASInvitationsAccept invitationsAccept4 = invitationsAccept3;

        System.assert(invitationsAccept1.equals(invitationsAccept2));
        System.assert(invitationsAccept2.equals(invitationsAccept1));
        System.assert(invitationsAccept1.equals(invitationsAccept1));
        System.assert(invitationsAccept3.equals(invitationsAccept4));
        System.assert(invitationsAccept4.equals(invitationsAccept3));
        System.assert(invitationsAccept3.equals(invitationsAccept3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept3 = new OASInvitationsAccept();
        OASInvitationsAccept invitationsAccept4 = new OASInvitationsAccept();

        System.assert(invitationsAccept1.equals(invitationsAccept2));
        System.assert(invitationsAccept2.equals(invitationsAccept1));
        System.assert(invitationsAccept3.equals(invitationsAccept4));
        System.assert(invitationsAccept4.equals(invitationsAccept3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = new OASInvitationsAccept();

        System.assertEquals(false, invitationsAccept1.equals('foo'));
        System.assertEquals(false, invitationsAccept2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = new OASInvitationsAccept();
        OASInvitationsAccept invitationsAccept3;

        System.assertEquals(false, invitationsAccept1.equals(invitationsAccept3));
        System.assertEquals(false, invitationsAccept2.equals(invitationsAccept3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = new OASInvitationsAccept();

        System.assertEquals(invitationsAccept1.hashCode(), invitationsAccept1.hashCode());
        System.assertEquals(invitationsAccept2.hashCode(), invitationsAccept2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationsAccept invitationsAccept1 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept2 = OASInvitationsAccept.getExample();
        OASInvitationsAccept invitationsAccept3 = new OASInvitationsAccept();
        OASInvitationsAccept invitationsAccept4 = new OASInvitationsAccept();

        System.assert(invitationsAccept1.equals(invitationsAccept2));
        System.assert(invitationsAccept3.equals(invitationsAccept4));
        System.assertEquals(invitationsAccept1.hashCode(), invitationsAccept2.hashCode());
        System.assertEquals(invitationsAccept3.hashCode(), invitationsAccept4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitationsAccept invitationsAccept = new OASInvitationsAccept();
        System.assertEquals(new List<String>(), invitationsAccept.tokens);
    }
}