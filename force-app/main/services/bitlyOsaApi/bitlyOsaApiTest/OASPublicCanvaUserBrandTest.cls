@isTest
private class OASPublicCanvaUserBrandTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = publicCanvaUserBrand1;
        OASPublicCanvaUserBrand publicCanvaUserBrand3 = new OASPublicCanvaUserBrand();
        OASPublicCanvaUserBrand publicCanvaUserBrand4 = publicCanvaUserBrand3;

        System.assert(publicCanvaUserBrand1.equals(publicCanvaUserBrand2));
        System.assert(publicCanvaUserBrand2.equals(publicCanvaUserBrand1));
        System.assert(publicCanvaUserBrand1.equals(publicCanvaUserBrand1));
        System.assert(publicCanvaUserBrand3.equals(publicCanvaUserBrand4));
        System.assert(publicCanvaUserBrand4.equals(publicCanvaUserBrand3));
        System.assert(publicCanvaUserBrand3.equals(publicCanvaUserBrand3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand3 = new OASPublicCanvaUserBrand();
        OASPublicCanvaUserBrand publicCanvaUserBrand4 = new OASPublicCanvaUserBrand();

        System.assert(publicCanvaUserBrand1.equals(publicCanvaUserBrand2));
        System.assert(publicCanvaUserBrand2.equals(publicCanvaUserBrand1));
        System.assert(publicCanvaUserBrand3.equals(publicCanvaUserBrand4));
        System.assert(publicCanvaUserBrand4.equals(publicCanvaUserBrand3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = new OASPublicCanvaUserBrand();

        System.assertEquals(false, publicCanvaUserBrand1.equals('foo'));
        System.assertEquals(false, publicCanvaUserBrand2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = new OASPublicCanvaUserBrand();
        OASPublicCanvaUserBrand publicCanvaUserBrand3;

        System.assertEquals(false, publicCanvaUserBrand1.equals(publicCanvaUserBrand3));
        System.assertEquals(false, publicCanvaUserBrand2.equals(publicCanvaUserBrand3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = new OASPublicCanvaUserBrand();

        System.assertEquals(publicCanvaUserBrand1.hashCode(), publicCanvaUserBrand1.hashCode());
        System.assertEquals(publicCanvaUserBrand2.hashCode(), publicCanvaUserBrand2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicCanvaUserBrand publicCanvaUserBrand1 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand2 = OASPublicCanvaUserBrand.getExample();
        OASPublicCanvaUserBrand publicCanvaUserBrand3 = new OASPublicCanvaUserBrand();
        OASPublicCanvaUserBrand publicCanvaUserBrand4 = new OASPublicCanvaUserBrand();

        System.assert(publicCanvaUserBrand1.equals(publicCanvaUserBrand2));
        System.assert(publicCanvaUserBrand3.equals(publicCanvaUserBrand4));
        System.assertEquals(publicCanvaUserBrand1.hashCode(), publicCanvaUserBrand2.hashCode());
        System.assertEquals(publicCanvaUserBrand3.hashCode(), publicCanvaUserBrand4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicCanvaUserBrand publicCanvaUserBrand = new OASPublicCanvaUserBrand();
        Map<String, String> propertymappings = publicCanvaUserBrand.getPropertyMappings();
        System.assertEquals('canvaUserId', propertymappings.get('canva_user_id'));
        System.assertEquals('canvaBrandId', propertymappings.get('canva_brand_id'));
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}