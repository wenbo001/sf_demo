@isTest
private class OASQRCustomizationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = qrCustomizations1;
        OASQRCustomizations qrCustomizations3 = new OASQRCustomizations();
        OASQRCustomizations qrCustomizations4 = qrCustomizations3;

        System.assert(qrCustomizations1.equals(qrCustomizations2));
        System.assert(qrCustomizations2.equals(qrCustomizations1));
        System.assert(qrCustomizations1.equals(qrCustomizations1));
        System.assert(qrCustomizations3.equals(qrCustomizations4));
        System.assert(qrCustomizations4.equals(qrCustomizations3));
        System.assert(qrCustomizations3.equals(qrCustomizations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations3 = new OASQRCustomizations();
        OASQRCustomizations qrCustomizations4 = new OASQRCustomizations();

        System.assert(qrCustomizations1.equals(qrCustomizations2));
        System.assert(qrCustomizations2.equals(qrCustomizations1));
        System.assert(qrCustomizations3.equals(qrCustomizations4));
        System.assert(qrCustomizations4.equals(qrCustomizations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = new OASQRCustomizations();

        System.assertEquals(false, qrCustomizations1.equals('foo'));
        System.assertEquals(false, qrCustomizations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = new OASQRCustomizations();
        OASQRCustomizations qrCustomizations3;

        System.assertEquals(false, qrCustomizations1.equals(qrCustomizations3));
        System.assertEquals(false, qrCustomizations2.equals(qrCustomizations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = new OASQRCustomizations();

        System.assertEquals(qrCustomizations1.hashCode(), qrCustomizations1.hashCode());
        System.assertEquals(qrCustomizations2.hashCode(), qrCustomizations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCustomizations qrCustomizations1 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations2 = OASQRCustomizations.getExample();
        OASQRCustomizations qrCustomizations3 = new OASQRCustomizations();
        OASQRCustomizations qrCustomizations4 = new OASQRCustomizations();

        System.assert(qrCustomizations1.equals(qrCustomizations2));
        System.assert(qrCustomizations3.equals(qrCustomizations4));
        System.assertEquals(qrCustomizations1.hashCode(), qrCustomizations2.hashCode());
        System.assertEquals(qrCustomizations3.hashCode(), qrCustomizations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCustomizations qrCustomizations = new OASQRCustomizations();
        Map<String, String> propertymappings = qrCustomizations.getPropertyMappings();
        System.assertEquals('excludeBitlyLogo', propertymappings.get('exclude_bitly_logo'));
        System.assertEquals('imageFormat', propertymappings.get('image_format'));
        System.assertEquals('logoImageGuid', propertymappings.get('logo_image_guid'));
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCustomizations qrCustomizations = new OASQRCustomizations();
        System.assertEquals(OASQRCustomizations.ImageFormatEnum.PNG, qrCustomizations.image_format);
        System.assertEquals(null, qrCustomizations.color);
        System.assertEquals(null, qrCustomizations.exclude_bitly_logo);
        System.assertEquals(null, qrCustomizations.logo_image_guid);
        System.assertEquals(null, qrCustomizations.is_hidden);
    }
}