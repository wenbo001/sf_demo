@isTest
private class OASDomainAgreementTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = domainAgreement1;
        OASDomainAgreement domainAgreement3 = new OASDomainAgreement();
        OASDomainAgreement domainAgreement4 = domainAgreement3;

        System.assert(domainAgreement1.equals(domainAgreement2));
        System.assert(domainAgreement2.equals(domainAgreement1));
        System.assert(domainAgreement1.equals(domainAgreement1));
        System.assert(domainAgreement3.equals(domainAgreement4));
        System.assert(domainAgreement4.equals(domainAgreement3));
        System.assert(domainAgreement3.equals(domainAgreement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement3 = new OASDomainAgreement();
        OASDomainAgreement domainAgreement4 = new OASDomainAgreement();

        System.assert(domainAgreement1.equals(domainAgreement2));
        System.assert(domainAgreement2.equals(domainAgreement1));
        System.assert(domainAgreement3.equals(domainAgreement4));
        System.assert(domainAgreement4.equals(domainAgreement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = new OASDomainAgreement();

        System.assertEquals(false, domainAgreement1.equals('foo'));
        System.assertEquals(false, domainAgreement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = new OASDomainAgreement();
        OASDomainAgreement domainAgreement3;

        System.assertEquals(false, domainAgreement1.equals(domainAgreement3));
        System.assertEquals(false, domainAgreement2.equals(domainAgreement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = new OASDomainAgreement();

        System.assertEquals(domainAgreement1.hashCode(), domainAgreement1.hashCode());
        System.assertEquals(domainAgreement2.hashCode(), domainAgreement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainAgreement domainAgreement1 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement2 = OASDomainAgreement.getExample();
        OASDomainAgreement domainAgreement3 = new OASDomainAgreement();
        OASDomainAgreement domainAgreement4 = new OASDomainAgreement();

        System.assert(domainAgreement1.equals(domainAgreement2));
        System.assert(domainAgreement3.equals(domainAgreement4));
        System.assertEquals(domainAgreement1.hashCode(), domainAgreement2.hashCode());
        System.assertEquals(domainAgreement3.hashCode(), domainAgreement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainAgreement domainAgreement = new OASDomainAgreement();
        Map<String, String> propertymappings = domainAgreement.getPropertyMappings();
        System.assertEquals('agreementKey', propertymappings.get('agreement_key'));
    }
}