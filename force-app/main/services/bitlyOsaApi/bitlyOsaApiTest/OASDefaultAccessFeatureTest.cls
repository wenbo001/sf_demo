@isTest
private class OASDefaultAccessFeatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = defaultAccessFeature1;
        OASDefaultAccessFeature defaultAccessFeature3 = new OASDefaultAccessFeature();
        OASDefaultAccessFeature defaultAccessFeature4 = defaultAccessFeature3;

        System.assert(defaultAccessFeature1.equals(defaultAccessFeature2));
        System.assert(defaultAccessFeature2.equals(defaultAccessFeature1));
        System.assert(defaultAccessFeature1.equals(defaultAccessFeature1));
        System.assert(defaultAccessFeature3.equals(defaultAccessFeature4));
        System.assert(defaultAccessFeature4.equals(defaultAccessFeature3));
        System.assert(defaultAccessFeature3.equals(defaultAccessFeature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature3 = new OASDefaultAccessFeature();
        OASDefaultAccessFeature defaultAccessFeature4 = new OASDefaultAccessFeature();

        System.assert(defaultAccessFeature1.equals(defaultAccessFeature2));
        System.assert(defaultAccessFeature2.equals(defaultAccessFeature1));
        System.assert(defaultAccessFeature3.equals(defaultAccessFeature4));
        System.assert(defaultAccessFeature4.equals(defaultAccessFeature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = new OASDefaultAccessFeature();

        System.assertEquals(false, defaultAccessFeature1.equals('foo'));
        System.assertEquals(false, defaultAccessFeature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = new OASDefaultAccessFeature();
        OASDefaultAccessFeature defaultAccessFeature3;

        System.assertEquals(false, defaultAccessFeature1.equals(defaultAccessFeature3));
        System.assertEquals(false, defaultAccessFeature2.equals(defaultAccessFeature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = new OASDefaultAccessFeature();

        System.assertEquals(defaultAccessFeature1.hashCode(), defaultAccessFeature1.hashCode());
        System.assertEquals(defaultAccessFeature2.hashCode(), defaultAccessFeature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultAccessFeature defaultAccessFeature1 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature2 = OASDefaultAccessFeature.getExample();
        OASDefaultAccessFeature defaultAccessFeature3 = new OASDefaultAccessFeature();
        OASDefaultAccessFeature defaultAccessFeature4 = new OASDefaultAccessFeature();

        System.assert(defaultAccessFeature1.equals(defaultAccessFeature2));
        System.assert(defaultAccessFeature3.equals(defaultAccessFeature4));
        System.assertEquals(defaultAccessFeature1.hashCode(), defaultAccessFeature2.hashCode());
        System.assertEquals(defaultAccessFeature3.hashCode(), defaultAccessFeature4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDefaultAccessFeature defaultAccessFeature = new OASDefaultAccessFeature();
        Map<String, String> propertymappings = defaultAccessFeature.getPropertyMappings();
        System.assertEquals('hasAccess', propertymappings.get('has_access'));
    }
}