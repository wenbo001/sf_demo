@isTest
private class OASQRCodeImageResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = qrCodeImageResponse1;
        OASQRCodeImageResponse qrCodeImageResponse3 = new OASQRCodeImageResponse();
        OASQRCodeImageResponse qrCodeImageResponse4 = qrCodeImageResponse3;

        System.assert(qrCodeImageResponse1.equals(qrCodeImageResponse2));
        System.assert(qrCodeImageResponse2.equals(qrCodeImageResponse1));
        System.assert(qrCodeImageResponse1.equals(qrCodeImageResponse1));
        System.assert(qrCodeImageResponse3.equals(qrCodeImageResponse4));
        System.assert(qrCodeImageResponse4.equals(qrCodeImageResponse3));
        System.assert(qrCodeImageResponse3.equals(qrCodeImageResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse3 = new OASQRCodeImageResponse();
        OASQRCodeImageResponse qrCodeImageResponse4 = new OASQRCodeImageResponse();

        System.assert(qrCodeImageResponse1.equals(qrCodeImageResponse2));
        System.assert(qrCodeImageResponse2.equals(qrCodeImageResponse1));
        System.assert(qrCodeImageResponse3.equals(qrCodeImageResponse4));
        System.assert(qrCodeImageResponse4.equals(qrCodeImageResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = new OASQRCodeImageResponse();

        System.assertEquals(false, qrCodeImageResponse1.equals('foo'));
        System.assertEquals(false, qrCodeImageResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = new OASQRCodeImageResponse();
        OASQRCodeImageResponse qrCodeImageResponse3;

        System.assertEquals(false, qrCodeImageResponse1.equals(qrCodeImageResponse3));
        System.assertEquals(false, qrCodeImageResponse2.equals(qrCodeImageResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = new OASQRCodeImageResponse();

        System.assertEquals(qrCodeImageResponse1.hashCode(), qrCodeImageResponse1.hashCode());
        System.assertEquals(qrCodeImageResponse2.hashCode(), qrCodeImageResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeImageResponse qrCodeImageResponse1 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse2 = OASQRCodeImageResponse.getExample();
        OASQRCodeImageResponse qrCodeImageResponse3 = new OASQRCodeImageResponse();
        OASQRCodeImageResponse qrCodeImageResponse4 = new OASQRCodeImageResponse();

        System.assert(qrCodeImageResponse1.equals(qrCodeImageResponse2));
        System.assert(qrCodeImageResponse3.equals(qrCodeImageResponse4));
        System.assertEquals(qrCodeImageResponse1.hashCode(), qrCodeImageResponse2.hashCode());
        System.assertEquals(qrCodeImageResponse3.hashCode(), qrCodeImageResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeImageResponse qrCodeImageResponse = new OASQRCodeImageResponse();
        Map<String, String> propertymappings = qrCodeImageResponse.getPropertyMappings();
        System.assertEquals('qrCode', propertymappings.get('qr_code'));
    }
}