@isTest
private class OASQRCodeLogoPublicTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = qrCodeLogoPublic1;
        OASQRCodeLogoPublic qrCodeLogoPublic3 = new OASQRCodeLogoPublic();
        OASQRCodeLogoPublic qrCodeLogoPublic4 = qrCodeLogoPublic3;

        System.assert(qrCodeLogoPublic1.equals(qrCodeLogoPublic2));
        System.assert(qrCodeLogoPublic2.equals(qrCodeLogoPublic1));
        System.assert(qrCodeLogoPublic1.equals(qrCodeLogoPublic1));
        System.assert(qrCodeLogoPublic3.equals(qrCodeLogoPublic4));
        System.assert(qrCodeLogoPublic4.equals(qrCodeLogoPublic3));
        System.assert(qrCodeLogoPublic3.equals(qrCodeLogoPublic3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic3 = new OASQRCodeLogoPublic();
        OASQRCodeLogoPublic qrCodeLogoPublic4 = new OASQRCodeLogoPublic();

        System.assert(qrCodeLogoPublic1.equals(qrCodeLogoPublic2));
        System.assert(qrCodeLogoPublic2.equals(qrCodeLogoPublic1));
        System.assert(qrCodeLogoPublic3.equals(qrCodeLogoPublic4));
        System.assert(qrCodeLogoPublic4.equals(qrCodeLogoPublic3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = new OASQRCodeLogoPublic();

        System.assertEquals(false, qrCodeLogoPublic1.equals('foo'));
        System.assertEquals(false, qrCodeLogoPublic2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = new OASQRCodeLogoPublic();
        OASQRCodeLogoPublic qrCodeLogoPublic3;

        System.assertEquals(false, qrCodeLogoPublic1.equals(qrCodeLogoPublic3));
        System.assertEquals(false, qrCodeLogoPublic2.equals(qrCodeLogoPublic3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = new OASQRCodeLogoPublic();

        System.assertEquals(qrCodeLogoPublic1.hashCode(), qrCodeLogoPublic1.hashCode());
        System.assertEquals(qrCodeLogoPublic2.hashCode(), qrCodeLogoPublic2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeLogoPublic qrCodeLogoPublic1 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic2 = OASQRCodeLogoPublic.getExample();
        OASQRCodeLogoPublic qrCodeLogoPublic3 = new OASQRCodeLogoPublic();
        OASQRCodeLogoPublic qrCodeLogoPublic4 = new OASQRCodeLogoPublic();

        System.assert(qrCodeLogoPublic1.equals(qrCodeLogoPublic2));
        System.assert(qrCodeLogoPublic3.equals(qrCodeLogoPublic4));
        System.assertEquals(qrCodeLogoPublic1.hashCode(), qrCodeLogoPublic2.hashCode());
        System.assertEquals(qrCodeLogoPublic3.hashCode(), qrCodeLogoPublic4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeLogoPublic qrCodeLogoPublic = new OASQRCodeLogoPublic();
        Map<String, String> propertymappings = qrCodeLogoPublic.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
    }
}