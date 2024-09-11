@isTest
private class OASAddOnSettingTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = addOnSetting1;
        OASAddOnSetting addOnSetting3 = new OASAddOnSetting();
        OASAddOnSetting addOnSetting4 = addOnSetting3;

        System.assert(addOnSetting1.equals(addOnSetting2));
        System.assert(addOnSetting2.equals(addOnSetting1));
        System.assert(addOnSetting1.equals(addOnSetting1));
        System.assert(addOnSetting3.equals(addOnSetting4));
        System.assert(addOnSetting4.equals(addOnSetting3));
        System.assert(addOnSetting3.equals(addOnSetting3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting3 = new OASAddOnSetting();
        OASAddOnSetting addOnSetting4 = new OASAddOnSetting();

        System.assert(addOnSetting1.equals(addOnSetting2));
        System.assert(addOnSetting2.equals(addOnSetting1));
        System.assert(addOnSetting3.equals(addOnSetting4));
        System.assert(addOnSetting4.equals(addOnSetting3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = new OASAddOnSetting();

        System.assertEquals(false, addOnSetting1.equals('foo'));
        System.assertEquals(false, addOnSetting2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = new OASAddOnSetting();
        OASAddOnSetting addOnSetting3;

        System.assertEquals(false, addOnSetting1.equals(addOnSetting3));
        System.assertEquals(false, addOnSetting2.equals(addOnSetting3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = new OASAddOnSetting();

        System.assertEquals(addOnSetting1.hashCode(), addOnSetting1.hashCode());
        System.assertEquals(addOnSetting2.hashCode(), addOnSetting2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddOnSetting addOnSetting1 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting2 = OASAddOnSetting.getExample();
        OASAddOnSetting addOnSetting3 = new OASAddOnSetting();
        OASAddOnSetting addOnSetting4 = new OASAddOnSetting();

        System.assert(addOnSetting1.equals(addOnSetting2));
        System.assert(addOnSetting3.equals(addOnSetting4));
        System.assertEquals(addOnSetting1.hashCode(), addOnSetting2.hashCode());
        System.assertEquals(addOnSetting3.hashCode(), addOnSetting4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddOnSetting addOnSetting = new OASAddOnSetting();
        Map<String, String> propertymappings = addOnSetting.getPropertyMappings();
        System.assertEquals('featureName', propertymappings.get('feature_name'));
        System.assertEquals('r_limit', propertymappings.get('limit'));
        System.assertEquals('priceMap', propertymappings.get('price_map'));
    }
}