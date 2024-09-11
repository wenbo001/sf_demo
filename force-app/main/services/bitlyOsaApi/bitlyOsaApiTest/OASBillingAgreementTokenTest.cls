@isTest
private class OASBillingAgreementTokenTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = billingAgreementToken1;
        OASBillingAgreementToken billingAgreementToken3 = new OASBillingAgreementToken();
        OASBillingAgreementToken billingAgreementToken4 = billingAgreementToken3;

        System.assert(billingAgreementToken1.equals(billingAgreementToken2));
        System.assert(billingAgreementToken2.equals(billingAgreementToken1));
        System.assert(billingAgreementToken1.equals(billingAgreementToken1));
        System.assert(billingAgreementToken3.equals(billingAgreementToken4));
        System.assert(billingAgreementToken4.equals(billingAgreementToken3));
        System.assert(billingAgreementToken3.equals(billingAgreementToken3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken3 = new OASBillingAgreementToken();
        OASBillingAgreementToken billingAgreementToken4 = new OASBillingAgreementToken();

        System.assert(billingAgreementToken1.equals(billingAgreementToken2));
        System.assert(billingAgreementToken2.equals(billingAgreementToken1));
        System.assert(billingAgreementToken3.equals(billingAgreementToken4));
        System.assert(billingAgreementToken4.equals(billingAgreementToken3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = new OASBillingAgreementToken();

        System.assertEquals(false, billingAgreementToken1.equals('foo'));
        System.assertEquals(false, billingAgreementToken2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = new OASBillingAgreementToken();
        OASBillingAgreementToken billingAgreementToken3;

        System.assertEquals(false, billingAgreementToken1.equals(billingAgreementToken3));
        System.assertEquals(false, billingAgreementToken2.equals(billingAgreementToken3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = new OASBillingAgreementToken();

        System.assertEquals(billingAgreementToken1.hashCode(), billingAgreementToken1.hashCode());
        System.assertEquals(billingAgreementToken2.hashCode(), billingAgreementToken2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingAgreementToken billingAgreementToken1 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken2 = OASBillingAgreementToken.getExample();
        OASBillingAgreementToken billingAgreementToken3 = new OASBillingAgreementToken();
        OASBillingAgreementToken billingAgreementToken4 = new OASBillingAgreementToken();

        System.assert(billingAgreementToken1.equals(billingAgreementToken2));
        System.assert(billingAgreementToken3.equals(billingAgreementToken4));
        System.assertEquals(billingAgreementToken1.hashCode(), billingAgreementToken2.hashCode());
        System.assertEquals(billingAgreementToken3.hashCode(), billingAgreementToken4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingAgreementToken billingAgreementToken = new OASBillingAgreementToken();
        Map<String, String> propertymappings = billingAgreementToken.getPropertyMappings();
        System.assertEquals('paypalTokenId', propertymappings.get('paypal_token_id'));
    }
}