@isTest
private class OASPaymentInvoiceDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = paymentInvoiceDetail1;
        OASPaymentInvoiceDetail paymentInvoiceDetail3 = new OASPaymentInvoiceDetail();
        OASPaymentInvoiceDetail paymentInvoiceDetail4 = paymentInvoiceDetail3;

        System.assert(paymentInvoiceDetail1.equals(paymentInvoiceDetail2));
        System.assert(paymentInvoiceDetail2.equals(paymentInvoiceDetail1));
        System.assert(paymentInvoiceDetail1.equals(paymentInvoiceDetail1));
        System.assert(paymentInvoiceDetail3.equals(paymentInvoiceDetail4));
        System.assert(paymentInvoiceDetail4.equals(paymentInvoiceDetail3));
        System.assert(paymentInvoiceDetail3.equals(paymentInvoiceDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail3 = new OASPaymentInvoiceDetail();
        OASPaymentInvoiceDetail paymentInvoiceDetail4 = new OASPaymentInvoiceDetail();

        System.assert(paymentInvoiceDetail1.equals(paymentInvoiceDetail2));
        System.assert(paymentInvoiceDetail2.equals(paymentInvoiceDetail1));
        System.assert(paymentInvoiceDetail3.equals(paymentInvoiceDetail4));
        System.assert(paymentInvoiceDetail4.equals(paymentInvoiceDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = new OASPaymentInvoiceDetail();

        System.assertEquals(false, paymentInvoiceDetail1.equals('foo'));
        System.assertEquals(false, paymentInvoiceDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = new OASPaymentInvoiceDetail();
        OASPaymentInvoiceDetail paymentInvoiceDetail3;

        System.assertEquals(false, paymentInvoiceDetail1.equals(paymentInvoiceDetail3));
        System.assertEquals(false, paymentInvoiceDetail2.equals(paymentInvoiceDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = new OASPaymentInvoiceDetail();

        System.assertEquals(paymentInvoiceDetail1.hashCode(), paymentInvoiceDetail1.hashCode());
        System.assertEquals(paymentInvoiceDetail2.hashCode(), paymentInvoiceDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaymentInvoiceDetail paymentInvoiceDetail1 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail2 = OASPaymentInvoiceDetail.getExample();
        OASPaymentInvoiceDetail paymentInvoiceDetail3 = new OASPaymentInvoiceDetail();
        OASPaymentInvoiceDetail paymentInvoiceDetail4 = new OASPaymentInvoiceDetail();

        System.assert(paymentInvoiceDetail1.equals(paymentInvoiceDetail2));
        System.assert(paymentInvoiceDetail3.equals(paymentInvoiceDetail4));
        System.assertEquals(paymentInvoiceDetail1.hashCode(), paymentInvoiceDetail2.hashCode());
        System.assertEquals(paymentInvoiceDetail3.hashCode(), paymentInvoiceDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaymentInvoiceDetail paymentInvoiceDetail = new OASPaymentInvoiceDetail();
        Map<String, String> propertymappings = paymentInvoiceDetail.getPropertyMappings();
        System.assertEquals('invoiceSummary', propertymappings.get('invoice_summary'));
        System.assertEquals('billingAccount', propertymappings.get('billing_account'));
        System.assertEquals('subscriptionDiscounts', propertymappings.get('subscription_discounts'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPaymentInvoiceDetail paymentInvoiceDetail = new OASPaymentInvoiceDetail();
        System.assertEquals(new List<OASSubscriptionDiscount>(), paymentInvoiceDetail.subscriptionDiscounts);
        System.assertEquals(null, paymentInvoiceDetail.invoiceSummary);
        System.assertEquals(null, paymentInvoiceDetail.billingAccount);
    }
}