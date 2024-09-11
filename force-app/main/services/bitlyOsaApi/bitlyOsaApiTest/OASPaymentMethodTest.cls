@isTest
private class OASPaymentMethodTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = paymentMethod1;
        OASPaymentMethod paymentMethod3 = new OASPaymentMethod();
        OASPaymentMethod paymentMethod4 = paymentMethod3;

        System.assert(paymentMethod1.equals(paymentMethod2));
        System.assert(paymentMethod2.equals(paymentMethod1));
        System.assert(paymentMethod1.equals(paymentMethod1));
        System.assert(paymentMethod3.equals(paymentMethod4));
        System.assert(paymentMethod4.equals(paymentMethod3));
        System.assert(paymentMethod3.equals(paymentMethod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod3 = new OASPaymentMethod();
        OASPaymentMethod paymentMethod4 = new OASPaymentMethod();

        System.assert(paymentMethod1.equals(paymentMethod2));
        System.assert(paymentMethod2.equals(paymentMethod1));
        System.assert(paymentMethod3.equals(paymentMethod4));
        System.assert(paymentMethod4.equals(paymentMethod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = new OASPaymentMethod();

        System.assertEquals(false, paymentMethod1.equals('foo'));
        System.assertEquals(false, paymentMethod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = new OASPaymentMethod();
        OASPaymentMethod paymentMethod3;

        System.assertEquals(false, paymentMethod1.equals(paymentMethod3));
        System.assertEquals(false, paymentMethod2.equals(paymentMethod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = new OASPaymentMethod();

        System.assertEquals(paymentMethod1.hashCode(), paymentMethod1.hashCode());
        System.assertEquals(paymentMethod2.hashCode(), paymentMethod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentMethod paymentMethod1 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod2 = OASPaymentMethod.getExample();
        OASPaymentMethod paymentMethod3 = new OASPaymentMethod();
        OASPaymentMethod paymentMethod4 = new OASPaymentMethod();

        System.assert(paymentMethod1.equals(paymentMethod2));
        System.assert(paymentMethod3.equals(paymentMethod4));
        System.assertEquals(paymentMethod1.hashCode(), paymentMethod2.hashCode());
        System.assertEquals(paymentMethod3.hashCode(), paymentMethod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentMethod paymentMethod = new OASPaymentMethod();
        Map<String, String> propertymappings = paymentMethod.getPropertyMappings();
        System.assertEquals('paymentMethodId', propertymappings.get('payment_method_id'));
    }
}