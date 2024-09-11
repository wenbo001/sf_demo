@isTest
private class OASInvitationTest {
    @isTest
    private static void equalsSameInstance() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = invitation1;
        OASInvitation invitation3 = new OASInvitation();
        OASInvitation invitation4 = invitation3;

        System.assert(invitation1.equals(invitation2));
        System.assert(invitation2.equals(invitation1));
        System.assert(invitation1.equals(invitation1));
        System.assert(invitation3.equals(invitation4));
        System.assert(invitation4.equals(invitation3));
        System.assert(invitation3.equals(invitation3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = OASInvitation.getExample();
        OASInvitation invitation3 = new OASInvitation();
        OASInvitation invitation4 = new OASInvitation();

        System.assert(invitation1.equals(invitation2));
        System.assert(invitation2.equals(invitation1));
        System.assert(invitation3.equals(invitation4));
        System.assert(invitation4.equals(invitation3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = new OASInvitation();

        System.assertEquals(false, invitation1.equals('foo'));
        System.assertEquals(false, invitation2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = new OASInvitation();
        OASInvitation invitation3;

        System.assertEquals(false, invitation1.equals(invitation3));
        System.assertEquals(false, invitation2.equals(invitation3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = new OASInvitation();

        System.assertEquals(invitation1.hashCode(), invitation1.hashCode());
        System.assertEquals(invitation2.hashCode(), invitation2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInvitation invitation1 = OASInvitation.getExample();
        OASInvitation invitation2 = OASInvitation.getExample();
        OASInvitation invitation3 = new OASInvitation();
        OASInvitation invitation4 = new OASInvitation();

        System.assert(invitation1.equals(invitation2));
        System.assert(invitation3.equals(invitation4));
        System.assertEquals(invitation1.hashCode(), invitation2.hashCode());
        System.assertEquals(invitation3.hashCode(), invitation4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInvitation invitation = new OASInvitation();
        Map<String, String> propertymappings = invitation.getPropertyMappings();
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInvitation invitation = new OASInvitation();
        System.assertEquals(new List<OASInvitationGroup>(), invitation.groups);
        System.assertEquals(null, invitation.email);
        System.assertEquals(null, invitation.roleName);
        System.assertEquals(null, invitation.created);
    }
}