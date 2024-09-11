@isTest
private class OASQRCodeTemplatesResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = qrCodeTemplatesResponse1;
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse3 = new OASQRCodeTemplatesResponse();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse4 = qrCodeTemplatesResponse3;

        System.assert(qrCodeTemplatesResponse1.equals(qrCodeTemplatesResponse2));
        System.assert(qrCodeTemplatesResponse2.equals(qrCodeTemplatesResponse1));
        System.assert(qrCodeTemplatesResponse1.equals(qrCodeTemplatesResponse1));
        System.assert(qrCodeTemplatesResponse3.equals(qrCodeTemplatesResponse4));
        System.assert(qrCodeTemplatesResponse4.equals(qrCodeTemplatesResponse3));
        System.assert(qrCodeTemplatesResponse3.equals(qrCodeTemplatesResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse3 = new OASQRCodeTemplatesResponse();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse4 = new OASQRCodeTemplatesResponse();

        System.assert(qrCodeTemplatesResponse1.equals(qrCodeTemplatesResponse2));
        System.assert(qrCodeTemplatesResponse2.equals(qrCodeTemplatesResponse1));
        System.assert(qrCodeTemplatesResponse3.equals(qrCodeTemplatesResponse4));
        System.assert(qrCodeTemplatesResponse4.equals(qrCodeTemplatesResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = new OASQRCodeTemplatesResponse();

        System.assertEquals(false, qrCodeTemplatesResponse1.equals('foo'));
        System.assertEquals(false, qrCodeTemplatesResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = new OASQRCodeTemplatesResponse();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse3;

        System.assertEquals(false, qrCodeTemplatesResponse1.equals(qrCodeTemplatesResponse3));
        System.assertEquals(false, qrCodeTemplatesResponse2.equals(qrCodeTemplatesResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = new OASQRCodeTemplatesResponse();

        System.assertEquals(qrCodeTemplatesResponse1.hashCode(), qrCodeTemplatesResponse1.hashCode());
        System.assertEquals(qrCodeTemplatesResponse2.hashCode(), qrCodeTemplatesResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse1 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse2 = OASQRCodeTemplatesResponse.getExample();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse3 = new OASQRCodeTemplatesResponse();
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse4 = new OASQRCodeTemplatesResponse();

        System.assert(qrCodeTemplatesResponse1.equals(qrCodeTemplatesResponse2));
        System.assert(qrCodeTemplatesResponse3.equals(qrCodeTemplatesResponse4));
        System.assertEquals(qrCodeTemplatesResponse1.hashCode(), qrCodeTemplatesResponse2.hashCode());
        System.assertEquals(qrCodeTemplatesResponse3.hashCode(), qrCodeTemplatesResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse = new OASQRCodeTemplatesResponse();
        Map<String, String> propertymappings = qrCodeTemplatesResponse.getPropertyMappings();
        System.assertEquals('qrCodeTemplates', propertymappings.get('qr_code_templates'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeTemplatesResponse qrCodeTemplatesResponse = new OASQRCodeTemplatesResponse();
        System.assertEquals(new List<OASQRCodeTemplate>(), qrCodeTemplatesResponse.qrCodeTemplates);
    }
}