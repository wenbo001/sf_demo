@isTest
private class OASConsumableFeatureAddOnTest {
    @isTest
    private static void equalsSameInstance() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = consumableFeatureAddOn1;
        OASConsumableFeatureAddOn consumableFeatureAddOn3 = new OASConsumableFeatureAddOn();
        OASConsumableFeatureAddOn consumableFeatureAddOn4 = consumableFeatureAddOn3;

        System.assert(consumableFeatureAddOn1.equals(consumableFeatureAddOn2));
        System.assert(consumableFeatureAddOn2.equals(consumableFeatureAddOn1));
        System.assert(consumableFeatureAddOn1.equals(consumableFeatureAddOn1));
        System.assert(consumableFeatureAddOn3.equals(consumableFeatureAddOn4));
        System.assert(consumableFeatureAddOn4.equals(consumableFeatureAddOn3));
        System.assert(consumableFeatureAddOn3.equals(consumableFeatureAddOn3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn3 = new OASConsumableFeatureAddOn();
        OASConsumableFeatureAddOn consumableFeatureAddOn4 = new OASConsumableFeatureAddOn();

        System.assert(consumableFeatureAddOn1.equals(consumableFeatureAddOn2));
        System.assert(consumableFeatureAddOn2.equals(consumableFeatureAddOn1));
        System.assert(consumableFeatureAddOn3.equals(consumableFeatureAddOn4));
        System.assert(consumableFeatureAddOn4.equals(consumableFeatureAddOn3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = new OASConsumableFeatureAddOn();

        System.assertEquals(false, consumableFeatureAddOn1.equals('foo'));
        System.assertEquals(false, consumableFeatureAddOn2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = new OASConsumableFeatureAddOn();
        OASConsumableFeatureAddOn consumableFeatureAddOn3;

        System.assertEquals(false, consumableFeatureAddOn1.equals(consumableFeatureAddOn3));
        System.assertEquals(false, consumableFeatureAddOn2.equals(consumableFeatureAddOn3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = new OASConsumableFeatureAddOn();

        System.assertEquals(consumableFeatureAddOn1.hashCode(), consumableFeatureAddOn1.hashCode());
        System.assertEquals(consumableFeatureAddOn2.hashCode(), consumableFeatureAddOn2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConsumableFeatureAddOn consumableFeatureAddOn1 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn2 = OASConsumableFeatureAddOn.getExample();
        OASConsumableFeatureAddOn consumableFeatureAddOn3 = new OASConsumableFeatureAddOn();
        OASConsumableFeatureAddOn consumableFeatureAddOn4 = new OASConsumableFeatureAddOn();

        System.assert(consumableFeatureAddOn1.equals(consumableFeatureAddOn2));
        System.assert(consumableFeatureAddOn3.equals(consumableFeatureAddOn4));
        System.assertEquals(consumableFeatureAddOn1.hashCode(), consumableFeatureAddOn2.hashCode());
        System.assertEquals(consumableFeatureAddOn3.hashCode(), consumableFeatureAddOn4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASConsumableFeatureAddOn consumableFeatureAddOn = new OASConsumableFeatureAddOn();
        Map<String, String> propertymappings = consumableFeatureAddOn.getPropertyMappings();
        System.assertEquals('startDate', propertymappings.get('start_date'));
        System.assertEquals('endDate', propertymappings.get('end_date'));
        System.assertEquals('featureName', propertymappings.get('feature_name'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}