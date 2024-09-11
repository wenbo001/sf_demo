@isTest
private class OASQRCodeCustomizationsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = qrCodeCustomizations1;
        OASQRCodeCustomizations qrCodeCustomizations3 = new OASQRCodeCustomizations();
        OASQRCodeCustomizations qrCodeCustomizations4 = qrCodeCustomizations3;

        System.assert(qrCodeCustomizations1.equals(qrCodeCustomizations2));
        System.assert(qrCodeCustomizations2.equals(qrCodeCustomizations1));
        System.assert(qrCodeCustomizations1.equals(qrCodeCustomizations1));
        System.assert(qrCodeCustomizations3.equals(qrCodeCustomizations4));
        System.assert(qrCodeCustomizations4.equals(qrCodeCustomizations3));
        System.assert(qrCodeCustomizations3.equals(qrCodeCustomizations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations3 = new OASQRCodeCustomizations();
        OASQRCodeCustomizations qrCodeCustomizations4 = new OASQRCodeCustomizations();

        System.assert(qrCodeCustomizations1.equals(qrCodeCustomizations2));
        System.assert(qrCodeCustomizations2.equals(qrCodeCustomizations1));
        System.assert(qrCodeCustomizations3.equals(qrCodeCustomizations4));
        System.assert(qrCodeCustomizations4.equals(qrCodeCustomizations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = new OASQRCodeCustomizations();

        System.assertEquals(false, qrCodeCustomizations1.equals('foo'));
        System.assertEquals(false, qrCodeCustomizations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = new OASQRCodeCustomizations();
        OASQRCodeCustomizations qrCodeCustomizations3;

        System.assertEquals(false, qrCodeCustomizations1.equals(qrCodeCustomizations3));
        System.assertEquals(false, qrCodeCustomizations2.equals(qrCodeCustomizations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = new OASQRCodeCustomizations();

        System.assertEquals(qrCodeCustomizations1.hashCode(), qrCodeCustomizations1.hashCode());
        System.assertEquals(qrCodeCustomizations2.hashCode(), qrCodeCustomizations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCustomizations qrCodeCustomizations1 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations2 = OASQRCodeCustomizations.getExample();
        OASQRCodeCustomizations qrCodeCustomizations3 = new OASQRCodeCustomizations();
        OASQRCodeCustomizations qrCodeCustomizations4 = new OASQRCodeCustomizations();

        System.assert(qrCodeCustomizations1.equals(qrCodeCustomizations2));
        System.assert(qrCodeCustomizations3.equals(qrCodeCustomizations4));
        System.assertEquals(qrCodeCustomizations1.hashCode(), qrCodeCustomizations2.hashCode());
        System.assertEquals(qrCodeCustomizations3.hashCode(), qrCodeCustomizations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeCustomizations qrCodeCustomizations = new OASQRCodeCustomizations();
        Map<String, String> propertymappings = qrCodeCustomizations.getPropertyMappings();
        System.assertEquals('backgroundColor', propertymappings.get('background_color'));
        System.assertEquals('dotPatternColor', propertymappings.get('dot_pattern_color'));
        System.assertEquals('dotPatternType', propertymappings.get('dot_pattern_type'));
        System.assertEquals('backgroundGradient', propertymappings.get('background_gradient'));
        System.assertEquals('specSettings', propertymappings.get('spec_settings'));
    }
}