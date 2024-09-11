@isTest
private class OASQRCodeLogoCropTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = qrCodeLogoCrop1;
        OASQRCodeLogoCrop qrCodeLogoCrop3 = new OASQRCodeLogoCrop();
        OASQRCodeLogoCrop qrCodeLogoCrop4 = qrCodeLogoCrop3;

        System.assert(qrCodeLogoCrop1.equals(qrCodeLogoCrop2));
        System.assert(qrCodeLogoCrop2.equals(qrCodeLogoCrop1));
        System.assert(qrCodeLogoCrop1.equals(qrCodeLogoCrop1));
        System.assert(qrCodeLogoCrop3.equals(qrCodeLogoCrop4));
        System.assert(qrCodeLogoCrop4.equals(qrCodeLogoCrop3));
        System.assert(qrCodeLogoCrop3.equals(qrCodeLogoCrop3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop3 = new OASQRCodeLogoCrop();
        OASQRCodeLogoCrop qrCodeLogoCrop4 = new OASQRCodeLogoCrop();

        System.assert(qrCodeLogoCrop1.equals(qrCodeLogoCrop2));
        System.assert(qrCodeLogoCrop2.equals(qrCodeLogoCrop1));
        System.assert(qrCodeLogoCrop3.equals(qrCodeLogoCrop4));
        System.assert(qrCodeLogoCrop4.equals(qrCodeLogoCrop3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = new OASQRCodeLogoCrop();

        System.assertEquals(false, qrCodeLogoCrop1.equals('foo'));
        System.assertEquals(false, qrCodeLogoCrop2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = new OASQRCodeLogoCrop();
        OASQRCodeLogoCrop qrCodeLogoCrop3;

        System.assertEquals(false, qrCodeLogoCrop1.equals(qrCodeLogoCrop3));
        System.assertEquals(false, qrCodeLogoCrop2.equals(qrCodeLogoCrop3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = new OASQRCodeLogoCrop();

        System.assertEquals(qrCodeLogoCrop1.hashCode(), qrCodeLogoCrop1.hashCode());
        System.assertEquals(qrCodeLogoCrop2.hashCode(), qrCodeLogoCrop2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeLogoCrop qrCodeLogoCrop1 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop2 = OASQRCodeLogoCrop.getExample();
        OASQRCodeLogoCrop qrCodeLogoCrop3 = new OASQRCodeLogoCrop();
        OASQRCodeLogoCrop qrCodeLogoCrop4 = new OASQRCodeLogoCrop();

        System.assert(qrCodeLogoCrop1.equals(qrCodeLogoCrop2));
        System.assert(qrCodeLogoCrop3.equals(qrCodeLogoCrop4));
        System.assertEquals(qrCodeLogoCrop1.hashCode(), qrCodeLogoCrop2.hashCode());
        System.assertEquals(qrCodeLogoCrop3.hashCode(), qrCodeLogoCrop4.hashCode());
    }
}