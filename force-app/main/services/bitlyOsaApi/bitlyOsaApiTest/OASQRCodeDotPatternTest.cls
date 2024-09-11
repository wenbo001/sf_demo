@isTest
private class OASQRCodeDotPatternTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = qrCodeDotPattern1;
        OASQRCodeDotPattern qrCodeDotPattern3 = new OASQRCodeDotPattern();
        OASQRCodeDotPattern qrCodeDotPattern4 = qrCodeDotPattern3;

        System.assert(qrCodeDotPattern1.equals(qrCodeDotPattern2));
        System.assert(qrCodeDotPattern2.equals(qrCodeDotPattern1));
        System.assert(qrCodeDotPattern1.equals(qrCodeDotPattern1));
        System.assert(qrCodeDotPattern3.equals(qrCodeDotPattern4));
        System.assert(qrCodeDotPattern4.equals(qrCodeDotPattern3));
        System.assert(qrCodeDotPattern3.equals(qrCodeDotPattern3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern3 = new OASQRCodeDotPattern();
        OASQRCodeDotPattern qrCodeDotPattern4 = new OASQRCodeDotPattern();

        System.assert(qrCodeDotPattern1.equals(qrCodeDotPattern2));
        System.assert(qrCodeDotPattern2.equals(qrCodeDotPattern1));
        System.assert(qrCodeDotPattern3.equals(qrCodeDotPattern4));
        System.assert(qrCodeDotPattern4.equals(qrCodeDotPattern3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = new OASQRCodeDotPattern();

        System.assertEquals(false, qrCodeDotPattern1.equals('foo'));
        System.assertEquals(false, qrCodeDotPattern2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = new OASQRCodeDotPattern();
        OASQRCodeDotPattern qrCodeDotPattern3;

        System.assertEquals(false, qrCodeDotPattern1.equals(qrCodeDotPattern3));
        System.assertEquals(false, qrCodeDotPattern2.equals(qrCodeDotPattern3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = new OASQRCodeDotPattern();

        System.assertEquals(qrCodeDotPattern1.hashCode(), qrCodeDotPattern1.hashCode());
        System.assertEquals(qrCodeDotPattern2.hashCode(), qrCodeDotPattern2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeDotPattern qrCodeDotPattern1 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern2 = OASQRCodeDotPattern.getExample();
        OASQRCodeDotPattern qrCodeDotPattern3 = new OASQRCodeDotPattern();
        OASQRCodeDotPattern qrCodeDotPattern4 = new OASQRCodeDotPattern();

        System.assert(qrCodeDotPattern1.equals(qrCodeDotPattern2));
        System.assert(qrCodeDotPattern3.equals(qrCodeDotPattern4));
        System.assertEquals(qrCodeDotPattern1.hashCode(), qrCodeDotPattern2.hashCode());
        System.assertEquals(qrCodeDotPattern3.hashCode(), qrCodeDotPattern4.hashCode());
    }
}