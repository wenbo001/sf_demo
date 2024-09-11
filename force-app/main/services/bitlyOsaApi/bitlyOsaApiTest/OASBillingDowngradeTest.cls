@isTest
private class OASBillingDowngradeTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = billingDowngrade1;
        OASBillingDowngrade billingDowngrade3 = new OASBillingDowngrade();
        OASBillingDowngrade billingDowngrade4 = billingDowngrade3;

        System.assert(billingDowngrade1.equals(billingDowngrade2));
        System.assert(billingDowngrade2.equals(billingDowngrade1));
        System.assert(billingDowngrade1.equals(billingDowngrade1));
        System.assert(billingDowngrade3.equals(billingDowngrade4));
        System.assert(billingDowngrade4.equals(billingDowngrade3));
        System.assert(billingDowngrade3.equals(billingDowngrade3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade3 = new OASBillingDowngrade();
        OASBillingDowngrade billingDowngrade4 = new OASBillingDowngrade();

        System.assert(billingDowngrade1.equals(billingDowngrade2));
        System.assert(billingDowngrade2.equals(billingDowngrade1));
        System.assert(billingDowngrade3.equals(billingDowngrade4));
        System.assert(billingDowngrade4.equals(billingDowngrade3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = new OASBillingDowngrade();

        System.assertEquals(false, billingDowngrade1.equals('foo'));
        System.assertEquals(false, billingDowngrade2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = new OASBillingDowngrade();
        OASBillingDowngrade billingDowngrade3;

        System.assertEquals(false, billingDowngrade1.equals(billingDowngrade3));
        System.assertEquals(false, billingDowngrade2.equals(billingDowngrade3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = new OASBillingDowngrade();

        System.assertEquals(billingDowngrade1.hashCode(), billingDowngrade1.hashCode());
        System.assertEquals(billingDowngrade2.hashCode(), billingDowngrade2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingDowngrade billingDowngrade1 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade2 = OASBillingDowngrade.getExample();
        OASBillingDowngrade billingDowngrade3 = new OASBillingDowngrade();
        OASBillingDowngrade billingDowngrade4 = new OASBillingDowngrade();

        System.assert(billingDowngrade1.equals(billingDowngrade2));
        System.assert(billingDowngrade3.equals(billingDowngrade4));
        System.assertEquals(billingDowngrade1.hashCode(), billingDowngrade2.hashCode());
        System.assertEquals(billingDowngrade3.hashCode(), billingDowngrade4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingDowngrade billingDowngrade = new OASBillingDowngrade();
        Map<String, String> propertymappings = billingDowngrade.getPropertyMappings();
        System.assertEquals('tierName', propertymappings.get('tier_name'));
        System.assertEquals('groupGuids', propertymappings.get('group_guids'));
        System.assertEquals('micrositeGuids', propertymappings.get('microsite_guids'));
        System.assertEquals('promoCode', propertymappings.get('promo_code'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBillingDowngrade billingDowngrade = new OASBillingDowngrade();
        System.assertEquals(new List<String>(), billingDowngrade.groupGuids);
        System.assertEquals(new List<String>(), billingDowngrade.micrositeGuids);
        System.assertEquals(null, billingDowngrade.tierName);
        System.assertEquals(null, billingDowngrade.promoCode);
    }
}