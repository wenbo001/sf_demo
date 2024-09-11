@isTest
private class OASQRCodeCustomizationsPublicTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = qrCodeCustomizationsPublic1;
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic3 = new OASQRCodeCustomizationsPublic();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic4 = qrCodeCustomizationsPublic3;

        System.assert(qrCodeCustomizationsPublic1.equals(qrCodeCustomizationsPublic2));
        System.assert(qrCodeCustomizationsPublic2.equals(qrCodeCustomizationsPublic1));
        System.assert(qrCodeCustomizationsPublic1.equals(qrCodeCustomizationsPublic1));
        System.assert(qrCodeCustomizationsPublic3.equals(qrCodeCustomizationsPublic4));
        System.assert(qrCodeCustomizationsPublic4.equals(qrCodeCustomizationsPublic3));
        System.assert(qrCodeCustomizationsPublic3.equals(qrCodeCustomizationsPublic3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic3 = new OASQRCodeCustomizationsPublic();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic4 = new OASQRCodeCustomizationsPublic();

        System.assert(qrCodeCustomizationsPublic1.equals(qrCodeCustomizationsPublic2));
        System.assert(qrCodeCustomizationsPublic2.equals(qrCodeCustomizationsPublic1));
        System.assert(qrCodeCustomizationsPublic3.equals(qrCodeCustomizationsPublic4));
        System.assert(qrCodeCustomizationsPublic4.equals(qrCodeCustomizationsPublic3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = new OASQRCodeCustomizationsPublic();

        System.assertEquals(false, qrCodeCustomizationsPublic1.equals('foo'));
        System.assertEquals(false, qrCodeCustomizationsPublic2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = new OASQRCodeCustomizationsPublic();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic3;

        System.assertEquals(false, qrCodeCustomizationsPublic1.equals(qrCodeCustomizationsPublic3));
        System.assertEquals(false, qrCodeCustomizationsPublic2.equals(qrCodeCustomizationsPublic3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = new OASQRCodeCustomizationsPublic();

        System.assertEquals(qrCodeCustomizationsPublic1.hashCode(), qrCodeCustomizationsPublic1.hashCode());
        System.assertEquals(qrCodeCustomizationsPublic2.hashCode(), qrCodeCustomizationsPublic2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic1 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic2 = OASQRCodeCustomizationsPublic.getExample();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic3 = new OASQRCodeCustomizationsPublic();
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic4 = new OASQRCodeCustomizationsPublic();

        System.assert(qrCodeCustomizationsPublic1.equals(qrCodeCustomizationsPublic2));
        System.assert(qrCodeCustomizationsPublic3.equals(qrCodeCustomizationsPublic4));
        System.assertEquals(qrCodeCustomizationsPublic1.hashCode(), qrCodeCustomizationsPublic2.hashCode());
        System.assertEquals(qrCodeCustomizationsPublic3.hashCode(), qrCodeCustomizationsPublic4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeCustomizationsPublic qrCodeCustomizationsPublic = new OASQRCodeCustomizationsPublic();
        Map<String, String> propertymappings = qrCodeCustomizationsPublic.getPropertyMappings();
        System.assertEquals('backgroundColor', propertymappings.get('background_color'));
        System.assertEquals('dotPatternColor', propertymappings.get('dot_pattern_color'));
        System.assertEquals('dotPatternType', propertymappings.get('dot_pattern_type'));
        System.assertEquals('backgroundGradient', propertymappings.get('background_gradient'));
        System.assertEquals('specSettings', propertymappings.get('spec_settings'));
    }
}