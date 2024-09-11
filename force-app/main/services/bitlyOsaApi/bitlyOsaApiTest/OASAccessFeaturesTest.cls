@isTest
private class OASAccessFeaturesTest {
    @isTest
    private static void equalsSameInstance() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = accessFeatures1;
        OASAccessFeatures accessFeatures3 = new OASAccessFeatures();
        OASAccessFeatures accessFeatures4 = accessFeatures3;

        System.assert(accessFeatures1.equals(accessFeatures2));
        System.assert(accessFeatures2.equals(accessFeatures1));
        System.assert(accessFeatures1.equals(accessFeatures1));
        System.assert(accessFeatures3.equals(accessFeatures4));
        System.assert(accessFeatures4.equals(accessFeatures3));
        System.assert(accessFeatures3.equals(accessFeatures3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures3 = new OASAccessFeatures();
        OASAccessFeatures accessFeatures4 = new OASAccessFeatures();

        System.assert(accessFeatures1.equals(accessFeatures2));
        System.assert(accessFeatures2.equals(accessFeatures1));
        System.assert(accessFeatures3.equals(accessFeatures4));
        System.assert(accessFeatures4.equals(accessFeatures3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = new OASAccessFeatures();

        System.assertEquals(false, accessFeatures1.equals('foo'));
        System.assertEquals(false, accessFeatures2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = new OASAccessFeatures();
        OASAccessFeatures accessFeatures3;

        System.assertEquals(false, accessFeatures1.equals(accessFeatures3));
        System.assertEquals(false, accessFeatures2.equals(accessFeatures3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = new OASAccessFeatures();

        System.assertEquals(accessFeatures1.hashCode(), accessFeatures1.hashCode());
        System.assertEquals(accessFeatures2.hashCode(), accessFeatures2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAccessFeatures accessFeatures1 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures2 = OASAccessFeatures.getExample();
        OASAccessFeatures accessFeatures3 = new OASAccessFeatures();
        OASAccessFeatures accessFeatures4 = new OASAccessFeatures();

        System.assert(accessFeatures1.equals(accessFeatures2));
        System.assert(accessFeatures3.equals(accessFeatures4));
        System.assertEquals(accessFeatures1.hashCode(), accessFeatures2.hashCode());
        System.assertEquals(accessFeatures3.hashCode(), accessFeatures4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAccessFeatures accessFeatures = new OASAccessFeatures();
        Map<String, String> propertymappings = accessFeatures.getPropertyMappings();
        System.assertEquals('accessFeatures', propertymappings.get('access_features'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAccessFeatures accessFeatures = new OASAccessFeatures();
        System.assertEquals(new List<OASAccessFeature>(), accessFeatures.accessFeatures);
    }
}