@isTest
private class OASConsumableFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = consumableFeatures1;
        OASConsumableFeatures consumableFeatures3 = new OASConsumableFeatures();
        OASConsumableFeatures consumableFeatures4 = consumableFeatures3;

        System.assert(consumableFeatures1.equals(consumableFeatures2));
        System.assert(consumableFeatures2.equals(consumableFeatures1));
        System.assert(consumableFeatures1.equals(consumableFeatures1));
        System.assert(consumableFeatures3.equals(consumableFeatures4));
        System.assert(consumableFeatures4.equals(consumableFeatures3));
        System.assert(consumableFeatures3.equals(consumableFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures3 = new OASConsumableFeatures();
        OASConsumableFeatures consumableFeatures4 = new OASConsumableFeatures();

        System.assert(consumableFeatures1.equals(consumableFeatures2));
        System.assert(consumableFeatures2.equals(consumableFeatures1));
        System.assert(consumableFeatures3.equals(consumableFeatures4));
        System.assert(consumableFeatures4.equals(consumableFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = new OASConsumableFeatures();

        System.assertEquals(false, consumableFeatures1.equals('foo'));
        System.assertEquals(false, consumableFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = new OASConsumableFeatures();
        OASConsumableFeatures consumableFeatures3;

        System.assertEquals(false, consumableFeatures1.equals(consumableFeatures3));
        System.assertEquals(false, consumableFeatures2.equals(consumableFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = new OASConsumableFeatures();

        System.assertEquals(consumableFeatures1.hashCode(), consumableFeatures1.hashCode());
        System.assertEquals(consumableFeatures2.hashCode(), consumableFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConsumableFeatures consumableFeatures1 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures2 = OASConsumableFeatures.getExample();
        OASConsumableFeatures consumableFeatures3 = new OASConsumableFeatures();
        OASConsumableFeatures consumableFeatures4 = new OASConsumableFeatures();

        System.assert(consumableFeatures1.equals(consumableFeatures2));
        System.assert(consumableFeatures3.equals(consumableFeatures4));
        System.assertEquals(consumableFeatures1.hashCode(), consumableFeatures2.hashCode());
        System.assertEquals(consumableFeatures3.hashCode(), consumableFeatures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASConsumableFeatures consumableFeatures = new OASConsumableFeatures();
        Map<String, String> propertymappings = consumableFeatures.getPropertyMappings();
        System.assertEquals('consumableFeatures', propertymappings.get('consumable_features'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASConsumableFeatures consumableFeatures = new OASConsumableFeatures();
        System.assertEquals(new List<OASConsumableFeature>(), consumableFeatures.consumableFeatures);
    }
}