@isTest
private class OASFeatureUsageTest {
    @isTest
    private static void equalsSameInstance() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = featureUsage1;
        OASFeatureUsage featureUsage3 = new OASFeatureUsage();
        OASFeatureUsage featureUsage4 = featureUsage3;

        System.assert(featureUsage1.equals(featureUsage2));
        System.assert(featureUsage2.equals(featureUsage1));
        System.assert(featureUsage1.equals(featureUsage1));
        System.assert(featureUsage3.equals(featureUsage4));
        System.assert(featureUsage4.equals(featureUsage3));
        System.assert(featureUsage3.equals(featureUsage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage3 = new OASFeatureUsage();
        OASFeatureUsage featureUsage4 = new OASFeatureUsage();

        System.assert(featureUsage1.equals(featureUsage2));
        System.assert(featureUsage2.equals(featureUsage1));
        System.assert(featureUsage3.equals(featureUsage4));
        System.assert(featureUsage4.equals(featureUsage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = new OASFeatureUsage();

        System.assertEquals(false, featureUsage1.equals('foo'));
        System.assertEquals(false, featureUsage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = new OASFeatureUsage();
        OASFeatureUsage featureUsage3;

        System.assertEquals(false, featureUsage1.equals(featureUsage3));
        System.assertEquals(false, featureUsage2.equals(featureUsage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = new OASFeatureUsage();

        System.assertEquals(featureUsage1.hashCode(), featureUsage1.hashCode());
        System.assertEquals(featureUsage2.hashCode(), featureUsage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFeatureUsage featureUsage1 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage2 = OASFeatureUsage.getExample();
        OASFeatureUsage featureUsage3 = new OASFeatureUsage();
        OASFeatureUsage featureUsage4 = new OASFeatureUsage();

        System.assert(featureUsage1.equals(featureUsage2));
        System.assert(featureUsage3.equals(featureUsage4));
        System.assertEquals(featureUsage1.hashCode(), featureUsage2.hashCode());
        System.assertEquals(featureUsage3.hashCode(), featureUsage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFeatureUsage featureUsage = new OASFeatureUsage();
        Map<String, String> propertymappings = featureUsage.getPropertyMappings();
        System.assertEquals('consumableFeatures', propertymappings.get('consumable_features'));
        System.assertEquals('accessFeatures', propertymappings.get('access_features'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFeatureUsage featureUsage = new OASFeatureUsage();
        System.assertEquals(new List<OASConsumableFeatureFull>(), featureUsage.consumableFeatures);
        System.assertEquals(new List<OASAccessFeature>(), featureUsage.accessFeatures);
    }
}