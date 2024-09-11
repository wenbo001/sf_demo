@isTest
private class OASCreateOAuthAppReqTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = createOAuthAppReq1;
        OASCreateOAuthAppReq createOAuthAppReq3 = new OASCreateOAuthAppReq();
        OASCreateOAuthAppReq createOAuthAppReq4 = createOAuthAppReq3;

        System.assert(createOAuthAppReq1.equals(createOAuthAppReq2));
        System.assert(createOAuthAppReq2.equals(createOAuthAppReq1));
        System.assert(createOAuthAppReq1.equals(createOAuthAppReq1));
        System.assert(createOAuthAppReq3.equals(createOAuthAppReq4));
        System.assert(createOAuthAppReq4.equals(createOAuthAppReq3));
        System.assert(createOAuthAppReq3.equals(createOAuthAppReq3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq3 = new OASCreateOAuthAppReq();
        OASCreateOAuthAppReq createOAuthAppReq4 = new OASCreateOAuthAppReq();

        System.assert(createOAuthAppReq1.equals(createOAuthAppReq2));
        System.assert(createOAuthAppReq2.equals(createOAuthAppReq1));
        System.assert(createOAuthAppReq3.equals(createOAuthAppReq4));
        System.assert(createOAuthAppReq4.equals(createOAuthAppReq3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = new OASCreateOAuthAppReq();

        System.assertEquals(false, createOAuthAppReq1.equals('foo'));
        System.assertEquals(false, createOAuthAppReq2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = new OASCreateOAuthAppReq();
        OASCreateOAuthAppReq createOAuthAppReq3;

        System.assertEquals(false, createOAuthAppReq1.equals(createOAuthAppReq3));
        System.assertEquals(false, createOAuthAppReq2.equals(createOAuthAppReq3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = new OASCreateOAuthAppReq();

        System.assertEquals(createOAuthAppReq1.hashCode(), createOAuthAppReq1.hashCode());
        System.assertEquals(createOAuthAppReq2.hashCode(), createOAuthAppReq2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateOAuthAppReq createOAuthAppReq1 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq2 = OASCreateOAuthAppReq.getExample();
        OASCreateOAuthAppReq createOAuthAppReq3 = new OASCreateOAuthAppReq();
        OASCreateOAuthAppReq createOAuthAppReq4 = new OASCreateOAuthAppReq();

        System.assert(createOAuthAppReq1.equals(createOAuthAppReq2));
        System.assert(createOAuthAppReq3.equals(createOAuthAppReq4));
        System.assertEquals(createOAuthAppReq1.hashCode(), createOAuthAppReq2.hashCode());
        System.assertEquals(createOAuthAppReq3.hashCode(), createOAuthAppReq4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateOAuthAppReq createOAuthAppReq = new OASCreateOAuthAppReq();
        Map<String, String> propertymappings = createOAuthAppReq.getPropertyMappings();
        System.assertEquals('redirectUris', propertymappings.get('redirect_uris'));
        System.assertEquals('ipAllowlist', propertymappings.get('ip_allowlist'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCreateOAuthAppReq createOAuthAppReq = new OASCreateOAuthAppReq();
        System.assertEquals(new List<String>(), createOAuthAppReq.redirectUris);
        System.assertEquals(new List<String>(), createOAuthAppReq.ipAllowlist);
        System.assertEquals(null, createOAuthAppReq.name);
        System.assertEquals(null, createOAuthAppReq.description);
        System.assertEquals(null, createOAuthAppReq.link);
    }
}