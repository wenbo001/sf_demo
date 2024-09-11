@isTest
private class OASInvitationsErrorAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = invitationsErrorAllOf1;
        OASInvitationsErrorAllOf invitationsErrorAllOf3 = new OASInvitationsErrorAllOf();
        OASInvitationsErrorAllOf invitationsErrorAllOf4 = invitationsErrorAllOf3;

        System.assert(invitationsErrorAllOf1.equals(invitationsErrorAllOf2));
        System.assert(invitationsErrorAllOf2.equals(invitationsErrorAllOf1));
        System.assert(invitationsErrorAllOf1.equals(invitationsErrorAllOf1));
        System.assert(invitationsErrorAllOf3.equals(invitationsErrorAllOf4));
        System.assert(invitationsErrorAllOf4.equals(invitationsErrorAllOf3));
        System.assert(invitationsErrorAllOf3.equals(invitationsErrorAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf3 = new OASInvitationsErrorAllOf();
        OASInvitationsErrorAllOf invitationsErrorAllOf4 = new OASInvitationsErrorAllOf();

        System.assert(invitationsErrorAllOf1.equals(invitationsErrorAllOf2));
        System.assert(invitationsErrorAllOf2.equals(invitationsErrorAllOf1));
        System.assert(invitationsErrorAllOf3.equals(invitationsErrorAllOf4));
        System.assert(invitationsErrorAllOf4.equals(invitationsErrorAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = new OASInvitationsErrorAllOf();

        System.assertEquals(false, invitationsErrorAllOf1.equals('foo'));
        System.assertEquals(false, invitationsErrorAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = new OASInvitationsErrorAllOf();
        OASInvitationsErrorAllOf invitationsErrorAllOf3;

        System.assertEquals(false, invitationsErrorAllOf1.equals(invitationsErrorAllOf3));
        System.assertEquals(false, invitationsErrorAllOf2.equals(invitationsErrorAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = new OASInvitationsErrorAllOf();

        System.assertEquals(invitationsErrorAllOf1.hashCode(), invitationsErrorAllOf1.hashCode());
        System.assertEquals(invitationsErrorAllOf2.hashCode(), invitationsErrorAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitationsErrorAllOf invitationsErrorAllOf1 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf2 = OASInvitationsErrorAllOf.getExample();
        OASInvitationsErrorAllOf invitationsErrorAllOf3 = new OASInvitationsErrorAllOf();
        OASInvitationsErrorAllOf invitationsErrorAllOf4 = new OASInvitationsErrorAllOf();

        System.assert(invitationsErrorAllOf1.equals(invitationsErrorAllOf2));
        System.assert(invitationsErrorAllOf3.equals(invitationsErrorAllOf4));
        System.assertEquals(invitationsErrorAllOf1.hashCode(), invitationsErrorAllOf2.hashCode());
        System.assertEquals(invitationsErrorAllOf3.hashCode(), invitationsErrorAllOf4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitationsErrorAllOf invitationsErrorAllOf = new OASInvitationsErrorAllOf();
        System.assertEquals(new List<String>(), invitationsErrorAllOf.emails);
        System.assertEquals(null, invitationsErrorAllOf.message);
    }
}