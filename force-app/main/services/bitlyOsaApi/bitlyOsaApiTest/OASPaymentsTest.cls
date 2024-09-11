@isTest
private class OASPaymentsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = payments1;
        OASPayments payments3 = new OASPayments();
        OASPayments payments4 = payments3;

        System.assert(payments1.equals(payments2));
        System.assert(payments2.equals(payments1));
        System.assert(payments1.equals(payments1));
        System.assert(payments3.equals(payments4));
        System.assert(payments4.equals(payments3));
        System.assert(payments3.equals(payments3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = OASPayments.getExample();
        OASPayments payments3 = new OASPayments();
        OASPayments payments4 = new OASPayments();

        System.assert(payments1.equals(payments2));
        System.assert(payments2.equals(payments1));
        System.assert(payments3.equals(payments4));
        System.assert(payments4.equals(payments3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = new OASPayments();

        System.assertEquals(false, payments1.equals('foo'));
        System.assertEquals(false, payments2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = new OASPayments();
        OASPayments payments3;

        System.assertEquals(false, payments1.equals(payments3));
        System.assertEquals(false, payments2.equals(payments3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = new OASPayments();

        System.assertEquals(payments1.hashCode(), payments1.hashCode());
        System.assertEquals(payments2.hashCode(), payments2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPayments payments1 = OASPayments.getExample();
        OASPayments payments2 = OASPayments.getExample();
        OASPayments payments3 = new OASPayments();
        OASPayments payments4 = new OASPayments();

        System.assert(payments1.equals(payments2));
        System.assert(payments3.equals(payments4));
        System.assertEquals(payments1.hashCode(), payments2.hashCode());
        System.assertEquals(payments3.hashCode(), payments4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPayments payments = new OASPayments();
        Map<String, String> propertymappings = payments.getPropertyMappings();
        System.assertEquals('paymentAmount', propertymappings.get('payment_amount'));
        System.assertEquals('paymentDate', propertymappings.get('payment_date'));
        System.assertEquals('paymentNumber', propertymappings.get('payment_number'));
    }
}