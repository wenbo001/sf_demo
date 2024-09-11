@isTest
private class OASQRCodeShapeItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = qrCodeShapeItem1;
        OASQRCodeShapeItem qrCodeShapeItem3 = new OASQRCodeShapeItem();
        OASQRCodeShapeItem qrCodeShapeItem4 = qrCodeShapeItem3;

        System.assert(qrCodeShapeItem1.equals(qrCodeShapeItem2));
        System.assert(qrCodeShapeItem2.equals(qrCodeShapeItem1));
        System.assert(qrCodeShapeItem1.equals(qrCodeShapeItem1));
        System.assert(qrCodeShapeItem3.equals(qrCodeShapeItem4));
        System.assert(qrCodeShapeItem4.equals(qrCodeShapeItem3));
        System.assert(qrCodeShapeItem3.equals(qrCodeShapeItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem3 = new OASQRCodeShapeItem();
        OASQRCodeShapeItem qrCodeShapeItem4 = new OASQRCodeShapeItem();

        System.assert(qrCodeShapeItem1.equals(qrCodeShapeItem2));
        System.assert(qrCodeShapeItem2.equals(qrCodeShapeItem1));
        System.assert(qrCodeShapeItem3.equals(qrCodeShapeItem4));
        System.assert(qrCodeShapeItem4.equals(qrCodeShapeItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = new OASQRCodeShapeItem();

        System.assertEquals(false, qrCodeShapeItem1.equals('foo'));
        System.assertEquals(false, qrCodeShapeItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = new OASQRCodeShapeItem();
        OASQRCodeShapeItem qrCodeShapeItem3;

        System.assertEquals(false, qrCodeShapeItem1.equals(qrCodeShapeItem3));
        System.assertEquals(false, qrCodeShapeItem2.equals(qrCodeShapeItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = new OASQRCodeShapeItem();

        System.assertEquals(qrCodeShapeItem1.hashCode(), qrCodeShapeItem1.hashCode());
        System.assertEquals(qrCodeShapeItem2.hashCode(), qrCodeShapeItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeShapeItem qrCodeShapeItem1 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem2 = OASQRCodeShapeItem.getExample();
        OASQRCodeShapeItem qrCodeShapeItem3 = new OASQRCodeShapeItem();
        OASQRCodeShapeItem qrCodeShapeItem4 = new OASQRCodeShapeItem();

        System.assert(qrCodeShapeItem1.equals(qrCodeShapeItem2));
        System.assert(qrCodeShapeItem3.equals(qrCodeShapeItem4));
        System.assertEquals(qrCodeShapeItem1.hashCode(), qrCodeShapeItem2.hashCode());
        System.assertEquals(qrCodeShapeItem3.hashCode(), qrCodeShapeItem4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeShapeItem qrCodeShapeItem = new OASQRCodeShapeItem();
        Map<String, String> propertymappings = qrCodeShapeItem.getPropertyMappings();
        System.assertEquals('contentRatio', propertymappings.get('content_ratio'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeShapeItem qrCodeShapeItem = new OASQRCodeShapeItem();
        System.assertEquals(0, qrCodeShapeItem.angle);
        System.assertEquals('none', qrCodeShapeItem.outline);
        System.assertEquals(1, qrCodeShapeItem.contentRatio);
        System.assertEquals(null, qrCodeShapeItem.thumbnail);
        System.assertEquals(null, qrCodeShapeItem.locked);
        System.assertEquals(null, qrCodeShapeItem.id);
    }
}