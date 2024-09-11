@isTest
private class OASDomainStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = domainStatus1;
        OASDomainStatus domainStatus3 = new OASDomainStatus();
        OASDomainStatus domainStatus4 = domainStatus3;

        System.assert(domainStatus1.equals(domainStatus2));
        System.assert(domainStatus2.equals(domainStatus1));
        System.assert(domainStatus1.equals(domainStatus1));
        System.assert(domainStatus3.equals(domainStatus4));
        System.assert(domainStatus4.equals(domainStatus3));
        System.assert(domainStatus3.equals(domainStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus3 = new OASDomainStatus();
        OASDomainStatus domainStatus4 = new OASDomainStatus();

        System.assert(domainStatus1.equals(domainStatus2));
        System.assert(domainStatus2.equals(domainStatus1));
        System.assert(domainStatus3.equals(domainStatus4));
        System.assert(domainStatus4.equals(domainStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = new OASDomainStatus();

        System.assertEquals(false, domainStatus1.equals('foo'));
        System.assertEquals(false, domainStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = new OASDomainStatus();
        OASDomainStatus domainStatus3;

        System.assertEquals(false, domainStatus1.equals(domainStatus3));
        System.assertEquals(false, domainStatus2.equals(domainStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = new OASDomainStatus();

        System.assertEquals(domainStatus1.hashCode(), domainStatus1.hashCode());
        System.assertEquals(domainStatus2.hashCode(), domainStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainStatus domainStatus1 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus2 = OASDomainStatus.getExample();
        OASDomainStatus domainStatus3 = new OASDomainStatus();
        OASDomainStatus domainStatus4 = new OASDomainStatus();

        System.assert(domainStatus1.equals(domainStatus2));
        System.assert(domainStatus3.equals(domainStatus4));
        System.assertEquals(domainStatus1.hashCode(), domainStatus2.hashCode());
        System.assertEquals(domainStatus3.hashCode(), domainStatus4.hashCode());
    }
}