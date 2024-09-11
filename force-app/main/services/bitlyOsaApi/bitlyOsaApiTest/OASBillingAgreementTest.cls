@isTest
private class OASBillingAgreementTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = billingAgreement1;
        OASBillingAgreement billingAgreement3 = new OASBillingAgreement();
        OASBillingAgreement billingAgreement4 = billingAgreement3;

        System.assert(billingAgreement1.equals(billingAgreement2));
        System.assert(billingAgreement2.equals(billingAgreement1));
        System.assert(billingAgreement1.equals(billingAgreement1));
        System.assert(billingAgreement3.equals(billingAgreement4));
        System.assert(billingAgreement4.equals(billingAgreement3));
        System.assert(billingAgreement3.equals(billingAgreement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement3 = new OASBillingAgreement();
        OASBillingAgreement billingAgreement4 = new OASBillingAgreement();

        System.assert(billingAgreement1.equals(billingAgreement2));
        System.assert(billingAgreement2.equals(billingAgreement1));
        System.assert(billingAgreement3.equals(billingAgreement4));
        System.assert(billingAgreement4.equals(billingAgreement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = new OASBillingAgreement();

        System.assertEquals(false, billingAgreement1.equals('foo'));
        System.assertEquals(false, billingAgreement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = new OASBillingAgreement();
        OASBillingAgreement billingAgreement3;

        System.assertEquals(false, billingAgreement1.equals(billingAgreement3));
        System.assertEquals(false, billingAgreement2.equals(billingAgreement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = new OASBillingAgreement();

        System.assertEquals(billingAgreement1.hashCode(), billingAgreement1.hashCode());
        System.assertEquals(billingAgreement2.hashCode(), billingAgreement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingAgreement billingAgreement1 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement2 = OASBillingAgreement.getExample();
        OASBillingAgreement billingAgreement3 = new OASBillingAgreement();
        OASBillingAgreement billingAgreement4 = new OASBillingAgreement();

        System.assert(billingAgreement1.equals(billingAgreement2));
        System.assert(billingAgreement3.equals(billingAgreement4));
        System.assertEquals(billingAgreement1.hashCode(), billingAgreement2.hashCode());
        System.assertEquals(billingAgreement3.hashCode(), billingAgreement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingAgreement billingAgreement = new OASBillingAgreement();
        Map<String, String> propertymappings = billingAgreement.getPropertyMappings();
        System.assertEquals('shippingAddress', propertymappings.get('shipping_address'));
        System.assertEquals('createTime', propertymappings.get('create_time'));
        System.assertEquals('updateTime', propertymappings.get('update_time'));
    }
}