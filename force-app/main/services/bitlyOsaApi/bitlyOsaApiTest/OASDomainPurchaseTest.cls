@isTest
private class OASDomainPurchaseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = domainPurchase1;
        OASDomainPurchase domainPurchase3 = new OASDomainPurchase();
        OASDomainPurchase domainPurchase4 = domainPurchase3;

        System.assert(domainPurchase1.equals(domainPurchase2));
        System.assert(domainPurchase2.equals(domainPurchase1));
        System.assert(domainPurchase1.equals(domainPurchase1));
        System.assert(domainPurchase3.equals(domainPurchase4));
        System.assert(domainPurchase4.equals(domainPurchase3));
        System.assert(domainPurchase3.equals(domainPurchase3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase3 = new OASDomainPurchase();
        OASDomainPurchase domainPurchase4 = new OASDomainPurchase();

        System.assert(domainPurchase1.equals(domainPurchase2));
        System.assert(domainPurchase2.equals(domainPurchase1));
        System.assert(domainPurchase3.equals(domainPurchase4));
        System.assert(domainPurchase4.equals(domainPurchase3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = new OASDomainPurchase();

        System.assertEquals(false, domainPurchase1.equals('foo'));
        System.assertEquals(false, domainPurchase2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = new OASDomainPurchase();
        OASDomainPurchase domainPurchase3;

        System.assertEquals(false, domainPurchase1.equals(domainPurchase3));
        System.assertEquals(false, domainPurchase2.equals(domainPurchase3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = new OASDomainPurchase();

        System.assertEquals(domainPurchase1.hashCode(), domainPurchase1.hashCode());
        System.assertEquals(domainPurchase2.hashCode(), domainPurchase2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainPurchase domainPurchase1 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase2 = OASDomainPurchase.getExample();
        OASDomainPurchase domainPurchase3 = new OASDomainPurchase();
        OASDomainPurchase domainPurchase4 = new OASDomainPurchase();

        System.assert(domainPurchase1.equals(domainPurchase2));
        System.assert(domainPurchase3.equals(domainPurchase4));
        System.assertEquals(domainPurchase1.hashCode(), domainPurchase2.hashCode());
        System.assertEquals(domainPurchase3.hashCode(), domainPurchase4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainPurchase domainPurchase = new OASDomainPurchase();
        Map<String, String> propertymappings = domainPurchase.getPropertyMappings();
        System.assertEquals('orderId', propertymappings.get('order_id'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}