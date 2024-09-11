@isTest
private class OASQRCodeFrameResponseItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = qrCodeFrameResponseItem1;
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem3 = new OASQRCodeFrameResponseItem();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem4 = qrCodeFrameResponseItem3;

        System.assert(qrCodeFrameResponseItem1.equals(qrCodeFrameResponseItem2));
        System.assert(qrCodeFrameResponseItem2.equals(qrCodeFrameResponseItem1));
        System.assert(qrCodeFrameResponseItem1.equals(qrCodeFrameResponseItem1));
        System.assert(qrCodeFrameResponseItem3.equals(qrCodeFrameResponseItem4));
        System.assert(qrCodeFrameResponseItem4.equals(qrCodeFrameResponseItem3));
        System.assert(qrCodeFrameResponseItem3.equals(qrCodeFrameResponseItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem3 = new OASQRCodeFrameResponseItem();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem4 = new OASQRCodeFrameResponseItem();

        System.assert(qrCodeFrameResponseItem1.equals(qrCodeFrameResponseItem2));
        System.assert(qrCodeFrameResponseItem2.equals(qrCodeFrameResponseItem1));
        System.assert(qrCodeFrameResponseItem3.equals(qrCodeFrameResponseItem4));
        System.assert(qrCodeFrameResponseItem4.equals(qrCodeFrameResponseItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = new OASQRCodeFrameResponseItem();

        System.assertEquals(false, qrCodeFrameResponseItem1.equals('foo'));
        System.assertEquals(false, qrCodeFrameResponseItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = new OASQRCodeFrameResponseItem();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem3;

        System.assertEquals(false, qrCodeFrameResponseItem1.equals(qrCodeFrameResponseItem3));
        System.assertEquals(false, qrCodeFrameResponseItem2.equals(qrCodeFrameResponseItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = new OASQRCodeFrameResponseItem();

        System.assertEquals(qrCodeFrameResponseItem1.hashCode(), qrCodeFrameResponseItem1.hashCode());
        System.assertEquals(qrCodeFrameResponseItem2.hashCode(), qrCodeFrameResponseItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem1 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem2 = OASQRCodeFrameResponseItem.getExample();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem3 = new OASQRCodeFrameResponseItem();
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem4 = new OASQRCodeFrameResponseItem();

        System.assert(qrCodeFrameResponseItem1.equals(qrCodeFrameResponseItem2));
        System.assert(qrCodeFrameResponseItem3.equals(qrCodeFrameResponseItem4));
        System.assertEquals(qrCodeFrameResponseItem1.hashCode(), qrCodeFrameResponseItem2.hashCode());
        System.assertEquals(qrCodeFrameResponseItem3.hashCode(), qrCodeFrameResponseItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeFrameResponseItem qrCodeFrameResponseItem = new OASQRCodeFrameResponseItem();
        Map<String, String> propertymappings = qrCodeFrameResponseItem.getPropertyMappings();
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
    }
}