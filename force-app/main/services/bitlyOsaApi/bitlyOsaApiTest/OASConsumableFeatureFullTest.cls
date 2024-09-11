@isTest
private class OASConsumableFeatureFullTest {
    @isTest
    private static void equalsSameInstance() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = consumableFeatureFull1;
        OASConsumableFeatureFull consumableFeatureFull3 = new OASConsumableFeatureFull();
        OASConsumableFeatureFull consumableFeatureFull4 = consumableFeatureFull3;

        System.assert(consumableFeatureFull1.equals(consumableFeatureFull2));
        System.assert(consumableFeatureFull2.equals(consumableFeatureFull1));
        System.assert(consumableFeatureFull1.equals(consumableFeatureFull1));
        System.assert(consumableFeatureFull3.equals(consumableFeatureFull4));
        System.assert(consumableFeatureFull4.equals(consumableFeatureFull3));
        System.assert(consumableFeatureFull3.equals(consumableFeatureFull3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull3 = new OASConsumableFeatureFull();
        OASConsumableFeatureFull consumableFeatureFull4 = new OASConsumableFeatureFull();

        System.assert(consumableFeatureFull1.equals(consumableFeatureFull2));
        System.assert(consumableFeatureFull2.equals(consumableFeatureFull1));
        System.assert(consumableFeatureFull3.equals(consumableFeatureFull4));
        System.assert(consumableFeatureFull4.equals(consumableFeatureFull3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = new OASConsumableFeatureFull();

        System.assertEquals(false, consumableFeatureFull1.equals('foo'));
        System.assertEquals(false, consumableFeatureFull2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = new OASConsumableFeatureFull();
        OASConsumableFeatureFull consumableFeatureFull3;

        System.assertEquals(false, consumableFeatureFull1.equals(consumableFeatureFull3));
        System.assertEquals(false, consumableFeatureFull2.equals(consumableFeatureFull3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = new OASConsumableFeatureFull();

        System.assertEquals(consumableFeatureFull1.hashCode(), consumableFeatureFull1.hashCode());
        System.assertEquals(consumableFeatureFull2.hashCode(), consumableFeatureFull2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConsumableFeatureFull consumableFeatureFull1 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull2 = OASConsumableFeatureFull.getExample();
        OASConsumableFeatureFull consumableFeatureFull3 = new OASConsumableFeatureFull();
        OASConsumableFeatureFull consumableFeatureFull4 = new OASConsumableFeatureFull();

        System.assert(consumableFeatureFull1.equals(consumableFeatureFull2));
        System.assert(consumableFeatureFull3.equals(consumableFeatureFull4));
        System.assertEquals(consumableFeatureFull1.hashCode(), consumableFeatureFull2.hashCode());
        System.assertEquals(consumableFeatureFull3.hashCode(), consumableFeatureFull4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASConsumableFeatureFull consumableFeatureFull = new OASConsumableFeatureFull();
        Map<String, String> propertymappings = consumableFeatureFull.getPropertyMappings();
        System.assertEquals('r_limit', propertymappings.get('limit'));
        System.assertEquals('isTierDefault', propertymappings.get('is_tier_default'));
        System.assertEquals('isEnforced', propertymappings.get('is_enforced'));
        System.assertEquals('isLimited', propertymappings.get('is_limited'));
        System.assertEquals('addOnUsage', propertymappings.get('add_on_usage'));
    }
}