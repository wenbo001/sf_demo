@isTest
private class OASQRCodeTemplateResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = qrCodeTemplateResponse1;
        OASQRCodeTemplateResponse qrCodeTemplateResponse3 = new OASQRCodeTemplateResponse();
        OASQRCodeTemplateResponse qrCodeTemplateResponse4 = qrCodeTemplateResponse3;

        System.assert(qrCodeTemplateResponse1.equals(qrCodeTemplateResponse2));
        System.assert(qrCodeTemplateResponse2.equals(qrCodeTemplateResponse1));
        System.assert(qrCodeTemplateResponse1.equals(qrCodeTemplateResponse1));
        System.assert(qrCodeTemplateResponse3.equals(qrCodeTemplateResponse4));
        System.assert(qrCodeTemplateResponse4.equals(qrCodeTemplateResponse3));
        System.assert(qrCodeTemplateResponse3.equals(qrCodeTemplateResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse3 = new OASQRCodeTemplateResponse();
        OASQRCodeTemplateResponse qrCodeTemplateResponse4 = new OASQRCodeTemplateResponse();

        System.assert(qrCodeTemplateResponse1.equals(qrCodeTemplateResponse2));
        System.assert(qrCodeTemplateResponse2.equals(qrCodeTemplateResponse1));
        System.assert(qrCodeTemplateResponse3.equals(qrCodeTemplateResponse4));
        System.assert(qrCodeTemplateResponse4.equals(qrCodeTemplateResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = new OASQRCodeTemplateResponse();

        System.assertEquals(false, qrCodeTemplateResponse1.equals('foo'));
        System.assertEquals(false, qrCodeTemplateResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = new OASQRCodeTemplateResponse();
        OASQRCodeTemplateResponse qrCodeTemplateResponse3;

        System.assertEquals(false, qrCodeTemplateResponse1.equals(qrCodeTemplateResponse3));
        System.assertEquals(false, qrCodeTemplateResponse2.equals(qrCodeTemplateResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = new OASQRCodeTemplateResponse();

        System.assertEquals(qrCodeTemplateResponse1.hashCode(), qrCodeTemplateResponse1.hashCode());
        System.assertEquals(qrCodeTemplateResponse2.hashCode(), qrCodeTemplateResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse1 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse2 = OASQRCodeTemplateResponse.getExample();
        OASQRCodeTemplateResponse qrCodeTemplateResponse3 = new OASQRCodeTemplateResponse();
        OASQRCodeTemplateResponse qrCodeTemplateResponse4 = new OASQRCodeTemplateResponse();

        System.assert(qrCodeTemplateResponse1.equals(qrCodeTemplateResponse2));
        System.assert(qrCodeTemplateResponse3.equals(qrCodeTemplateResponse4));
        System.assertEquals(qrCodeTemplateResponse1.hashCode(), qrCodeTemplateResponse2.hashCode());
        System.assertEquals(qrCodeTemplateResponse3.hashCode(), qrCodeTemplateResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTemplateResponse qrCodeTemplateResponse = new OASQRCodeTemplateResponse();
        Map<String, String> propertymappings = qrCodeTemplateResponse.getPropertyMappings();
        System.assertEquals('qrCodeTemplate', propertymappings.get('qr_code_template'));
    }
}