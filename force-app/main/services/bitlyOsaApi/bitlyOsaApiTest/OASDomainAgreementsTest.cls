@isTest
private class OASDomainAgreementsTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = domainAgreements1;
        OASDomainAgreements domainAgreements3 = new OASDomainAgreements();
        OASDomainAgreements domainAgreements4 = domainAgreements3;

        System.assert(domainAgreements1.equals(domainAgreements2));
        System.assert(domainAgreements2.equals(domainAgreements1));
        System.assert(domainAgreements1.equals(domainAgreements1));
        System.assert(domainAgreements3.equals(domainAgreements4));
        System.assert(domainAgreements4.equals(domainAgreements3));
        System.assert(domainAgreements3.equals(domainAgreements3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements3 = new OASDomainAgreements();
        OASDomainAgreements domainAgreements4 = new OASDomainAgreements();

        System.assert(domainAgreements1.equals(domainAgreements2));
        System.assert(domainAgreements2.equals(domainAgreements1));
        System.assert(domainAgreements3.equals(domainAgreements4));
        System.assert(domainAgreements4.equals(domainAgreements3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = new OASDomainAgreements();

        System.assertEquals(false, domainAgreements1.equals('foo'));
        System.assertEquals(false, domainAgreements2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = new OASDomainAgreements();
        OASDomainAgreements domainAgreements3;

        System.assertEquals(false, domainAgreements1.equals(domainAgreements3));
        System.assertEquals(false, domainAgreements2.equals(domainAgreements3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = new OASDomainAgreements();

        System.assertEquals(domainAgreements1.hashCode(), domainAgreements1.hashCode());
        System.assertEquals(domainAgreements2.hashCode(), domainAgreements2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainAgreements domainAgreements1 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements2 = OASDomainAgreements.getExample();
        OASDomainAgreements domainAgreements3 = new OASDomainAgreements();
        OASDomainAgreements domainAgreements4 = new OASDomainAgreements();

        System.assert(domainAgreements1.equals(domainAgreements2));
        System.assert(domainAgreements3.equals(domainAgreements4));
        System.assertEquals(domainAgreements1.hashCode(), domainAgreements2.hashCode());
        System.assertEquals(domainAgreements3.hashCode(), domainAgreements4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainAgreements domainAgreements = new OASDomainAgreements();
        Map<String, String> propertymappings = domainAgreements.getPropertyMappings();
        System.assertEquals('domainAgreements', propertymappings.get('domain_agreements'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDomainAgreements domainAgreements = new OASDomainAgreements();
        System.assertEquals(new List<OASDomainAgreement>(), domainAgreements.domainAgreements);
    }
}