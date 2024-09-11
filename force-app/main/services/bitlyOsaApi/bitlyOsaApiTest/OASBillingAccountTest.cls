@isTest
private class OASBillingAccountTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = billingAccount1;
        OASBillingAccount billingAccount3 = new OASBillingAccount();
        OASBillingAccount billingAccount4 = billingAccount3;

        System.assert(billingAccount1.equals(billingAccount2));
        System.assert(billingAccount2.equals(billingAccount1));
        System.assert(billingAccount1.equals(billingAccount1));
        System.assert(billingAccount3.equals(billingAccount4));
        System.assert(billingAccount4.equals(billingAccount3));
        System.assert(billingAccount3.equals(billingAccount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount3 = new OASBillingAccount();
        OASBillingAccount billingAccount4 = new OASBillingAccount();

        System.assert(billingAccount1.equals(billingAccount2));
        System.assert(billingAccount2.equals(billingAccount1));
        System.assert(billingAccount3.equals(billingAccount4));
        System.assert(billingAccount4.equals(billingAccount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = new OASBillingAccount();

        System.assertEquals(false, billingAccount1.equals('foo'));
        System.assertEquals(false, billingAccount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = new OASBillingAccount();
        OASBillingAccount billingAccount3;

        System.assertEquals(false, billingAccount1.equals(billingAccount3));
        System.assertEquals(false, billingAccount2.equals(billingAccount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = new OASBillingAccount();

        System.assertEquals(billingAccount1.hashCode(), billingAccount1.hashCode());
        System.assertEquals(billingAccount2.hashCode(), billingAccount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingAccount billingAccount1 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount2 = OASBillingAccount.getExample();
        OASBillingAccount billingAccount3 = new OASBillingAccount();
        OASBillingAccount billingAccount4 = new OASBillingAccount();

        System.assert(billingAccount1.equals(billingAccount2));
        System.assert(billingAccount3.equals(billingAccount4));
        System.assertEquals(billingAccount1.hashCode(), billingAccount2.hashCode());
        System.assertEquals(billingAccount3.hashCode(), billingAccount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingAccount billingAccount = new OASBillingAccount();
        Map<String, String> propertymappings = billingAccount.getPropertyMappings();
        System.assertEquals('accountId', propertymappings.get('account_id'));
        System.assertEquals('accountNum', propertymappings.get('account_num'));
        System.assertEquals('cardType', propertymappings.get('card_type'));
        System.assertEquals('r_currency', propertymappings.get('currency'));
        System.assertEquals('endDate', propertymappings.get('end_date'));
        System.assertEquals('lastFourDigits', propertymappings.get('last_four_digits'));
        System.assertEquals('paymentMethodType', propertymappings.get('payment_method_type'));
        System.assertEquals('renewalDate', propertymappings.get('renewal_date'));
        System.assertEquals('subscriptionPrice', propertymappings.get('subscription_price'));
        System.assertEquals('subscriptionStatus', propertymappings.get('subscription_status'));
        System.assertEquals('taxId', propertymappings.get('tax_id'));
        System.assertEquals('companyName', propertymappings.get('company_name'));
        System.assertEquals('billingInfo', propertymappings.get('billing_info'));
        System.assertEquals('contactInfo', propertymappings.get('contact_info'));
        System.assertEquals('subscriptionDiscounts', propertymappings.get('subscription_discounts'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBillingAccount billingAccount = new OASBillingAccount();
        System.assertEquals(new List<OASSubscriptionDiscount>(), billingAccount.subscriptionDiscounts);
        System.assertEquals(null, billingAccount.accountId);
        System.assertEquals(null, billingAccount.accountNum);
        System.assertEquals(null, billingAccount.cardType);
        System.assertEquals(null, billingAccount.r_currency);
        System.assertEquals(null, billingAccount.endDate);
        System.assertEquals(null, billingAccount.lastFourDigits);
        System.assertEquals(null, billingAccount.paymentMethodType);
        System.assertEquals(null, billingAccount.renewalDate);
        System.assertEquals(null, billingAccount.subscriptionPrice);
        System.assertEquals(null, billingAccount.subscriptionStatus);
        System.assertEquals(null, billingAccount.taxId);
        System.assertEquals(null, billingAccount.companyName);
        System.assertEquals(null, billingAccount.billingInfo);
        System.assertEquals(null, billingAccount.contacts);
        System.assertEquals(null, billingAccount.contactInfo);
    }
}