@isTest
private class OASOrgDomainVerificationTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = orgDomainVerification1;
        OASOrgDomainVerification orgDomainVerification3 = new OASOrgDomainVerification();
        OASOrgDomainVerification orgDomainVerification4 = orgDomainVerification3;

        System.assert(orgDomainVerification1.equals(orgDomainVerification2));
        System.assert(orgDomainVerification2.equals(orgDomainVerification1));
        System.assert(orgDomainVerification1.equals(orgDomainVerification1));
        System.assert(orgDomainVerification3.equals(orgDomainVerification4));
        System.assert(orgDomainVerification4.equals(orgDomainVerification3));
        System.assert(orgDomainVerification3.equals(orgDomainVerification3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification3 = new OASOrgDomainVerification();
        OASOrgDomainVerification orgDomainVerification4 = new OASOrgDomainVerification();

        System.assert(orgDomainVerification1.equals(orgDomainVerification2));
        System.assert(orgDomainVerification2.equals(orgDomainVerification1));
        System.assert(orgDomainVerification3.equals(orgDomainVerification4));
        System.assert(orgDomainVerification4.equals(orgDomainVerification3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = new OASOrgDomainVerification();

        System.assertEquals(false, orgDomainVerification1.equals('foo'));
        System.assertEquals(false, orgDomainVerification2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = new OASOrgDomainVerification();
        OASOrgDomainVerification orgDomainVerification3;

        System.assertEquals(false, orgDomainVerification1.equals(orgDomainVerification3));
        System.assertEquals(false, orgDomainVerification2.equals(orgDomainVerification3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = new OASOrgDomainVerification();

        System.assertEquals(orgDomainVerification1.hashCode(), orgDomainVerification1.hashCode());
        System.assertEquals(orgDomainVerification2.hashCode(), orgDomainVerification2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgDomainVerification orgDomainVerification1 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification2 = OASOrgDomainVerification.getExample();
        OASOrgDomainVerification orgDomainVerification3 = new OASOrgDomainVerification();
        OASOrgDomainVerification orgDomainVerification4 = new OASOrgDomainVerification();

        System.assert(orgDomainVerification1.equals(orgDomainVerification2));
        System.assert(orgDomainVerification3.equals(orgDomainVerification4));
        System.assertEquals(orgDomainVerification1.hashCode(), orgDomainVerification2.hashCode());
        System.assertEquals(orgDomainVerification3.hashCode(), orgDomainVerification4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgDomainVerification orgDomainVerification = new OASOrgDomainVerification();
        Map<String, String> propertymappings = orgDomainVerification.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}