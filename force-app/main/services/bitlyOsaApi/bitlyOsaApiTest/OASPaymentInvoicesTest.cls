@isTest
private class OASPaymentInvoicesTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = paymentInvoices1;
        OASPaymentInvoices paymentInvoices3 = new OASPaymentInvoices();
        OASPaymentInvoices paymentInvoices4 = paymentInvoices3;

        System.assert(paymentInvoices1.equals(paymentInvoices2));
        System.assert(paymentInvoices2.equals(paymentInvoices1));
        System.assert(paymentInvoices1.equals(paymentInvoices1));
        System.assert(paymentInvoices3.equals(paymentInvoices4));
        System.assert(paymentInvoices4.equals(paymentInvoices3));
        System.assert(paymentInvoices3.equals(paymentInvoices3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices3 = new OASPaymentInvoices();
        OASPaymentInvoices paymentInvoices4 = new OASPaymentInvoices();

        System.assert(paymentInvoices1.equals(paymentInvoices2));
        System.assert(paymentInvoices2.equals(paymentInvoices1));
        System.assert(paymentInvoices3.equals(paymentInvoices4));
        System.assert(paymentInvoices4.equals(paymentInvoices3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = new OASPaymentInvoices();

        System.assertEquals(false, paymentInvoices1.equals('foo'));
        System.assertEquals(false, paymentInvoices2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = new OASPaymentInvoices();
        OASPaymentInvoices paymentInvoices3;

        System.assertEquals(false, paymentInvoices1.equals(paymentInvoices3));
        System.assertEquals(false, paymentInvoices2.equals(paymentInvoices3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = new OASPaymentInvoices();

        System.assertEquals(paymentInvoices1.hashCode(), paymentInvoices1.hashCode());
        System.assertEquals(paymentInvoices2.hashCode(), paymentInvoices2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentInvoices paymentInvoices1 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices2 = OASPaymentInvoices.getExample();
        OASPaymentInvoices paymentInvoices3 = new OASPaymentInvoices();
        OASPaymentInvoices paymentInvoices4 = new OASPaymentInvoices();

        System.assert(paymentInvoices1.equals(paymentInvoices2));
        System.assert(paymentInvoices3.equals(paymentInvoices4));
        System.assertEquals(paymentInvoices1.hashCode(), paymentInvoices2.hashCode());
        System.assertEquals(paymentInvoices3.hashCode(), paymentInvoices4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentInvoices paymentInvoices = new OASPaymentInvoices();
        Map<String, String> propertymappings = paymentInvoices.getPropertyMappings();
        System.assertEquals('paymentInvoices', propertymappings.get('payment_invoices'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPaymentInvoices paymentInvoices = new OASPaymentInvoices();
        System.assertEquals(new List<OASPaymentInvoice>(), paymentInvoices.paymentInvoices);
    }
}