@isTest
private class OASBillingSignatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = billingSignature1;
        OASBillingSignature billingSignature3 = new OASBillingSignature();
        OASBillingSignature billingSignature4 = billingSignature3;

        System.assert(billingSignature1.equals(billingSignature2));
        System.assert(billingSignature2.equals(billingSignature1));
        System.assert(billingSignature1.equals(billingSignature1));
        System.assert(billingSignature3.equals(billingSignature4));
        System.assert(billingSignature4.equals(billingSignature3));
        System.assert(billingSignature3.equals(billingSignature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature3 = new OASBillingSignature();
        OASBillingSignature billingSignature4 = new OASBillingSignature();

        System.assert(billingSignature1.equals(billingSignature2));
        System.assert(billingSignature2.equals(billingSignature1));
        System.assert(billingSignature3.equals(billingSignature4));
        System.assert(billingSignature4.equals(billingSignature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = new OASBillingSignature();

        System.assertEquals(false, billingSignature1.equals('foo'));
        System.assertEquals(false, billingSignature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = new OASBillingSignature();
        OASBillingSignature billingSignature3;

        System.assertEquals(false, billingSignature1.equals(billingSignature3));
        System.assertEquals(false, billingSignature2.equals(billingSignature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = new OASBillingSignature();

        System.assertEquals(billingSignature1.hashCode(), billingSignature1.hashCode());
        System.assertEquals(billingSignature2.hashCode(), billingSignature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingSignature billingSignature1 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature2 = OASBillingSignature.getExample();
        OASBillingSignature billingSignature3 = new OASBillingSignature();
        OASBillingSignature billingSignature4 = new OASBillingSignature();

        System.assert(billingSignature1.equals(billingSignature2));
        System.assert(billingSignature3.equals(billingSignature4));
        System.assertEquals(billingSignature1.hashCode(), billingSignature2.hashCode());
        System.assertEquals(billingSignature3.hashCode(), billingSignature4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingSignature billingSignature = new OASBillingSignature();
        Map<String, String> propertymappings = billingSignature.getPropertyMappings();
        System.assertEquals('tenantId', propertymappings.get('tenant_id'));
        System.assertEquals('iframeId', propertymappings.get('iframe_id'));
        System.assertEquals('fieldAccountId', propertymappings.get('field_account_id'));
    }
}