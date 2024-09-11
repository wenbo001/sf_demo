@isTest
private class OASQRCodeFrameTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = qrCodeFrame1;
        OASQRCodeFrame qrCodeFrame3 = new OASQRCodeFrame();
        OASQRCodeFrame qrCodeFrame4 = qrCodeFrame3;

        System.assert(qrCodeFrame1.equals(qrCodeFrame2));
        System.assert(qrCodeFrame2.equals(qrCodeFrame1));
        System.assert(qrCodeFrame1.equals(qrCodeFrame1));
        System.assert(qrCodeFrame3.equals(qrCodeFrame4));
        System.assert(qrCodeFrame4.equals(qrCodeFrame3));
        System.assert(qrCodeFrame3.equals(qrCodeFrame3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame3 = new OASQRCodeFrame();
        OASQRCodeFrame qrCodeFrame4 = new OASQRCodeFrame();

        System.assert(qrCodeFrame1.equals(qrCodeFrame2));
        System.assert(qrCodeFrame2.equals(qrCodeFrame1));
        System.assert(qrCodeFrame3.equals(qrCodeFrame4));
        System.assert(qrCodeFrame4.equals(qrCodeFrame3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = new OASQRCodeFrame();

        System.assertEquals(false, qrCodeFrame1.equals('foo'));
        System.assertEquals(false, qrCodeFrame2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = new OASQRCodeFrame();
        OASQRCodeFrame qrCodeFrame3;

        System.assertEquals(false, qrCodeFrame1.equals(qrCodeFrame3));
        System.assertEquals(false, qrCodeFrame2.equals(qrCodeFrame3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = new OASQRCodeFrame();

        System.assertEquals(qrCodeFrame1.hashCode(), qrCodeFrame1.hashCode());
        System.assertEquals(qrCodeFrame2.hashCode(), qrCodeFrame2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFrame qrCodeFrame1 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame2 = OASQRCodeFrame.getExample();
        OASQRCodeFrame qrCodeFrame3 = new OASQRCodeFrame();
        OASQRCodeFrame qrCodeFrame4 = new OASQRCodeFrame();

        System.assert(qrCodeFrame1.equals(qrCodeFrame2));
        System.assert(qrCodeFrame3.equals(qrCodeFrame4));
        System.assertEquals(qrCodeFrame1.hashCode(), qrCodeFrame2.hashCode());
        System.assertEquals(qrCodeFrame3.hashCode(), qrCodeFrame4.hashCode());
    }
}