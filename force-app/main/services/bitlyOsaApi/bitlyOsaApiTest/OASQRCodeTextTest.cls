@isTest
private class OASQRCodeTextTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = qrCodeText1;
        OASQRCodeText qrCodeText3 = new OASQRCodeText();
        OASQRCodeText qrCodeText4 = qrCodeText3;

        System.assert(qrCodeText1.equals(qrCodeText2));
        System.assert(qrCodeText2.equals(qrCodeText1));
        System.assert(qrCodeText1.equals(qrCodeText1));
        System.assert(qrCodeText3.equals(qrCodeText4));
        System.assert(qrCodeText4.equals(qrCodeText3));
        System.assert(qrCodeText3.equals(qrCodeText3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText3 = new OASQRCodeText();
        OASQRCodeText qrCodeText4 = new OASQRCodeText();

        System.assert(qrCodeText1.equals(qrCodeText2));
        System.assert(qrCodeText2.equals(qrCodeText1));
        System.assert(qrCodeText3.equals(qrCodeText4));
        System.assert(qrCodeText4.equals(qrCodeText3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = new OASQRCodeText();

        System.assertEquals(false, qrCodeText1.equals('foo'));
        System.assertEquals(false, qrCodeText2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = new OASQRCodeText();
        OASQRCodeText qrCodeText3;

        System.assertEquals(false, qrCodeText1.equals(qrCodeText3));
        System.assertEquals(false, qrCodeText2.equals(qrCodeText3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = new OASQRCodeText();

        System.assertEquals(qrCodeText1.hashCode(), qrCodeText1.hashCode());
        System.assertEquals(qrCodeText2.hashCode(), qrCodeText2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeText qrCodeText1 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText2 = OASQRCodeText.getExample();
        OASQRCodeText qrCodeText3 = new OASQRCodeText();
        OASQRCodeText qrCodeText4 = new OASQRCodeText();

        System.assert(qrCodeText1.equals(qrCodeText2));
        System.assert(qrCodeText3.equals(qrCodeText4));
        System.assertEquals(qrCodeText1.hashCode(), qrCodeText2.hashCode());
        System.assertEquals(qrCodeText3.hashCode(), qrCodeText4.hashCode());
    }
}