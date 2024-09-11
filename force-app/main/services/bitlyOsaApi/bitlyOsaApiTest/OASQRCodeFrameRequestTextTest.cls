@isTest
private class OASQRCodeFrameRequestTextTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = qrCodeFrameRequestText1;
        OASQRCodeFrameRequestText qrCodeFrameRequestText3 = new OASQRCodeFrameRequestText();
        OASQRCodeFrameRequestText qrCodeFrameRequestText4 = qrCodeFrameRequestText3;

        System.assert(qrCodeFrameRequestText1.equals(qrCodeFrameRequestText2));
        System.assert(qrCodeFrameRequestText2.equals(qrCodeFrameRequestText1));
        System.assert(qrCodeFrameRequestText1.equals(qrCodeFrameRequestText1));
        System.assert(qrCodeFrameRequestText3.equals(qrCodeFrameRequestText4));
        System.assert(qrCodeFrameRequestText4.equals(qrCodeFrameRequestText3));
        System.assert(qrCodeFrameRequestText3.equals(qrCodeFrameRequestText3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText3 = new OASQRCodeFrameRequestText();
        OASQRCodeFrameRequestText qrCodeFrameRequestText4 = new OASQRCodeFrameRequestText();

        System.assert(qrCodeFrameRequestText1.equals(qrCodeFrameRequestText2));
        System.assert(qrCodeFrameRequestText2.equals(qrCodeFrameRequestText1));
        System.assert(qrCodeFrameRequestText3.equals(qrCodeFrameRequestText4));
        System.assert(qrCodeFrameRequestText4.equals(qrCodeFrameRequestText3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = new OASQRCodeFrameRequestText();

        System.assertEquals(false, qrCodeFrameRequestText1.equals('foo'));
        System.assertEquals(false, qrCodeFrameRequestText2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = new OASQRCodeFrameRequestText();
        OASQRCodeFrameRequestText qrCodeFrameRequestText3;

        System.assertEquals(false, qrCodeFrameRequestText1.equals(qrCodeFrameRequestText3));
        System.assertEquals(false, qrCodeFrameRequestText2.equals(qrCodeFrameRequestText3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = new OASQRCodeFrameRequestText();

        System.assertEquals(qrCodeFrameRequestText1.hashCode(), qrCodeFrameRequestText1.hashCode());
        System.assertEquals(qrCodeFrameRequestText2.hashCode(), qrCodeFrameRequestText2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFrameRequestText qrCodeFrameRequestText1 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText2 = OASQRCodeFrameRequestText.getExample();
        OASQRCodeFrameRequestText qrCodeFrameRequestText3 = new OASQRCodeFrameRequestText();
        OASQRCodeFrameRequestText qrCodeFrameRequestText4 = new OASQRCodeFrameRequestText();

        System.assert(qrCodeFrameRequestText1.equals(qrCodeFrameRequestText2));
        System.assert(qrCodeFrameRequestText3.equals(qrCodeFrameRequestText4));
        System.assertEquals(qrCodeFrameRequestText1.hashCode(), qrCodeFrameRequestText2.hashCode());
        System.assertEquals(qrCodeFrameRequestText3.hashCode(), qrCodeFrameRequestText4.hashCode());
    }
}