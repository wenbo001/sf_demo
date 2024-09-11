@isTest
private class OASOrgInvitationRequestsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = orgInvitationRequests1;
        OASOrgInvitationRequests orgInvitationRequests3 = new OASOrgInvitationRequests();
        OASOrgInvitationRequests orgInvitationRequests4 = orgInvitationRequests3;

        System.assert(orgInvitationRequests1.equals(orgInvitationRequests2));
        System.assert(orgInvitationRequests2.equals(orgInvitationRequests1));
        System.assert(orgInvitationRequests1.equals(orgInvitationRequests1));
        System.assert(orgInvitationRequests3.equals(orgInvitationRequests4));
        System.assert(orgInvitationRequests4.equals(orgInvitationRequests3));
        System.assert(orgInvitationRequests3.equals(orgInvitationRequests3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests3 = new OASOrgInvitationRequests();
        OASOrgInvitationRequests orgInvitationRequests4 = new OASOrgInvitationRequests();

        System.assert(orgInvitationRequests1.equals(orgInvitationRequests2));
        System.assert(orgInvitationRequests2.equals(orgInvitationRequests1));
        System.assert(orgInvitationRequests3.equals(orgInvitationRequests4));
        System.assert(orgInvitationRequests4.equals(orgInvitationRequests3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = new OASOrgInvitationRequests();

        System.assertEquals(false, orgInvitationRequests1.equals('foo'));
        System.assertEquals(false, orgInvitationRequests2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = new OASOrgInvitationRequests();
        OASOrgInvitationRequests orgInvitationRequests3;

        System.assertEquals(false, orgInvitationRequests1.equals(orgInvitationRequests3));
        System.assertEquals(false, orgInvitationRequests2.equals(orgInvitationRequests3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = new OASOrgInvitationRequests();

        System.assertEquals(orgInvitationRequests1.hashCode(), orgInvitationRequests1.hashCode());
        System.assertEquals(orgInvitationRequests2.hashCode(), orgInvitationRequests2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgInvitationRequests orgInvitationRequests1 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests2 = OASOrgInvitationRequests.getExample();
        OASOrgInvitationRequests orgInvitationRequests3 = new OASOrgInvitationRequests();
        OASOrgInvitationRequests orgInvitationRequests4 = new OASOrgInvitationRequests();

        System.assert(orgInvitationRequests1.equals(orgInvitationRequests2));
        System.assert(orgInvitationRequests3.equals(orgInvitationRequests4));
        System.assertEquals(orgInvitationRequests1.hashCode(), orgInvitationRequests2.hashCode());
        System.assertEquals(orgInvitationRequests3.hashCode(), orgInvitationRequests4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgInvitationRequests orgInvitationRequests = new OASOrgInvitationRequests();
        Map<String, String> propertymappings = orgInvitationRequests.getPropertyMappings();
        System.assertEquals('orgInvitationRequests', propertymappings.get('org_invitation_requests'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrgInvitationRequests orgInvitationRequests = new OASOrgInvitationRequests();
        System.assertEquals(new List<OASOrgInvitationRequest>(), orgInvitationRequests.orgInvitationRequests);
    }
}