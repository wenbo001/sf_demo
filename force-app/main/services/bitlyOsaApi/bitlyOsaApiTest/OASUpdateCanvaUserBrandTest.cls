@isTest
private class OASUpdateCanvaUserBrandTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = updateCanvaUserBrand1;
        OASUpdateCanvaUserBrand updateCanvaUserBrand3 = new OASUpdateCanvaUserBrand();
        OASUpdateCanvaUserBrand updateCanvaUserBrand4 = updateCanvaUserBrand3;

        System.assert(updateCanvaUserBrand1.equals(updateCanvaUserBrand2));
        System.assert(updateCanvaUserBrand2.equals(updateCanvaUserBrand1));
        System.assert(updateCanvaUserBrand1.equals(updateCanvaUserBrand1));
        System.assert(updateCanvaUserBrand3.equals(updateCanvaUserBrand4));
        System.assert(updateCanvaUserBrand4.equals(updateCanvaUserBrand3));
        System.assert(updateCanvaUserBrand3.equals(updateCanvaUserBrand3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand3 = new OASUpdateCanvaUserBrand();
        OASUpdateCanvaUserBrand updateCanvaUserBrand4 = new OASUpdateCanvaUserBrand();

        System.assert(updateCanvaUserBrand1.equals(updateCanvaUserBrand2));
        System.assert(updateCanvaUserBrand2.equals(updateCanvaUserBrand1));
        System.assert(updateCanvaUserBrand3.equals(updateCanvaUserBrand4));
        System.assert(updateCanvaUserBrand4.equals(updateCanvaUserBrand3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = new OASUpdateCanvaUserBrand();

        System.assertEquals(false, updateCanvaUserBrand1.equals('foo'));
        System.assertEquals(false, updateCanvaUserBrand2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = new OASUpdateCanvaUserBrand();
        OASUpdateCanvaUserBrand updateCanvaUserBrand3;

        System.assertEquals(false, updateCanvaUserBrand1.equals(updateCanvaUserBrand3));
        System.assertEquals(false, updateCanvaUserBrand2.equals(updateCanvaUserBrand3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = new OASUpdateCanvaUserBrand();

        System.assertEquals(updateCanvaUserBrand1.hashCode(), updateCanvaUserBrand1.hashCode());
        System.assertEquals(updateCanvaUserBrand2.hashCode(), updateCanvaUserBrand2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand1 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand2 = OASUpdateCanvaUserBrand.getExample();
        OASUpdateCanvaUserBrand updateCanvaUserBrand3 = new OASUpdateCanvaUserBrand();
        OASUpdateCanvaUserBrand updateCanvaUserBrand4 = new OASUpdateCanvaUserBrand();

        System.assert(updateCanvaUserBrand1.equals(updateCanvaUserBrand2));
        System.assert(updateCanvaUserBrand3.equals(updateCanvaUserBrand4));
        System.assertEquals(updateCanvaUserBrand1.hashCode(), updateCanvaUserBrand2.hashCode());
        System.assertEquals(updateCanvaUserBrand3.hashCode(), updateCanvaUserBrand4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateCanvaUserBrand updateCanvaUserBrand = new OASUpdateCanvaUserBrand();
        Map<String, String> propertymappings = updateCanvaUserBrand.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
    }
}