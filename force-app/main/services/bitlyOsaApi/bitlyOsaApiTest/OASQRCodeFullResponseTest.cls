@isTest
private class OASQRCodeFullResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = qrCodeFullResponse1;
        OASQRCodeFullResponse qrCodeFullResponse3 = new OASQRCodeFullResponse();
        OASQRCodeFullResponse qrCodeFullResponse4 = qrCodeFullResponse3;

        System.assert(qrCodeFullResponse1.equals(qrCodeFullResponse2));
        System.assert(qrCodeFullResponse2.equals(qrCodeFullResponse1));
        System.assert(qrCodeFullResponse1.equals(qrCodeFullResponse1));
        System.assert(qrCodeFullResponse3.equals(qrCodeFullResponse4));
        System.assert(qrCodeFullResponse4.equals(qrCodeFullResponse3));
        System.assert(qrCodeFullResponse3.equals(qrCodeFullResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse3 = new OASQRCodeFullResponse();
        OASQRCodeFullResponse qrCodeFullResponse4 = new OASQRCodeFullResponse();

        System.assert(qrCodeFullResponse1.equals(qrCodeFullResponse2));
        System.assert(qrCodeFullResponse2.equals(qrCodeFullResponse1));
        System.assert(qrCodeFullResponse3.equals(qrCodeFullResponse4));
        System.assert(qrCodeFullResponse4.equals(qrCodeFullResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = new OASQRCodeFullResponse();

        System.assertEquals(false, qrCodeFullResponse1.equals('foo'));
        System.assertEquals(false, qrCodeFullResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = new OASQRCodeFullResponse();
        OASQRCodeFullResponse qrCodeFullResponse3;

        System.assertEquals(false, qrCodeFullResponse1.equals(qrCodeFullResponse3));
        System.assertEquals(false, qrCodeFullResponse2.equals(qrCodeFullResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = new OASQRCodeFullResponse();

        System.assertEquals(qrCodeFullResponse1.hashCode(), qrCodeFullResponse1.hashCode());
        System.assertEquals(qrCodeFullResponse2.hashCode(), qrCodeFullResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFullResponse qrCodeFullResponse1 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse2 = OASQRCodeFullResponse.getExample();
        OASQRCodeFullResponse qrCodeFullResponse3 = new OASQRCodeFullResponse();
        OASQRCodeFullResponse qrCodeFullResponse4 = new OASQRCodeFullResponse();

        System.assert(qrCodeFullResponse1.equals(qrCodeFullResponse2));
        System.assert(qrCodeFullResponse3.equals(qrCodeFullResponse4));
        System.assertEquals(qrCodeFullResponse1.hashCode(), qrCodeFullResponse2.hashCode());
        System.assertEquals(qrCodeFullResponse3.hashCode(), qrCodeFullResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeFullResponse qrCodeFullResponse = new OASQRCodeFullResponse();
        Map<String, String> propertymappings = qrCodeFullResponse.getPropertyMappings();
        System.assertEquals('qrCode', propertymappings.get('qr_code'));
    }
}