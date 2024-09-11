@isTest
private class OASPaymentInvoiceTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = paymentInvoice1;
        OASPaymentInvoice paymentInvoice3 = new OASPaymentInvoice();
        OASPaymentInvoice paymentInvoice4 = paymentInvoice3;

        System.assert(paymentInvoice1.equals(paymentInvoice2));
        System.assert(paymentInvoice2.equals(paymentInvoice1));
        System.assert(paymentInvoice1.equals(paymentInvoice1));
        System.assert(paymentInvoice3.equals(paymentInvoice4));
        System.assert(paymentInvoice4.equals(paymentInvoice3));
        System.assert(paymentInvoice3.equals(paymentInvoice3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice3 = new OASPaymentInvoice();
        OASPaymentInvoice paymentInvoice4 = new OASPaymentInvoice();

        System.assert(paymentInvoice1.equals(paymentInvoice2));
        System.assert(paymentInvoice2.equals(paymentInvoice1));
        System.assert(paymentInvoice3.equals(paymentInvoice4));
        System.assert(paymentInvoice4.equals(paymentInvoice3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = new OASPaymentInvoice();

        System.assertEquals(false, paymentInvoice1.equals('foo'));
        System.assertEquals(false, paymentInvoice2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = new OASPaymentInvoice();
        OASPaymentInvoice paymentInvoice3;

        System.assertEquals(false, paymentInvoice1.equals(paymentInvoice3));
        System.assertEquals(false, paymentInvoice2.equals(paymentInvoice3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = new OASPaymentInvoice();

        System.assertEquals(paymentInvoice1.hashCode(), paymentInvoice1.hashCode());
        System.assertEquals(paymentInvoice2.hashCode(), paymentInvoice2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentInvoice paymentInvoice1 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice2 = OASPaymentInvoice.getExample();
        OASPaymentInvoice paymentInvoice3 = new OASPaymentInvoice();
        OASPaymentInvoice paymentInvoice4 = new OASPaymentInvoice();

        System.assert(paymentInvoice1.equals(paymentInvoice2));
        System.assert(paymentInvoice3.equals(paymentInvoice4));
        System.assertEquals(paymentInvoice1.hashCode(), paymentInvoice2.hashCode());
        System.assertEquals(paymentInvoice3.hashCode(), paymentInvoice4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentInvoice paymentInvoice = new OASPaymentInvoice();
        Map<String, String> propertymappings = paymentInvoice.getPropertyMappings();
        System.assertEquals('invoiceDate', propertymappings.get('invoice_date'));
        System.assertEquals('invoiceDueDate', propertymappings.get('invoice_due_date'));
        System.assertEquals('invoiceNumber', propertymappings.get('invoice_number'));
        System.assertEquals('invoiceId', propertymappings.get('invoice_id'));
        System.assertEquals('totalTax', propertymappings.get('total_tax'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPaymentInvoice paymentInvoice = new OASPaymentInvoice();
        System.assertEquals(new List<OASPayments>(), paymentInvoice.payments);
        System.assertEquals(null, paymentInvoice.invoiceDate);
        System.assertEquals(null, paymentInvoice.invoiceDueDate);
        System.assertEquals(null, paymentInvoice.invoiceNumber);
        System.assertEquals(null, paymentInvoice.invoiceId);
        System.assertEquals(null, paymentInvoice.charges);
        System.assertEquals(null, paymentInvoice.subtotal);
        System.assertEquals(null, paymentInvoice.totalTax);
        System.assertEquals(null, paymentInvoice.total);
        System.assertEquals(null, paymentInvoice.description);
    }
}