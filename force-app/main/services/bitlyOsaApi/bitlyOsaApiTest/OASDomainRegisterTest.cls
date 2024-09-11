@isTest
private class OASDomainRegisterTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = domainRegister1;
        OASDomainRegister domainRegister3 = new OASDomainRegister();
        OASDomainRegister domainRegister4 = domainRegister3;

        System.assert(domainRegister1.equals(domainRegister2));
        System.assert(domainRegister2.equals(domainRegister1));
        System.assert(domainRegister1.equals(domainRegister1));
        System.assert(domainRegister3.equals(domainRegister4));
        System.assert(domainRegister4.equals(domainRegister3));
        System.assert(domainRegister3.equals(domainRegister3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister3 = new OASDomainRegister();
        OASDomainRegister domainRegister4 = new OASDomainRegister();

        System.assert(domainRegister1.equals(domainRegister2));
        System.assert(domainRegister2.equals(domainRegister1));
        System.assert(domainRegister3.equals(domainRegister4));
        System.assert(domainRegister4.equals(domainRegister3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = new OASDomainRegister();

        System.assertEquals(false, domainRegister1.equals('foo'));
        System.assertEquals(false, domainRegister2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = new OASDomainRegister();
        OASDomainRegister domainRegister3;

        System.assertEquals(false, domainRegister1.equals(domainRegister3));
        System.assertEquals(false, domainRegister2.equals(domainRegister3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = new OASDomainRegister();

        System.assertEquals(domainRegister1.hashCode(), domainRegister1.hashCode());
        System.assertEquals(domainRegister2.hashCode(), domainRegister2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainRegister domainRegister1 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister2 = OASDomainRegister.getExample();
        OASDomainRegister domainRegister3 = new OASDomainRegister();
        OASDomainRegister domainRegister4 = new OASDomainRegister();

        System.assert(domainRegister1.equals(domainRegister2));
        System.assert(domainRegister3.equals(domainRegister4));
        System.assertEquals(domainRegister1.hashCode(), domainRegister2.hashCode());
        System.assertEquals(domainRegister3.hashCode(), domainRegister4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainRegister domainRegister = new OASDomainRegister();
        Map<String, String> propertymappings = domainRegister.getPropertyMappings();
        System.assertEquals('redirectUrl', propertymappings.get('redirect_url'));
    }
}