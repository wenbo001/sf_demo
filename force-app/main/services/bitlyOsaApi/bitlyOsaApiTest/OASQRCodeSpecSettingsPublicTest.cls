@isTest
private class OASQRCodeSpecSettingsPublicTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = qrCodeSpecSettingsPublic1;
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic3 = new OASQRCodeSpecSettingsPublic();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic4 = qrCodeSpecSettingsPublic3;

        System.assert(qrCodeSpecSettingsPublic1.equals(qrCodeSpecSettingsPublic2));
        System.assert(qrCodeSpecSettingsPublic2.equals(qrCodeSpecSettingsPublic1));
        System.assert(qrCodeSpecSettingsPublic1.equals(qrCodeSpecSettingsPublic1));
        System.assert(qrCodeSpecSettingsPublic3.equals(qrCodeSpecSettingsPublic4));
        System.assert(qrCodeSpecSettingsPublic4.equals(qrCodeSpecSettingsPublic3));
        System.assert(qrCodeSpecSettingsPublic3.equals(qrCodeSpecSettingsPublic3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic3 = new OASQRCodeSpecSettingsPublic();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic4 = new OASQRCodeSpecSettingsPublic();

        System.assert(qrCodeSpecSettingsPublic1.equals(qrCodeSpecSettingsPublic2));
        System.assert(qrCodeSpecSettingsPublic2.equals(qrCodeSpecSettingsPublic1));
        System.assert(qrCodeSpecSettingsPublic3.equals(qrCodeSpecSettingsPublic4));
        System.assert(qrCodeSpecSettingsPublic4.equals(qrCodeSpecSettingsPublic3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = new OASQRCodeSpecSettingsPublic();

        System.assertEquals(false, qrCodeSpecSettingsPublic1.equals('foo'));
        System.assertEquals(false, qrCodeSpecSettingsPublic2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = new OASQRCodeSpecSettingsPublic();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic3;

        System.assertEquals(false, qrCodeSpecSettingsPublic1.equals(qrCodeSpecSettingsPublic3));
        System.assertEquals(false, qrCodeSpecSettingsPublic2.equals(qrCodeSpecSettingsPublic3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = new OASQRCodeSpecSettingsPublic();

        System.assertEquals(qrCodeSpecSettingsPublic1.hashCode(), qrCodeSpecSettingsPublic1.hashCode());
        System.assertEquals(qrCodeSpecSettingsPublic2.hashCode(), qrCodeSpecSettingsPublic2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic1 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic2 = OASQRCodeSpecSettingsPublic.getExample();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic3 = new OASQRCodeSpecSettingsPublic();
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic4 = new OASQRCodeSpecSettingsPublic();

        System.assert(qrCodeSpecSettingsPublic1.equals(qrCodeSpecSettingsPublic2));
        System.assert(qrCodeSpecSettingsPublic3.equals(qrCodeSpecSettingsPublic4));
        System.assertEquals(qrCodeSpecSettingsPublic1.hashCode(), qrCodeSpecSettingsPublic2.hashCode());
        System.assertEquals(qrCodeSpecSettingsPublic3.hashCode(), qrCodeSpecSettingsPublic4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeSpecSettingsPublic qrCodeSpecSettingsPublic = new OASQRCodeSpecSettingsPublic();
        Map<String, String> propertymappings = qrCodeSpecSettingsPublic.getPropertyMappings();
        System.assertEquals('errorCorrection', propertymappings.get('error_correction'));
    }
}