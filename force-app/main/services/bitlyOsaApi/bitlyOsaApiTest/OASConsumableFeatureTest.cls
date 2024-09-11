@isTest
private class OASConsumableFeatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = consumableFeature1;
        OASConsumableFeature consumableFeature3 = new OASConsumableFeature();
        OASConsumableFeature consumableFeature4 = consumableFeature3;

        System.assert(consumableFeature1.equals(consumableFeature2));
        System.assert(consumableFeature2.equals(consumableFeature1));
        System.assert(consumableFeature1.equals(consumableFeature1));
        System.assert(consumableFeature3.equals(consumableFeature4));
        System.assert(consumableFeature4.equals(consumableFeature3));
        System.assert(consumableFeature3.equals(consumableFeature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature3 = new OASConsumableFeature();
        OASConsumableFeature consumableFeature4 = new OASConsumableFeature();

        System.assert(consumableFeature1.equals(consumableFeature2));
        System.assert(consumableFeature2.equals(consumableFeature1));
        System.assert(consumableFeature3.equals(consumableFeature4));
        System.assert(consumableFeature4.equals(consumableFeature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = new OASConsumableFeature();

        System.assertEquals(false, consumableFeature1.equals('foo'));
        System.assertEquals(false, consumableFeature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = new OASConsumableFeature();
        OASConsumableFeature consumableFeature3;

        System.assertEquals(false, consumableFeature1.equals(consumableFeature3));
        System.assertEquals(false, consumableFeature2.equals(consumableFeature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = new OASConsumableFeature();

        System.assertEquals(consumableFeature1.hashCode(), consumableFeature1.hashCode());
        System.assertEquals(consumableFeature2.hashCode(), consumableFeature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConsumableFeature consumableFeature1 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature2 = OASConsumableFeature.getExample();
        OASConsumableFeature consumableFeature3 = new OASConsumableFeature();
        OASConsumableFeature consumableFeature4 = new OASConsumableFeature();

        System.assert(consumableFeature1.equals(consumableFeature2));
        System.assert(consumableFeature3.equals(consumableFeature4));
        System.assertEquals(consumableFeature1.hashCode(), consumableFeature2.hashCode());
        System.assertEquals(consumableFeature3.hashCode(), consumableFeature4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASConsumableFeature consumableFeature = new OASConsumableFeature();
        Map<String, String> propertymappings = consumableFeature.getPropertyMappings();
        System.assertEquals('r_limit', propertymappings.get('limit'));
        System.assertEquals('isTierDefault', propertymappings.get('is_tier_default'));
        System.assertEquals('addOns', propertymappings.get('add_ons'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASConsumableFeature consumableFeature = new OASConsumableFeature();
        System.assertEquals(new List<OASConsumableFeatureAddOn>(), consumableFeature.addOns);
        System.assertEquals(null, consumableFeature.created);
        System.assertEquals(null, consumableFeature.modified);
        System.assertEquals(null, consumableFeature.id);
        System.assertEquals(null, consumableFeature.name);
        System.assertEquals(null, consumableFeature.r_limit);
        System.assertEquals(null, consumableFeature.isTierDefault);
    }
}