@isTest
private class OASDomainRegistrarInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = domainRegistrarInfo1;
        OASDomainRegistrarInfo domainRegistrarInfo3 = new OASDomainRegistrarInfo();
        OASDomainRegistrarInfo domainRegistrarInfo4 = domainRegistrarInfo3;

        System.assert(domainRegistrarInfo1.equals(domainRegistrarInfo2));
        System.assert(domainRegistrarInfo2.equals(domainRegistrarInfo1));
        System.assert(domainRegistrarInfo1.equals(domainRegistrarInfo1));
        System.assert(domainRegistrarInfo3.equals(domainRegistrarInfo4));
        System.assert(domainRegistrarInfo4.equals(domainRegistrarInfo3));
        System.assert(domainRegistrarInfo3.equals(domainRegistrarInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo3 = new OASDomainRegistrarInfo();
        OASDomainRegistrarInfo domainRegistrarInfo4 = new OASDomainRegistrarInfo();

        System.assert(domainRegistrarInfo1.equals(domainRegistrarInfo2));
        System.assert(domainRegistrarInfo2.equals(domainRegistrarInfo1));
        System.assert(domainRegistrarInfo3.equals(domainRegistrarInfo4));
        System.assert(domainRegistrarInfo4.equals(domainRegistrarInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = new OASDomainRegistrarInfo();

        System.assertEquals(false, domainRegistrarInfo1.equals('foo'));
        System.assertEquals(false, domainRegistrarInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = new OASDomainRegistrarInfo();
        OASDomainRegistrarInfo domainRegistrarInfo3;

        System.assertEquals(false, domainRegistrarInfo1.equals(domainRegistrarInfo3));
        System.assertEquals(false, domainRegistrarInfo2.equals(domainRegistrarInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = new OASDomainRegistrarInfo();

        System.assertEquals(domainRegistrarInfo1.hashCode(), domainRegistrarInfo1.hashCode());
        System.assertEquals(domainRegistrarInfo2.hashCode(), domainRegistrarInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainRegistrarInfo domainRegistrarInfo1 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo2 = OASDomainRegistrarInfo.getExample();
        OASDomainRegistrarInfo domainRegistrarInfo3 = new OASDomainRegistrarInfo();
        OASDomainRegistrarInfo domainRegistrarInfo4 = new OASDomainRegistrarInfo();

        System.assert(domainRegistrarInfo1.equals(domainRegistrarInfo2));
        System.assert(domainRegistrarInfo3.equals(domainRegistrarInfo4));
        System.assertEquals(domainRegistrarInfo1.hashCode(), domainRegistrarInfo2.hashCode());
        System.assertEquals(domainRegistrarInfo3.hashCode(), domainRegistrarInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainRegistrarInfo domainRegistrarInfo = new OASDomainRegistrarInfo();
        Map<String, String> propertymappings = domainRegistrarInfo.getPropertyMappings();
        System.assertEquals('renewAuto', propertymappings.get('renew_auto'));
        System.assertEquals('renewDeadline', propertymappings.get('renew_deadline'));
        System.assertEquals('expirationProtected', propertymappings.get('expiration_protected'));
    }
}