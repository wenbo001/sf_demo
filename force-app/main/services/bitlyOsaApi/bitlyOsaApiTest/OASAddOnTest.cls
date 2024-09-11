@isTest
private class OASAddOnTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = addOn1;
        OASAddOn addOn3 = new OASAddOn();
        OASAddOn addOn4 = addOn3;

        System.assert(addOn1.equals(addOn2));
        System.assert(addOn2.equals(addOn1));
        System.assert(addOn1.equals(addOn1));
        System.assert(addOn3.equals(addOn4));
        System.assert(addOn4.equals(addOn3));
        System.assert(addOn3.equals(addOn3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = OASAddOn.getExample();
        OASAddOn addOn3 = new OASAddOn();
        OASAddOn addOn4 = new OASAddOn();

        System.assert(addOn1.equals(addOn2));
        System.assert(addOn2.equals(addOn1));
        System.assert(addOn3.equals(addOn4));
        System.assert(addOn4.equals(addOn3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = new OASAddOn();

        System.assertEquals(false, addOn1.equals('foo'));
        System.assertEquals(false, addOn2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = new OASAddOn();
        OASAddOn addOn3;

        System.assertEquals(false, addOn1.equals(addOn3));
        System.assertEquals(false, addOn2.equals(addOn3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = new OASAddOn();

        System.assertEquals(addOn1.hashCode(), addOn1.hashCode());
        System.assertEquals(addOn2.hashCode(), addOn2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddOn addOn1 = OASAddOn.getExample();
        OASAddOn addOn2 = OASAddOn.getExample();
        OASAddOn addOn3 = new OASAddOn();
        OASAddOn addOn4 = new OASAddOn();

        System.assert(addOn1.equals(addOn2));
        System.assert(addOn3.equals(addOn4));
        System.assertEquals(addOn1.hashCode(), addOn2.hashCode());
        System.assertEquals(addOn3.hashCode(), addOn4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddOn addOn = new OASAddOn();
        Map<String, String> propertymappings = addOn.getPropertyMappings();
        System.assertEquals('featureName', propertymappings.get('feature_name'));
    }
}