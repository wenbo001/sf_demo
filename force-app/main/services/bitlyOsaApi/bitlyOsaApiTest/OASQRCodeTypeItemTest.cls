@isTest
private class OASQRCodeTypeItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = qrCodeTypeItem1;
        OASQRCodeTypeItem qrCodeTypeItem3 = new OASQRCodeTypeItem();
        OASQRCodeTypeItem qrCodeTypeItem4 = qrCodeTypeItem3;

        System.assert(qrCodeTypeItem1.equals(qrCodeTypeItem2));
        System.assert(qrCodeTypeItem2.equals(qrCodeTypeItem1));
        System.assert(qrCodeTypeItem1.equals(qrCodeTypeItem1));
        System.assert(qrCodeTypeItem3.equals(qrCodeTypeItem4));
        System.assert(qrCodeTypeItem4.equals(qrCodeTypeItem3));
        System.assert(qrCodeTypeItem3.equals(qrCodeTypeItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem3 = new OASQRCodeTypeItem();
        OASQRCodeTypeItem qrCodeTypeItem4 = new OASQRCodeTypeItem();

        System.assert(qrCodeTypeItem1.equals(qrCodeTypeItem2));
        System.assert(qrCodeTypeItem2.equals(qrCodeTypeItem1));
        System.assert(qrCodeTypeItem3.equals(qrCodeTypeItem4));
        System.assert(qrCodeTypeItem4.equals(qrCodeTypeItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = new OASQRCodeTypeItem();

        System.assertEquals(false, qrCodeTypeItem1.equals('foo'));
        System.assertEquals(false, qrCodeTypeItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = new OASQRCodeTypeItem();
        OASQRCodeTypeItem qrCodeTypeItem3;

        System.assertEquals(false, qrCodeTypeItem1.equals(qrCodeTypeItem3));
        System.assertEquals(false, qrCodeTypeItem2.equals(qrCodeTypeItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = new OASQRCodeTypeItem();

        System.assertEquals(qrCodeTypeItem1.hashCode(), qrCodeTypeItem1.hashCode());
        System.assertEquals(qrCodeTypeItem2.hashCode(), qrCodeTypeItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTypeItem qrCodeTypeItem1 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem2 = OASQRCodeTypeItem.getExample();
        OASQRCodeTypeItem qrCodeTypeItem3 = new OASQRCodeTypeItem();
        OASQRCodeTypeItem qrCodeTypeItem4 = new OASQRCodeTypeItem();

        System.assert(qrCodeTypeItem1.equals(qrCodeTypeItem2));
        System.assert(qrCodeTypeItem3.equals(qrCodeTypeItem4));
        System.assertEquals(qrCodeTypeItem1.hashCode(), qrCodeTypeItem2.hashCode());
        System.assertEquals(qrCodeTypeItem3.hashCode(), qrCodeTypeItem4.hashCode());
    }
}