@isTest
private class OASQRCodeShapeTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = qrCodeShape1;
        OASQRCodeShape qrCodeShape3 = new OASQRCodeShape();
        OASQRCodeShape qrCodeShape4 = qrCodeShape3;

        System.assert(qrCodeShape1.equals(qrCodeShape2));
        System.assert(qrCodeShape2.equals(qrCodeShape1));
        System.assert(qrCodeShape1.equals(qrCodeShape1));
        System.assert(qrCodeShape3.equals(qrCodeShape4));
        System.assert(qrCodeShape4.equals(qrCodeShape3));
        System.assert(qrCodeShape3.equals(qrCodeShape3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape3 = new OASQRCodeShape();
        OASQRCodeShape qrCodeShape4 = new OASQRCodeShape();

        System.assert(qrCodeShape1.equals(qrCodeShape2));
        System.assert(qrCodeShape2.equals(qrCodeShape1));
        System.assert(qrCodeShape3.equals(qrCodeShape4));
        System.assert(qrCodeShape4.equals(qrCodeShape3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = new OASQRCodeShape();

        System.assertEquals(false, qrCodeShape1.equals('foo'));
        System.assertEquals(false, qrCodeShape2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = new OASQRCodeShape();
        OASQRCodeShape qrCodeShape3;

        System.assertEquals(false, qrCodeShape1.equals(qrCodeShape3));
        System.assertEquals(false, qrCodeShape2.equals(qrCodeShape3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = new OASQRCodeShape();

        System.assertEquals(qrCodeShape1.hashCode(), qrCodeShape1.hashCode());
        System.assertEquals(qrCodeShape2.hashCode(), qrCodeShape2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeShape qrCodeShape1 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape2 = OASQRCodeShape.getExample();
        OASQRCodeShape qrCodeShape3 = new OASQRCodeShape();
        OASQRCodeShape qrCodeShape4 = new OASQRCodeShape();

        System.assert(qrCodeShape1.equals(qrCodeShape2));
        System.assert(qrCodeShape3.equals(qrCodeShape4));
        System.assertEquals(qrCodeShape1.hashCode(), qrCodeShape2.hashCode());
        System.assertEquals(qrCodeShape3.hashCode(), qrCodeShape4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeShape qrCodeShape = new OASQRCodeShape();
        Map<String, String> propertymappings = qrCodeShape.getPropertyMappings();
        System.assertEquals('contentRatio', propertymappings.get('content_ratio'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeShape qrCodeShape = new OASQRCodeShape();
        System.assertEquals(0, qrCodeShape.angle);
        System.assertEquals('none', qrCodeShape.outline);
        System.assertEquals(1, qrCodeShape.contentRatio);
        System.assertEquals(null, qrCodeShape.id);
    }
}