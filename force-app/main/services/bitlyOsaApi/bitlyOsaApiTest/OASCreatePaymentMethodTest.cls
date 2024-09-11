@isTest
private class OASCreatePaymentMethodTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = createPaymentMethod1;
        OASCreatePaymentMethod createPaymentMethod3 = new OASCreatePaymentMethod();
        OASCreatePaymentMethod createPaymentMethod4 = createPaymentMethod3;

        System.assert(createPaymentMethod1.equals(createPaymentMethod2));
        System.assert(createPaymentMethod2.equals(createPaymentMethod1));
        System.assert(createPaymentMethod1.equals(createPaymentMethod1));
        System.assert(createPaymentMethod3.equals(createPaymentMethod4));
        System.assert(createPaymentMethod4.equals(createPaymentMethod3));
        System.assert(createPaymentMethod3.equals(createPaymentMethod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod3 = new OASCreatePaymentMethod();
        OASCreatePaymentMethod createPaymentMethod4 = new OASCreatePaymentMethod();

        System.assert(createPaymentMethod1.equals(createPaymentMethod2));
        System.assert(createPaymentMethod2.equals(createPaymentMethod1));
        System.assert(createPaymentMethod3.equals(createPaymentMethod4));
        System.assert(createPaymentMethod4.equals(createPaymentMethod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = new OASCreatePaymentMethod();

        System.assertEquals(false, createPaymentMethod1.equals('foo'));
        System.assertEquals(false, createPaymentMethod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = new OASCreatePaymentMethod();
        OASCreatePaymentMethod createPaymentMethod3;

        System.assertEquals(false, createPaymentMethod1.equals(createPaymentMethod3));
        System.assertEquals(false, createPaymentMethod2.equals(createPaymentMethod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = new OASCreatePaymentMethod();

        System.assertEquals(createPaymentMethod1.hashCode(), createPaymentMethod1.hashCode());
        System.assertEquals(createPaymentMethod2.hashCode(), createPaymentMethod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreatePaymentMethod createPaymentMethod1 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod2 = OASCreatePaymentMethod.getExample();
        OASCreatePaymentMethod createPaymentMethod3 = new OASCreatePaymentMethod();
        OASCreatePaymentMethod createPaymentMethod4 = new OASCreatePaymentMethod();

        System.assert(createPaymentMethod1.equals(createPaymentMethod2));
        System.assert(createPaymentMethod3.equals(createPaymentMethod4));
        System.assertEquals(createPaymentMethod1.hashCode(), createPaymentMethod2.hashCode());
        System.assertEquals(createPaymentMethod3.hashCode(), createPaymentMethod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreatePaymentMethod createPaymentMethod = new OASCreatePaymentMethod();
        Map<String, String> propertymappings = createPaymentMethod.getPropertyMappings();
        System.assertEquals('paypalBaid', propertymappings.get('paypal_baid'));
        System.assertEquals('paypalEmail', propertymappings.get('paypal_email'));
    }
}