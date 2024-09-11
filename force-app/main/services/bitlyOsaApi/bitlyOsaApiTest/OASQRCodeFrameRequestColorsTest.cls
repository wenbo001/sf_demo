@isTest
private class OASQRCodeFrameRequestColorsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = qrCodeFrameRequestColors1;
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors3 = new OASQRCodeFrameRequestColors();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors4 = qrCodeFrameRequestColors3;

        System.assert(qrCodeFrameRequestColors1.equals(qrCodeFrameRequestColors2));
        System.assert(qrCodeFrameRequestColors2.equals(qrCodeFrameRequestColors1));
        System.assert(qrCodeFrameRequestColors1.equals(qrCodeFrameRequestColors1));
        System.assert(qrCodeFrameRequestColors3.equals(qrCodeFrameRequestColors4));
        System.assert(qrCodeFrameRequestColors4.equals(qrCodeFrameRequestColors3));
        System.assert(qrCodeFrameRequestColors3.equals(qrCodeFrameRequestColors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors3 = new OASQRCodeFrameRequestColors();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors4 = new OASQRCodeFrameRequestColors();

        System.assert(qrCodeFrameRequestColors1.equals(qrCodeFrameRequestColors2));
        System.assert(qrCodeFrameRequestColors2.equals(qrCodeFrameRequestColors1));
        System.assert(qrCodeFrameRequestColors3.equals(qrCodeFrameRequestColors4));
        System.assert(qrCodeFrameRequestColors4.equals(qrCodeFrameRequestColors3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = new OASQRCodeFrameRequestColors();

        System.assertEquals(false, qrCodeFrameRequestColors1.equals('foo'));
        System.assertEquals(false, qrCodeFrameRequestColors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = new OASQRCodeFrameRequestColors();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors3;

        System.assertEquals(false, qrCodeFrameRequestColors1.equals(qrCodeFrameRequestColors3));
        System.assertEquals(false, qrCodeFrameRequestColors2.equals(qrCodeFrameRequestColors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = new OASQRCodeFrameRequestColors();

        System.assertEquals(qrCodeFrameRequestColors1.hashCode(), qrCodeFrameRequestColors1.hashCode());
        System.assertEquals(qrCodeFrameRequestColors2.hashCode(), qrCodeFrameRequestColors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors1 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors2 = OASQRCodeFrameRequestColors.getExample();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors3 = new OASQRCodeFrameRequestColors();
        OASQRCodeFrameRequestColors qrCodeFrameRequestColors4 = new OASQRCodeFrameRequestColors();

        System.assert(qrCodeFrameRequestColors1.equals(qrCodeFrameRequestColors2));
        System.assert(qrCodeFrameRequestColors3.equals(qrCodeFrameRequestColors4));
        System.assertEquals(qrCodeFrameRequestColors1.hashCode(), qrCodeFrameRequestColors2.hashCode());
        System.assertEquals(qrCodeFrameRequestColors3.hashCode(), qrCodeFrameRequestColors4.hashCode());
    }
}