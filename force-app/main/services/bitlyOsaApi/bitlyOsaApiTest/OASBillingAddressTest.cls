@isTest
private class OASBillingAddressTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = billingAddress1;
        OASBillingAddress billingAddress3 = new OASBillingAddress();
        OASBillingAddress billingAddress4 = billingAddress3;

        System.assert(billingAddress1.equals(billingAddress2));
        System.assert(billingAddress2.equals(billingAddress1));
        System.assert(billingAddress1.equals(billingAddress1));
        System.assert(billingAddress3.equals(billingAddress4));
        System.assert(billingAddress4.equals(billingAddress3));
        System.assert(billingAddress3.equals(billingAddress3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress3 = new OASBillingAddress();
        OASBillingAddress billingAddress4 = new OASBillingAddress();

        System.assert(billingAddress1.equals(billingAddress2));
        System.assert(billingAddress2.equals(billingAddress1));
        System.assert(billingAddress3.equals(billingAddress4));
        System.assert(billingAddress4.equals(billingAddress3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = new OASBillingAddress();

        System.assertEquals(false, billingAddress1.equals('foo'));
        System.assertEquals(false, billingAddress2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = new OASBillingAddress();
        OASBillingAddress billingAddress3;

        System.assertEquals(false, billingAddress1.equals(billingAddress3));
        System.assertEquals(false, billingAddress2.equals(billingAddress3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = new OASBillingAddress();

        System.assertEquals(billingAddress1.hashCode(), billingAddress1.hashCode());
        System.assertEquals(billingAddress2.hashCode(), billingAddress2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingAddress billingAddress1 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress2 = OASBillingAddress.getExample();
        OASBillingAddress billingAddress3 = new OASBillingAddress();
        OASBillingAddress billingAddress4 = new OASBillingAddress();

        System.assert(billingAddress1.equals(billingAddress2));
        System.assert(billingAddress3.equals(billingAddress4));
        System.assertEquals(billingAddress1.hashCode(), billingAddress2.hashCode());
        System.assertEquals(billingAddress3.hashCode(), billingAddress4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingAddress billingAddress = new OASBillingAddress();
        Map<String, String> propertymappings = billingAddress.getPropertyMappings();
        System.assertEquals('address1', propertymappings.get('address_1'));
        System.assertEquals('address2', propertymappings.get('address_2'));
        System.assertEquals('zipCode', propertymappings.get('zip_code'));
    }
}