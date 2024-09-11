@isTest
private class OASQRCodeCornerTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = qrCodeCorner1;
        OASQRCodeCorner qrCodeCorner3 = new OASQRCodeCorner();
        OASQRCodeCorner qrCodeCorner4 = qrCodeCorner3;

        System.assert(qrCodeCorner1.equals(qrCodeCorner2));
        System.assert(qrCodeCorner2.equals(qrCodeCorner1));
        System.assert(qrCodeCorner1.equals(qrCodeCorner1));
        System.assert(qrCodeCorner3.equals(qrCodeCorner4));
        System.assert(qrCodeCorner4.equals(qrCodeCorner3));
        System.assert(qrCodeCorner3.equals(qrCodeCorner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner3 = new OASQRCodeCorner();
        OASQRCodeCorner qrCodeCorner4 = new OASQRCodeCorner();

        System.assert(qrCodeCorner1.equals(qrCodeCorner2));
        System.assert(qrCodeCorner2.equals(qrCodeCorner1));
        System.assert(qrCodeCorner3.equals(qrCodeCorner4));
        System.assert(qrCodeCorner4.equals(qrCodeCorner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = new OASQRCodeCorner();

        System.assertEquals(false, qrCodeCorner1.equals('foo'));
        System.assertEquals(false, qrCodeCorner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = new OASQRCodeCorner();
        OASQRCodeCorner qrCodeCorner3;

        System.assertEquals(false, qrCodeCorner1.equals(qrCodeCorner3));
        System.assertEquals(false, qrCodeCorner2.equals(qrCodeCorner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = new OASQRCodeCorner();

        System.assertEquals(qrCodeCorner1.hashCode(), qrCodeCorner1.hashCode());
        System.assertEquals(qrCodeCorner2.hashCode(), qrCodeCorner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCorner qrCodeCorner1 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner2 = OASQRCodeCorner.getExample();
        OASQRCodeCorner qrCodeCorner3 = new OASQRCodeCorner();
        OASQRCodeCorner qrCodeCorner4 = new OASQRCodeCorner();

        System.assert(qrCodeCorner1.equals(qrCodeCorner2));
        System.assert(qrCodeCorner3.equals(qrCodeCorner4));
        System.assertEquals(qrCodeCorner1.hashCode(), qrCodeCorner2.hashCode());
        System.assertEquals(qrCodeCorner3.hashCode(), qrCodeCorner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeCorner qrCodeCorner = new OASQRCodeCorner();
        Map<String, String> propertymappings = qrCodeCorner.getPropertyMappings();
        System.assertEquals('innerColor', propertymappings.get('inner_color'));
        System.assertEquals('outerColor', propertymappings.get('outer_color'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeCorner qrCodeCorner = new OASQRCodeCorner();
        System.assertEquals(OASQRCodeCorner.ShapeEnum.STANDARD, qrCodeCorner.shape);
        System.assertEquals(null, qrCodeCorner.innerColor);
        System.assertEquals(null, qrCodeCorner.outerColor);
    }
}