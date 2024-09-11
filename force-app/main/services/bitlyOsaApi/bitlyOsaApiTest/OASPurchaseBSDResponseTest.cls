@isTest
private class OASPurchaseBSDResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = purchaseBSDResponse1;
        OASPurchaseBSDResponse purchaseBSDResponse3 = new OASPurchaseBSDResponse();
        OASPurchaseBSDResponse purchaseBSDResponse4 = purchaseBSDResponse3;

        System.assert(purchaseBSDResponse1.equals(purchaseBSDResponse2));
        System.assert(purchaseBSDResponse2.equals(purchaseBSDResponse1));
        System.assert(purchaseBSDResponse1.equals(purchaseBSDResponse1));
        System.assert(purchaseBSDResponse3.equals(purchaseBSDResponse4));
        System.assert(purchaseBSDResponse4.equals(purchaseBSDResponse3));
        System.assert(purchaseBSDResponse3.equals(purchaseBSDResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse3 = new OASPurchaseBSDResponse();
        OASPurchaseBSDResponse purchaseBSDResponse4 = new OASPurchaseBSDResponse();

        System.assert(purchaseBSDResponse1.equals(purchaseBSDResponse2));
        System.assert(purchaseBSDResponse2.equals(purchaseBSDResponse1));
        System.assert(purchaseBSDResponse3.equals(purchaseBSDResponse4));
        System.assert(purchaseBSDResponse4.equals(purchaseBSDResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = new OASPurchaseBSDResponse();

        System.assertEquals(false, purchaseBSDResponse1.equals('foo'));
        System.assertEquals(false, purchaseBSDResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = new OASPurchaseBSDResponse();
        OASPurchaseBSDResponse purchaseBSDResponse3;

        System.assertEquals(false, purchaseBSDResponse1.equals(purchaseBSDResponse3));
        System.assertEquals(false, purchaseBSDResponse2.equals(purchaseBSDResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = new OASPurchaseBSDResponse();

        System.assertEquals(purchaseBSDResponse1.hashCode(), purchaseBSDResponse1.hashCode());
        System.assertEquals(purchaseBSDResponse2.hashCode(), purchaseBSDResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPurchaseBSDResponse purchaseBSDResponse1 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse2 = OASPurchaseBSDResponse.getExample();
        OASPurchaseBSDResponse purchaseBSDResponse3 = new OASPurchaseBSDResponse();
        OASPurchaseBSDResponse purchaseBSDResponse4 = new OASPurchaseBSDResponse();

        System.assert(purchaseBSDResponse1.equals(purchaseBSDResponse2));
        System.assert(purchaseBSDResponse3.equals(purchaseBSDResponse4));
        System.assertEquals(purchaseBSDResponse1.hashCode(), purchaseBSDResponse2.hashCode());
        System.assertEquals(purchaseBSDResponse3.hashCode(), purchaseBSDResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPurchaseBSDResponse purchaseBSDResponse = new OASPurchaseBSDResponse();
        Map<String, String> propertymappings = purchaseBSDResponse.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('orderId', propertymappings.get('order_id'));
    }
}