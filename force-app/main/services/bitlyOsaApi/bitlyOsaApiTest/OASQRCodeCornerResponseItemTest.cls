@isTest
private class OASQRCodeCornerResponseItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = qrCodeCornerResponseItem1;
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem3 = new OASQRCodeCornerResponseItem();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem4 = qrCodeCornerResponseItem3;

        System.assert(qrCodeCornerResponseItem1.equals(qrCodeCornerResponseItem2));
        System.assert(qrCodeCornerResponseItem2.equals(qrCodeCornerResponseItem1));
        System.assert(qrCodeCornerResponseItem1.equals(qrCodeCornerResponseItem1));
        System.assert(qrCodeCornerResponseItem3.equals(qrCodeCornerResponseItem4));
        System.assert(qrCodeCornerResponseItem4.equals(qrCodeCornerResponseItem3));
        System.assert(qrCodeCornerResponseItem3.equals(qrCodeCornerResponseItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem3 = new OASQRCodeCornerResponseItem();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem4 = new OASQRCodeCornerResponseItem();

        System.assert(qrCodeCornerResponseItem1.equals(qrCodeCornerResponseItem2));
        System.assert(qrCodeCornerResponseItem2.equals(qrCodeCornerResponseItem1));
        System.assert(qrCodeCornerResponseItem3.equals(qrCodeCornerResponseItem4));
        System.assert(qrCodeCornerResponseItem4.equals(qrCodeCornerResponseItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = new OASQRCodeCornerResponseItem();

        System.assertEquals(false, qrCodeCornerResponseItem1.equals('foo'));
        System.assertEquals(false, qrCodeCornerResponseItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = new OASQRCodeCornerResponseItem();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem3;

        System.assertEquals(false, qrCodeCornerResponseItem1.equals(qrCodeCornerResponseItem3));
        System.assertEquals(false, qrCodeCornerResponseItem2.equals(qrCodeCornerResponseItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = new OASQRCodeCornerResponseItem();

        System.assertEquals(qrCodeCornerResponseItem1.hashCode(), qrCodeCornerResponseItem1.hashCode());
        System.assertEquals(qrCodeCornerResponseItem2.hashCode(), qrCodeCornerResponseItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem1 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem2 = OASQRCodeCornerResponseItem.getExample();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem3 = new OASQRCodeCornerResponseItem();
        OASQRCodeCornerResponseItem qrCodeCornerResponseItem4 = new OASQRCodeCornerResponseItem();

        System.assert(qrCodeCornerResponseItem1.equals(qrCodeCornerResponseItem2));
        System.assert(qrCodeCornerResponseItem3.equals(qrCodeCornerResponseItem4));
        System.assertEquals(qrCodeCornerResponseItem1.hashCode(), qrCodeCornerResponseItem2.hashCode());
        System.assertEquals(qrCodeCornerResponseItem3.hashCode(), qrCodeCornerResponseItem4.hashCode());
    }
}