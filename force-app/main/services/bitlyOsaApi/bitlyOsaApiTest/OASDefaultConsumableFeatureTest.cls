@isTest
private class OASDefaultConsumableFeatureTest {
    @isTest
    private static void equalsSameInstance() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = defaultConsumableFeature1;
        OASDefaultConsumableFeature defaultConsumableFeature3 = new OASDefaultConsumableFeature();
        OASDefaultConsumableFeature defaultConsumableFeature4 = defaultConsumableFeature3;

        System.assert(defaultConsumableFeature1.equals(defaultConsumableFeature2));
        System.assert(defaultConsumableFeature2.equals(defaultConsumableFeature1));
        System.assert(defaultConsumableFeature1.equals(defaultConsumableFeature1));
        System.assert(defaultConsumableFeature3.equals(defaultConsumableFeature4));
        System.assert(defaultConsumableFeature4.equals(defaultConsumableFeature3));
        System.assert(defaultConsumableFeature3.equals(defaultConsumableFeature3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature3 = new OASDefaultConsumableFeature();
        OASDefaultConsumableFeature defaultConsumableFeature4 = new OASDefaultConsumableFeature();

        System.assert(defaultConsumableFeature1.equals(defaultConsumableFeature2));
        System.assert(defaultConsumableFeature2.equals(defaultConsumableFeature1));
        System.assert(defaultConsumableFeature3.equals(defaultConsumableFeature4));
        System.assert(defaultConsumableFeature4.equals(defaultConsumableFeature3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = new OASDefaultConsumableFeature();

        System.assertEquals(false, defaultConsumableFeature1.equals('foo'));
        System.assertEquals(false, defaultConsumableFeature2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = new OASDefaultConsumableFeature();
        OASDefaultConsumableFeature defaultConsumableFeature3;

        System.assertEquals(false, defaultConsumableFeature1.equals(defaultConsumableFeature3));
        System.assertEquals(false, defaultConsumableFeature2.equals(defaultConsumableFeature3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = new OASDefaultConsumableFeature();

        System.assertEquals(defaultConsumableFeature1.hashCode(), defaultConsumableFeature1.hashCode());
        System.assertEquals(defaultConsumableFeature2.hashCode(), defaultConsumableFeature2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDefaultConsumableFeature defaultConsumableFeature1 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature2 = OASDefaultConsumableFeature.getExample();
        OASDefaultConsumableFeature defaultConsumableFeature3 = new OASDefaultConsumableFeature();
        OASDefaultConsumableFeature defaultConsumableFeature4 = new OASDefaultConsumableFeature();

        System.assert(defaultConsumableFeature1.equals(defaultConsumableFeature2));
        System.assert(defaultConsumableFeature3.equals(defaultConsumableFeature4));
        System.assertEquals(defaultConsumableFeature1.hashCode(), defaultConsumableFeature2.hashCode());
        System.assertEquals(defaultConsumableFeature3.hashCode(), defaultConsumableFeature4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDefaultConsumableFeature defaultConsumableFeature = new OASDefaultConsumableFeature();
        Map<String, String> propertymappings = defaultConsumableFeature.getPropertyMappings();
        System.assertEquals('r_limit', propertymappings.get('limit'));
    }
}