@isTest
private class OASPatchOrgInvitationRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = patchOrgInvitationRequest1;
        OASPatchOrgInvitationRequest patchOrgInvitationRequest3 = new OASPatchOrgInvitationRequest();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest4 = patchOrgInvitationRequest3;

        System.assert(patchOrgInvitationRequest1.equals(patchOrgInvitationRequest2));
        System.assert(patchOrgInvitationRequest2.equals(patchOrgInvitationRequest1));
        System.assert(patchOrgInvitationRequest1.equals(patchOrgInvitationRequest1));
        System.assert(patchOrgInvitationRequest3.equals(patchOrgInvitationRequest4));
        System.assert(patchOrgInvitationRequest4.equals(patchOrgInvitationRequest3));
        System.assert(patchOrgInvitationRequest3.equals(patchOrgInvitationRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest3 = new OASPatchOrgInvitationRequest();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest4 = new OASPatchOrgInvitationRequest();

        System.assert(patchOrgInvitationRequest1.equals(patchOrgInvitationRequest2));
        System.assert(patchOrgInvitationRequest2.equals(patchOrgInvitationRequest1));
        System.assert(patchOrgInvitationRequest3.equals(patchOrgInvitationRequest4));
        System.assert(patchOrgInvitationRequest4.equals(patchOrgInvitationRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = new OASPatchOrgInvitationRequest();

        System.assertEquals(false, patchOrgInvitationRequest1.equals('foo'));
        System.assertEquals(false, patchOrgInvitationRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = new OASPatchOrgInvitationRequest();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest3;

        System.assertEquals(false, patchOrgInvitationRequest1.equals(patchOrgInvitationRequest3));
        System.assertEquals(false, patchOrgInvitationRequest2.equals(patchOrgInvitationRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = new OASPatchOrgInvitationRequest();

        System.assertEquals(patchOrgInvitationRequest1.hashCode(), patchOrgInvitationRequest1.hashCode());
        System.assertEquals(patchOrgInvitationRequest2.hashCode(), patchOrgInvitationRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPatchOrgInvitationRequest patchOrgInvitationRequest1 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest2 = OASPatchOrgInvitationRequest.getExample();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest3 = new OASPatchOrgInvitationRequest();
        OASPatchOrgInvitationRequest patchOrgInvitationRequest4 = new OASPatchOrgInvitationRequest();

        System.assert(patchOrgInvitationRequest1.equals(patchOrgInvitationRequest2));
        System.assert(patchOrgInvitationRequest3.equals(patchOrgInvitationRequest4));
        System.assertEquals(patchOrgInvitationRequest1.hashCode(), patchOrgInvitationRequest2.hashCode());
        System.assertEquals(patchOrgInvitationRequest3.hashCode(), patchOrgInvitationRequest4.hashCode());
    }
}