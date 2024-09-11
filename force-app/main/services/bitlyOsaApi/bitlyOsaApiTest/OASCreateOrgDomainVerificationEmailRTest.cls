@isTest
private class OASCreateOrgDomainVerificationEmailRTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = createOrgDomainVerificationEmailRequest1;
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest3 = new OASCreateOrgDomainVerificationEmailR();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest4 = createOrgDomainVerificationEmailRequest3;

        System.assert(createOrgDomainVerificationEmailRequest1.equals(createOrgDomainVerificationEmailRequest2));
        System.assert(createOrgDomainVerificationEmailRequest2.equals(createOrgDomainVerificationEmailRequest1));
        System.assert(createOrgDomainVerificationEmailRequest1.equals(createOrgDomainVerificationEmailRequest1));
        System.assert(createOrgDomainVerificationEmailRequest3.equals(createOrgDomainVerificationEmailRequest4));
        System.assert(createOrgDomainVerificationEmailRequest4.equals(createOrgDomainVerificationEmailRequest3));
        System.assert(createOrgDomainVerificationEmailRequest3.equals(createOrgDomainVerificationEmailRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest3 = new OASCreateOrgDomainVerificationEmailR();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest4 = new OASCreateOrgDomainVerificationEmailR();

        System.assert(createOrgDomainVerificationEmailRequest1.equals(createOrgDomainVerificationEmailRequest2));
        System.assert(createOrgDomainVerificationEmailRequest2.equals(createOrgDomainVerificationEmailRequest1));
        System.assert(createOrgDomainVerificationEmailRequest3.equals(createOrgDomainVerificationEmailRequest4));
        System.assert(createOrgDomainVerificationEmailRequest4.equals(createOrgDomainVerificationEmailRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = new OASCreateOrgDomainVerificationEmailR();

        System.assertEquals(false, createOrgDomainVerificationEmailRequest1.equals('foo'));
        System.assertEquals(false, createOrgDomainVerificationEmailRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = new OASCreateOrgDomainVerificationEmailR();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest3;

        System.assertEquals(false, createOrgDomainVerificationEmailRequest1.equals(createOrgDomainVerificationEmailRequest3));
        System.assertEquals(false, createOrgDomainVerificationEmailRequest2.equals(createOrgDomainVerificationEmailRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = new OASCreateOrgDomainVerificationEmailR();

        System.assertEquals(createOrgDomainVerificationEmailRequest1.hashCode(), createOrgDomainVerificationEmailRequest1.hashCode());
        System.assertEquals(createOrgDomainVerificationEmailRequest2.hashCode(), createOrgDomainVerificationEmailRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest1 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest2 = OASCreateOrgDomainVerificationEmailR.getExample();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest3 = new OASCreateOrgDomainVerificationEmailR();
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest4 = new OASCreateOrgDomainVerificationEmailR();

        System.assert(createOrgDomainVerificationEmailRequest1.equals(createOrgDomainVerificationEmailRequest2));
        System.assert(createOrgDomainVerificationEmailRequest3.equals(createOrgDomainVerificationEmailRequest4));
        System.assertEquals(createOrgDomainVerificationEmailRequest1.hashCode(), createOrgDomainVerificationEmailRequest2.hashCode());
        System.assertEquals(createOrgDomainVerificationEmailRequest3.hashCode(), createOrgDomainVerificationEmailRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateOrgDomainVerificationEmailR createOrgDomainVerificationEmailRequest = new OASCreateOrgDomainVerificationEmailR();
        Map<String, String> propertymappings = createOrgDomainVerificationEmailRequest.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}