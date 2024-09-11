@isTest
private class OASDomainUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = domainUpdate1;
        OASDomainUpdate domainUpdate3 = new OASDomainUpdate();
        OASDomainUpdate domainUpdate4 = domainUpdate3;

        System.assert(domainUpdate1.equals(domainUpdate2));
        System.assert(domainUpdate2.equals(domainUpdate1));
        System.assert(domainUpdate1.equals(domainUpdate1));
        System.assert(domainUpdate3.equals(domainUpdate4));
        System.assert(domainUpdate4.equals(domainUpdate3));
        System.assert(domainUpdate3.equals(domainUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate3 = new OASDomainUpdate();
        OASDomainUpdate domainUpdate4 = new OASDomainUpdate();

        System.assert(domainUpdate1.equals(domainUpdate2));
        System.assert(domainUpdate2.equals(domainUpdate1));
        System.assert(domainUpdate3.equals(domainUpdate4));
        System.assert(domainUpdate4.equals(domainUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = new OASDomainUpdate();

        System.assertEquals(false, domainUpdate1.equals('foo'));
        System.assertEquals(false, domainUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = new OASDomainUpdate();
        OASDomainUpdate domainUpdate3;

        System.assertEquals(false, domainUpdate1.equals(domainUpdate3));
        System.assertEquals(false, domainUpdate2.equals(domainUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = new OASDomainUpdate();

        System.assertEquals(domainUpdate1.hashCode(), domainUpdate1.hashCode());
        System.assertEquals(domainUpdate2.hashCode(), domainUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainUpdate domainUpdate1 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate2 = OASDomainUpdate.getExample();
        OASDomainUpdate domainUpdate3 = new OASDomainUpdate();
        OASDomainUpdate domainUpdate4 = new OASDomainUpdate();

        System.assert(domainUpdate1.equals(domainUpdate2));
        System.assert(domainUpdate3.equals(domainUpdate4));
        System.assertEquals(domainUpdate1.hashCode(), domainUpdate2.hashCode());
        System.assertEquals(domainUpdate3.hashCode(), domainUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainUpdate domainUpdate = new OASDomainUpdate();
        Map<String, String> propertymappings = domainUpdate.getPropertyMappings();
        System.assertEquals('rootRedirect', propertymappings.get('root_redirect'));
        System.assertEquals('wildcardRedirect', propertymappings.get('wildcard_redirect'));
        System.assertEquals('httpsEnabled', propertymappings.get('https_enabled'));
        System.assertEquals('hstsEnabled', propertymappings.get('hsts_enabled'));
        System.assertEquals('upgradeInsecureRequests', propertymappings.get('upgrade_insecure_requests'));
    }
}