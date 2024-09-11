@isTest
private class OASTierTest {
    @isTest
    private static void equalsSameInstance() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = tier1;
        OASTier tier3 = new OASTier();
        OASTier tier4 = tier3;

        System.assert(tier1.equals(tier2));
        System.assert(tier2.equals(tier1));
        System.assert(tier1.equals(tier1));
        System.assert(tier3.equals(tier4));
        System.assert(tier4.equals(tier3));
        System.assert(tier3.equals(tier3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = OASTier.getExample();
        OASTier tier3 = new OASTier();
        OASTier tier4 = new OASTier();

        System.assert(tier1.equals(tier2));
        System.assert(tier2.equals(tier1));
        System.assert(tier3.equals(tier4));
        System.assert(tier4.equals(tier3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = new OASTier();

        System.assertEquals(false, tier1.equals('foo'));
        System.assertEquals(false, tier2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = new OASTier();
        OASTier tier3;

        System.assertEquals(false, tier1.equals(tier3));
        System.assertEquals(false, tier2.equals(tier3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = new OASTier();

        System.assertEquals(tier1.hashCode(), tier1.hashCode());
        System.assertEquals(tier2.hashCode(), tier2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTier tier1 = OASTier.getExample();
        OASTier tier2 = OASTier.getExample();
        OASTier tier3 = new OASTier();
        OASTier tier4 = new OASTier();

        System.assert(tier1.equals(tier2));
        System.assert(tier3.equals(tier4));
        System.assertEquals(tier1.hashCode(), tier2.hashCode());
        System.assertEquals(tier3.hashCode(), tier4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTier tier = new OASTier();
        Map<String, String> propertymappings = tier.getPropertyMappings();
        System.assertEquals('displayName', propertymappings.get('display_name'));
        System.assertEquals('priceMap', propertymappings.get('price_map'));
        System.assertEquals('displayIcon', propertymappings.get('display_icon'));
        System.assertEquals('isSelfService', propertymappings.get('is_self_service'));
        System.assertEquals('isPaid', propertymappings.get('is_paid'));
        System.assertEquals('billingPeriodType', propertymappings.get('billing_period_type'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
        System.assertEquals('consumableFeatures', propertymappings.get('consumable_features'));
        System.assertEquals('accessFeatures', propertymappings.get('access_features'));
        System.assertEquals('addOnSettings', propertymappings.get('add_on_settings'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTier tier = new OASTier();
        System.assertEquals(new List<OASDefaultConsumableFeature>(), tier.consumableFeatures);
        System.assertEquals(new List<OASDefaultAccessFeature>(), tier.accessFeatures);
        System.assertEquals(new List<OASAddOnSetting>(), tier.addOnSettings);
        System.assertEquals(null, tier.name);
        System.assertEquals(null, tier.displayName);
        System.assertEquals(null, tier.priceMap);
        System.assertEquals(null, tier.description);
        System.assertEquals(null, tier.family);
        System.assertEquals(null, tier.price);
        System.assertEquals(null, tier.displayIcon);
        System.assertEquals(null, tier.isSelfService);
        System.assertEquals(null, tier.isPaid);
        System.assertEquals(null, tier.billingPeriodType);
        System.assertEquals(null, tier.sortOrder);
    }
}