@isTest
private class OASAccessFeatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = accessFeature1;
        OASAccessFeature accessFeature3 = new OASAccessFeature();
        OASAccessFeature accessFeature4 = accessFeature3;

        System.assert(accessFeature1.equals(accessFeature2));
        System.assert(accessFeature2.equals(accessFeature1));
        System.assert(accessFeature1.equals(accessFeature1));
        System.assert(accessFeature3.equals(accessFeature4));
        System.assert(accessFeature4.equals(accessFeature3));
        System.assert(accessFeature3.equals(accessFeature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature3 = new OASAccessFeature();
        OASAccessFeature accessFeature4 = new OASAccessFeature();

        System.assert(accessFeature1.equals(accessFeature2));
        System.assert(accessFeature2.equals(accessFeature1));
        System.assert(accessFeature3.equals(accessFeature4));
        System.assert(accessFeature4.equals(accessFeature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = new OASAccessFeature();

        System.assertEquals(false, accessFeature1.equals('foo'));
        System.assertEquals(false, accessFeature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = new OASAccessFeature();
        OASAccessFeature accessFeature3;

        System.assertEquals(false, accessFeature1.equals(accessFeature3));
        System.assertEquals(false, accessFeature2.equals(accessFeature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = new OASAccessFeature();

        System.assertEquals(accessFeature1.hashCode(), accessFeature1.hashCode());
        System.assertEquals(accessFeature2.hashCode(), accessFeature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAccessFeature accessFeature1 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature2 = OASAccessFeature.getExample();
        OASAccessFeature accessFeature3 = new OASAccessFeature();
        OASAccessFeature accessFeature4 = new OASAccessFeature();

        System.assert(accessFeature1.equals(accessFeature2));
        System.assert(accessFeature3.equals(accessFeature4));
        System.assertEquals(accessFeature1.hashCode(), accessFeature2.hashCode());
        System.assertEquals(accessFeature3.hashCode(), accessFeature4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAccessFeature accessFeature = new OASAccessFeature();
        Map<String, String> propertymappings = accessFeature.getPropertyMappings();
        System.assertEquals('hasAccess', propertymappings.get('has_access'));
        System.assertEquals('isTierDefault', propertymappings.get('is_tier_default'));
    }
}