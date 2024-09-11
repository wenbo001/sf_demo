@isTest
private class OASUpgradeOrgBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = upgradeOrgBody1;
        OASUpgradeOrgBody upgradeOrgBody3 = new OASUpgradeOrgBody();
        OASUpgradeOrgBody upgradeOrgBody4 = upgradeOrgBody3;

        System.assert(upgradeOrgBody1.equals(upgradeOrgBody2));
        System.assert(upgradeOrgBody2.equals(upgradeOrgBody1));
        System.assert(upgradeOrgBody1.equals(upgradeOrgBody1));
        System.assert(upgradeOrgBody3.equals(upgradeOrgBody4));
        System.assert(upgradeOrgBody4.equals(upgradeOrgBody3));
        System.assert(upgradeOrgBody3.equals(upgradeOrgBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody3 = new OASUpgradeOrgBody();
        OASUpgradeOrgBody upgradeOrgBody4 = new OASUpgradeOrgBody();

        System.assert(upgradeOrgBody1.equals(upgradeOrgBody2));
        System.assert(upgradeOrgBody2.equals(upgradeOrgBody1));
        System.assert(upgradeOrgBody3.equals(upgradeOrgBody4));
        System.assert(upgradeOrgBody4.equals(upgradeOrgBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = new OASUpgradeOrgBody();

        System.assertEquals(false, upgradeOrgBody1.equals('foo'));
        System.assertEquals(false, upgradeOrgBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = new OASUpgradeOrgBody();
        OASUpgradeOrgBody upgradeOrgBody3;

        System.assertEquals(false, upgradeOrgBody1.equals(upgradeOrgBody3));
        System.assertEquals(false, upgradeOrgBody2.equals(upgradeOrgBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = new OASUpgradeOrgBody();

        System.assertEquals(upgradeOrgBody1.hashCode(), upgradeOrgBody1.hashCode());
        System.assertEquals(upgradeOrgBody2.hashCode(), upgradeOrgBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpgradeOrgBody upgradeOrgBody1 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody2 = OASUpgradeOrgBody.getExample();
        OASUpgradeOrgBody upgradeOrgBody3 = new OASUpgradeOrgBody();
        OASUpgradeOrgBody upgradeOrgBody4 = new OASUpgradeOrgBody();

        System.assert(upgradeOrgBody1.equals(upgradeOrgBody2));
        System.assert(upgradeOrgBody3.equals(upgradeOrgBody4));
        System.assertEquals(upgradeOrgBody1.hashCode(), upgradeOrgBody2.hashCode());
        System.assertEquals(upgradeOrgBody3.hashCode(), upgradeOrgBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpgradeOrgBody upgradeOrgBody = new OASUpgradeOrgBody();
        Map<String, String> propertymappings = upgradeOrgBody.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('paymentMethodId', propertymappings.get('payment_method_id'));
        System.assertEquals('r_currency', propertymappings.get('currency'));
        System.assertEquals('paymentProvider', propertymappings.get('payment_provider'));
        System.assertEquals('ratePlanName', propertymappings.get('rate_plan_name'));
        System.assertEquals('companyName', propertymappings.get('company_name'));
        System.assertEquals('taxId', propertymappings.get('tax_id'));
        System.assertEquals('promoCode', propertymappings.get('promo_code'));
        System.assertEquals('billingInfo', propertymappings.get('billing_info'));
        System.assertEquals('contactInfo', propertymappings.get('contact_info'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpgradeOrgBody upgradeOrgBody = new OASUpgradeOrgBody();
        System.assertEquals(OASUpgradeOrgBody.RCurrencyEnum.USD, upgradeOrgBody.r_currency);
        System.assertEquals(OASUpgradeOrgBody.PaymentProviderEnum.ZUORA, upgradeOrgBody.paymentProvider);
        System.assertEquals(null, upgradeOrgBody.orgGuid);
        System.assertEquals(null, upgradeOrgBody.paymentMethodId);
        System.assertEquals(null, upgradeOrgBody.ratePlanName);
        System.assertEquals(null, upgradeOrgBody.companyName);
        System.assertEquals(null, upgradeOrgBody.taxId);
        System.assertEquals(null, upgradeOrgBody.promoCode);
        System.assertEquals(null, upgradeOrgBody.billingInfo);
        System.assertEquals(null, upgradeOrgBody.contactInfo);
    }
}