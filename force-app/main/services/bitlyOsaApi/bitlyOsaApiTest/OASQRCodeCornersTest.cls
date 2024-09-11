@isTest
private class OASQRCodeCornersTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = qrCodeCorners1;
        OASQRCodeCorners qrCodeCorners3 = new OASQRCodeCorners();
        OASQRCodeCorners qrCodeCorners4 = qrCodeCorners3;

        System.assert(qrCodeCorners1.equals(qrCodeCorners2));
        System.assert(qrCodeCorners2.equals(qrCodeCorners1));
        System.assert(qrCodeCorners1.equals(qrCodeCorners1));
        System.assert(qrCodeCorners3.equals(qrCodeCorners4));
        System.assert(qrCodeCorners4.equals(qrCodeCorners3));
        System.assert(qrCodeCorners3.equals(qrCodeCorners3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners3 = new OASQRCodeCorners();
        OASQRCodeCorners qrCodeCorners4 = new OASQRCodeCorners();

        System.assert(qrCodeCorners1.equals(qrCodeCorners2));
        System.assert(qrCodeCorners2.equals(qrCodeCorners1));
        System.assert(qrCodeCorners3.equals(qrCodeCorners4));
        System.assert(qrCodeCorners4.equals(qrCodeCorners3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = new OASQRCodeCorners();

        System.assertEquals(false, qrCodeCorners1.equals('foo'));
        System.assertEquals(false, qrCodeCorners2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = new OASQRCodeCorners();
        OASQRCodeCorners qrCodeCorners3;

        System.assertEquals(false, qrCodeCorners1.equals(qrCodeCorners3));
        System.assertEquals(false, qrCodeCorners2.equals(qrCodeCorners3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = new OASQRCodeCorners();

        System.assertEquals(qrCodeCorners1.hashCode(), qrCodeCorners1.hashCode());
        System.assertEquals(qrCodeCorners2.hashCode(), qrCodeCorners2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCorners qrCodeCorners1 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners2 = OASQRCodeCorners.getExample();
        OASQRCodeCorners qrCodeCorners3 = new OASQRCodeCorners();
        OASQRCodeCorners qrCodeCorners4 = new OASQRCodeCorners();

        System.assert(qrCodeCorners1.equals(qrCodeCorners2));
        System.assert(qrCodeCorners3.equals(qrCodeCorners4));
        System.assertEquals(qrCodeCorners1.hashCode(), qrCodeCorners2.hashCode());
        System.assertEquals(qrCodeCorners3.hashCode(), qrCodeCorners4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeCorners qrCodeCorners = new OASQRCodeCorners();
        Map<String, String> propertymappings = qrCodeCorners.getPropertyMappings();
        System.assertEquals('corner1', propertymappings.get('corner_1'));
        System.assertEquals('corner2', propertymappings.get('corner_2'));
        System.assertEquals('corner3', propertymappings.get('corner_3'));
    }
}