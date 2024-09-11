@isTest
private class OASQRCodeFullListResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = qrCodeFullListResponse1;
        OASQRCodeFullListResponse qrCodeFullListResponse3 = new OASQRCodeFullListResponse();
        OASQRCodeFullListResponse qrCodeFullListResponse4 = qrCodeFullListResponse3;

        System.assert(qrCodeFullListResponse1.equals(qrCodeFullListResponse2));
        System.assert(qrCodeFullListResponse2.equals(qrCodeFullListResponse1));
        System.assert(qrCodeFullListResponse1.equals(qrCodeFullListResponse1));
        System.assert(qrCodeFullListResponse3.equals(qrCodeFullListResponse4));
        System.assert(qrCodeFullListResponse4.equals(qrCodeFullListResponse3));
        System.assert(qrCodeFullListResponse3.equals(qrCodeFullListResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse3 = new OASQRCodeFullListResponse();
        OASQRCodeFullListResponse qrCodeFullListResponse4 = new OASQRCodeFullListResponse();

        System.assert(qrCodeFullListResponse1.equals(qrCodeFullListResponse2));
        System.assert(qrCodeFullListResponse2.equals(qrCodeFullListResponse1));
        System.assert(qrCodeFullListResponse3.equals(qrCodeFullListResponse4));
        System.assert(qrCodeFullListResponse4.equals(qrCodeFullListResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = new OASQRCodeFullListResponse();

        System.assertEquals(false, qrCodeFullListResponse1.equals('foo'));
        System.assertEquals(false, qrCodeFullListResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = new OASQRCodeFullListResponse();
        OASQRCodeFullListResponse qrCodeFullListResponse3;

        System.assertEquals(false, qrCodeFullListResponse1.equals(qrCodeFullListResponse3));
        System.assertEquals(false, qrCodeFullListResponse2.equals(qrCodeFullListResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = new OASQRCodeFullListResponse();

        System.assertEquals(qrCodeFullListResponse1.hashCode(), qrCodeFullListResponse1.hashCode());
        System.assertEquals(qrCodeFullListResponse2.hashCode(), qrCodeFullListResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFullListResponse qrCodeFullListResponse1 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse2 = OASQRCodeFullListResponse.getExample();
        OASQRCodeFullListResponse qrCodeFullListResponse3 = new OASQRCodeFullListResponse();
        OASQRCodeFullListResponse qrCodeFullListResponse4 = new OASQRCodeFullListResponse();

        System.assert(qrCodeFullListResponse1.equals(qrCodeFullListResponse2));
        System.assert(qrCodeFullListResponse3.equals(qrCodeFullListResponse4));
        System.assertEquals(qrCodeFullListResponse1.hashCode(), qrCodeFullListResponse2.hashCode());
        System.assertEquals(qrCodeFullListResponse3.hashCode(), qrCodeFullListResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeFullListResponse qrCodeFullListResponse = new OASQRCodeFullListResponse();
        Map<String, String> propertymappings = qrCodeFullListResponse.getPropertyMappings();
        System.assertEquals('qrCodes', propertymappings.get('qr_codes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeFullListResponse qrCodeFullListResponse = new OASQRCodeFullListResponse();
        System.assertEquals(new List<OASQRCode>(), qrCodeFullListResponse.qrCodes);
    }
}