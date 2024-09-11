@isTest
private class OASDomainDNSTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = domainDNS1;
        OASDomainDNS domainDNS3 = new OASDomainDNS();
        OASDomainDNS domainDNS4 = domainDNS3;

        System.assert(domainDNS1.equals(domainDNS2));
        System.assert(domainDNS2.equals(domainDNS1));
        System.assert(domainDNS1.equals(domainDNS1));
        System.assert(domainDNS3.equals(domainDNS4));
        System.assert(domainDNS4.equals(domainDNS3));
        System.assert(domainDNS3.equals(domainDNS3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS3 = new OASDomainDNS();
        OASDomainDNS domainDNS4 = new OASDomainDNS();

        System.assert(domainDNS1.equals(domainDNS2));
        System.assert(domainDNS2.equals(domainDNS1));
        System.assert(domainDNS3.equals(domainDNS4));
        System.assert(domainDNS4.equals(domainDNS3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = new OASDomainDNS();

        System.assertEquals(false, domainDNS1.equals('foo'));
        System.assertEquals(false, domainDNS2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = new OASDomainDNS();
        OASDomainDNS domainDNS3;

        System.assertEquals(false, domainDNS1.equals(domainDNS3));
        System.assertEquals(false, domainDNS2.equals(domainDNS3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = new OASDomainDNS();

        System.assertEquals(domainDNS1.hashCode(), domainDNS1.hashCode());
        System.assertEquals(domainDNS2.hashCode(), domainDNS2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainDNS domainDNS1 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS2 = OASDomainDNS.getExample();
        OASDomainDNS domainDNS3 = new OASDomainDNS();
        OASDomainDNS domainDNS4 = new OASDomainDNS();

        System.assert(domainDNS1.equals(domainDNS2));
        System.assert(domainDNS3.equals(domainDNS4));
        System.assertEquals(domainDNS1.hashCode(), domainDNS2.hashCode());
        System.assertEquals(domainDNS3.hashCode(), domainDNS4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainDNS domainDNS = new OASDomainDNS();
        Map<String, String> propertymappings = domainDNS.getPropertyMappings();
        System.assertEquals('dnsProvider', propertymappings.get('dns_provider'));
        System.assertEquals('recordsValid', propertymappings.get('records_valid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDomainDNS domainDNS = new OASDomainDNS();
        System.assertEquals(new List<String>(), domainDNS.records);
        System.assertEquals(null, domainDNS.domain);
        System.assertEquals(null, domainDNS.dnsProvider);
        System.assertEquals(null, domainDNS.type);
        System.assertEquals(null, domainDNS.recordsValid);
    }
}