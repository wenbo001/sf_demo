@isTest
private class OASOrgInvitationRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = orgInvitationRequest1;
        OASOrgInvitationRequest orgInvitationRequest3 = new OASOrgInvitationRequest();
        OASOrgInvitationRequest orgInvitationRequest4 = orgInvitationRequest3;

        System.assert(orgInvitationRequest1.equals(orgInvitationRequest2));
        System.assert(orgInvitationRequest2.equals(orgInvitationRequest1));
        System.assert(orgInvitationRequest1.equals(orgInvitationRequest1));
        System.assert(orgInvitationRequest3.equals(orgInvitationRequest4));
        System.assert(orgInvitationRequest4.equals(orgInvitationRequest3));
        System.assert(orgInvitationRequest3.equals(orgInvitationRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest3 = new OASOrgInvitationRequest();
        OASOrgInvitationRequest orgInvitationRequest4 = new OASOrgInvitationRequest();

        System.assert(orgInvitationRequest1.equals(orgInvitationRequest2));
        System.assert(orgInvitationRequest2.equals(orgInvitationRequest1));
        System.assert(orgInvitationRequest3.equals(orgInvitationRequest4));
        System.assert(orgInvitationRequest4.equals(orgInvitationRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = new OASOrgInvitationRequest();

        System.assertEquals(false, orgInvitationRequest1.equals('foo'));
        System.assertEquals(false, orgInvitationRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = new OASOrgInvitationRequest();
        OASOrgInvitationRequest orgInvitationRequest3;

        System.assertEquals(false, orgInvitationRequest1.equals(orgInvitationRequest3));
        System.assertEquals(false, orgInvitationRequest2.equals(orgInvitationRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = new OASOrgInvitationRequest();

        System.assertEquals(orgInvitationRequest1.hashCode(), orgInvitationRequest1.hashCode());
        System.assertEquals(orgInvitationRequest2.hashCode(), orgInvitationRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgInvitationRequest orgInvitationRequest1 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest2 = OASOrgInvitationRequest.getExample();
        OASOrgInvitationRequest orgInvitationRequest3 = new OASOrgInvitationRequest();
        OASOrgInvitationRequest orgInvitationRequest4 = new OASOrgInvitationRequest();

        System.assert(orgInvitationRequest1.equals(orgInvitationRequest2));
        System.assert(orgInvitationRequest3.equals(orgInvitationRequest4));
        System.assertEquals(orgInvitationRequest1.hashCode(), orgInvitationRequest2.hashCode());
        System.assertEquals(orgInvitationRequest3.hashCode(), orgInvitationRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgInvitationRequest orgInvitationRequest = new OASOrgInvitationRequest();
        Map<String, String> propertymappings = orgInvitationRequest.getPropertyMappings();
        System.assertEquals('isSsoUser', propertymappings.get('is_sso_user'));
    }
}