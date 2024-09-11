@isTest
private class OASInvitationsErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = invitationsError1;
        OASInvitationsError invitationsError3 = new OASInvitationsError();
        OASInvitationsError invitationsError4 = invitationsError3;

        System.assert(invitationsError1.equals(invitationsError2));
        System.assert(invitationsError2.equals(invitationsError1));
        System.assert(invitationsError1.equals(invitationsError1));
        System.assert(invitationsError3.equals(invitationsError4));
        System.assert(invitationsError4.equals(invitationsError3));
        System.assert(invitationsError3.equals(invitationsError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError3 = new OASInvitationsError();
        OASInvitationsError invitationsError4 = new OASInvitationsError();

        System.assert(invitationsError1.equals(invitationsError2));
        System.assert(invitationsError2.equals(invitationsError1));
        System.assert(invitationsError3.equals(invitationsError4));
        System.assert(invitationsError4.equals(invitationsError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = new OASInvitationsError();

        System.assertEquals(false, invitationsError1.equals('foo'));
        System.assertEquals(false, invitationsError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = new OASInvitationsError();
        OASInvitationsError invitationsError3;

        System.assertEquals(false, invitationsError1.equals(invitationsError3));
        System.assertEquals(false, invitationsError2.equals(invitationsError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = new OASInvitationsError();

        System.assertEquals(invitationsError1.hashCode(), invitationsError1.hashCode());
        System.assertEquals(invitationsError2.hashCode(), invitationsError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationsError invitationsError1 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError2 = OASInvitationsError.getExample();
        OASInvitationsError invitationsError3 = new OASInvitationsError();
        OASInvitationsError invitationsError4 = new OASInvitationsError();

        System.assert(invitationsError1.equals(invitationsError2));
        System.assert(invitationsError3.equals(invitationsError4));
        System.assertEquals(invitationsError1.hashCode(), invitationsError2.hashCode());
        System.assertEquals(invitationsError3.hashCode(), invitationsError4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitationsError invitationsError = new OASInvitationsError();
        System.assertEquals(new List<String>(), invitationsError.emails);
        System.assertEquals(null, invitationsError.message);
    }
}