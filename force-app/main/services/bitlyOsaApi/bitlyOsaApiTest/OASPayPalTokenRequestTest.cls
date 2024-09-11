@isTest
private class OASPayPalTokenRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = payPalTokenRequest1;
        OASPayPalTokenRequest payPalTokenRequest3 = new OASPayPalTokenRequest();
        OASPayPalTokenRequest payPalTokenRequest4 = payPalTokenRequest3;

        System.assert(payPalTokenRequest1.equals(payPalTokenRequest2));
        System.assert(payPalTokenRequest2.equals(payPalTokenRequest1));
        System.assert(payPalTokenRequest1.equals(payPalTokenRequest1));
        System.assert(payPalTokenRequest3.equals(payPalTokenRequest4));
        System.assert(payPalTokenRequest4.equals(payPalTokenRequest3));
        System.assert(payPalTokenRequest3.equals(payPalTokenRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest3 = new OASPayPalTokenRequest();
        OASPayPalTokenRequest payPalTokenRequest4 = new OASPayPalTokenRequest();

        System.assert(payPalTokenRequest1.equals(payPalTokenRequest2));
        System.assert(payPalTokenRequest2.equals(payPalTokenRequest1));
        System.assert(payPalTokenRequest3.equals(payPalTokenRequest4));
        System.assert(payPalTokenRequest4.equals(payPalTokenRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = new OASPayPalTokenRequest();

        System.assertEquals(false, payPalTokenRequest1.equals('foo'));
        System.assertEquals(false, payPalTokenRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = new OASPayPalTokenRequest();
        OASPayPalTokenRequest payPalTokenRequest3;

        System.assertEquals(false, payPalTokenRequest1.equals(payPalTokenRequest3));
        System.assertEquals(false, payPalTokenRequest2.equals(payPalTokenRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = new OASPayPalTokenRequest();

        System.assertEquals(payPalTokenRequest1.hashCode(), payPalTokenRequest1.hashCode());
        System.assertEquals(payPalTokenRequest2.hashCode(), payPalTokenRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayPalTokenRequest payPalTokenRequest1 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest2 = OASPayPalTokenRequest.getExample();
        OASPayPalTokenRequest payPalTokenRequest3 = new OASPayPalTokenRequest();
        OASPayPalTokenRequest payPalTokenRequest4 = new OASPayPalTokenRequest();

        System.assert(payPalTokenRequest1.equals(payPalTokenRequest2));
        System.assert(payPalTokenRequest3.equals(payPalTokenRequest4));
        System.assertEquals(payPalTokenRequest1.hashCode(), payPalTokenRequest2.hashCode());
        System.assertEquals(payPalTokenRequest3.hashCode(), payPalTokenRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayPalTokenRequest payPalTokenRequest = new OASPayPalTokenRequest();
        Map<String, String> propertymappings = payPalTokenRequest.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('tierName', propertymappings.get('tier_name'));
        System.assertEquals('billingPeriod', propertymappings.get('billing_period'));
    }
}