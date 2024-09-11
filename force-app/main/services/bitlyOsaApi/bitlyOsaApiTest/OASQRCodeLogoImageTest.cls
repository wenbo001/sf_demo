@isTest
private class OASQRCodeLogoImageTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = qrCodeLogoImage1;
        OASQRCodeLogoImage qrCodeLogoImage3 = new OASQRCodeLogoImage();
        OASQRCodeLogoImage qrCodeLogoImage4 = qrCodeLogoImage3;

        System.assert(qrCodeLogoImage1.equals(qrCodeLogoImage2));
        System.assert(qrCodeLogoImage2.equals(qrCodeLogoImage1));
        System.assert(qrCodeLogoImage1.equals(qrCodeLogoImage1));
        System.assert(qrCodeLogoImage3.equals(qrCodeLogoImage4));
        System.assert(qrCodeLogoImage4.equals(qrCodeLogoImage3));
        System.assert(qrCodeLogoImage3.equals(qrCodeLogoImage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage3 = new OASQRCodeLogoImage();
        OASQRCodeLogoImage qrCodeLogoImage4 = new OASQRCodeLogoImage();

        System.assert(qrCodeLogoImage1.equals(qrCodeLogoImage2));
        System.assert(qrCodeLogoImage2.equals(qrCodeLogoImage1));
        System.assert(qrCodeLogoImage3.equals(qrCodeLogoImage4));
        System.assert(qrCodeLogoImage4.equals(qrCodeLogoImage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = new OASQRCodeLogoImage();

        System.assertEquals(false, qrCodeLogoImage1.equals('foo'));
        System.assertEquals(false, qrCodeLogoImage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = new OASQRCodeLogoImage();
        OASQRCodeLogoImage qrCodeLogoImage3;

        System.assertEquals(false, qrCodeLogoImage1.equals(qrCodeLogoImage3));
        System.assertEquals(false, qrCodeLogoImage2.equals(qrCodeLogoImage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = new OASQRCodeLogoImage();

        System.assertEquals(qrCodeLogoImage1.hashCode(), qrCodeLogoImage1.hashCode());
        System.assertEquals(qrCodeLogoImage2.hashCode(), qrCodeLogoImage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeLogoImage qrCodeLogoImage1 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage2 = OASQRCodeLogoImage.getExample();
        OASQRCodeLogoImage qrCodeLogoImage3 = new OASQRCodeLogoImage();
        OASQRCodeLogoImage qrCodeLogoImage4 = new OASQRCodeLogoImage();

        System.assert(qrCodeLogoImage1.equals(qrCodeLogoImage2));
        System.assert(qrCodeLogoImage3.equals(qrCodeLogoImage4));
        System.assertEquals(qrCodeLogoImage1.hashCode(), qrCodeLogoImage2.hashCode());
        System.assertEquals(qrCodeLogoImage3.hashCode(), qrCodeLogoImage4.hashCode());
    }
}