@isTest
private class OASQRCodeTypeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = qrCodeTypeResponse1;
        OASQRCodeTypeResponse qrCodeTypeResponse3 = new OASQRCodeTypeResponse();
        OASQRCodeTypeResponse qrCodeTypeResponse4 = qrCodeTypeResponse3;

        System.assert(qrCodeTypeResponse1.equals(qrCodeTypeResponse2));
        System.assert(qrCodeTypeResponse2.equals(qrCodeTypeResponse1));
        System.assert(qrCodeTypeResponse1.equals(qrCodeTypeResponse1));
        System.assert(qrCodeTypeResponse3.equals(qrCodeTypeResponse4));
        System.assert(qrCodeTypeResponse4.equals(qrCodeTypeResponse3));
        System.assert(qrCodeTypeResponse3.equals(qrCodeTypeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse3 = new OASQRCodeTypeResponse();
        OASQRCodeTypeResponse qrCodeTypeResponse4 = new OASQRCodeTypeResponse();

        System.assert(qrCodeTypeResponse1.equals(qrCodeTypeResponse2));
        System.assert(qrCodeTypeResponse2.equals(qrCodeTypeResponse1));
        System.assert(qrCodeTypeResponse3.equals(qrCodeTypeResponse4));
        System.assert(qrCodeTypeResponse4.equals(qrCodeTypeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = new OASQRCodeTypeResponse();

        System.assertEquals(false, qrCodeTypeResponse1.equals('foo'));
        System.assertEquals(false, qrCodeTypeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = new OASQRCodeTypeResponse();
        OASQRCodeTypeResponse qrCodeTypeResponse3;

        System.assertEquals(false, qrCodeTypeResponse1.equals(qrCodeTypeResponse3));
        System.assertEquals(false, qrCodeTypeResponse2.equals(qrCodeTypeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = new OASQRCodeTypeResponse();

        System.assertEquals(qrCodeTypeResponse1.hashCode(), qrCodeTypeResponse1.hashCode());
        System.assertEquals(qrCodeTypeResponse2.hashCode(), qrCodeTypeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTypeResponse qrCodeTypeResponse1 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse2 = OASQRCodeTypeResponse.getExample();
        OASQRCodeTypeResponse qrCodeTypeResponse3 = new OASQRCodeTypeResponse();
        OASQRCodeTypeResponse qrCodeTypeResponse4 = new OASQRCodeTypeResponse();

        System.assert(qrCodeTypeResponse1.equals(qrCodeTypeResponse2));
        System.assert(qrCodeTypeResponse3.equals(qrCodeTypeResponse4));
        System.assertEquals(qrCodeTypeResponse1.hashCode(), qrCodeTypeResponse2.hashCode());
        System.assertEquals(qrCodeTypeResponse3.hashCode(), qrCodeTypeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTypeResponse qrCodeTypeResponse = new OASQRCodeTypeResponse();
        Map<String, String> propertymappings = qrCodeTypeResponse.getPropertyMappings();
        System.assertEquals('r_static', propertymappings.get('static'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeTypeResponse qrCodeTypeResponse = new OASQRCodeTypeResponse();
        System.assertEquals(new List<OASQRCodeTypeItem>(), qrCodeTypeResponse.dynamic);
        System.assertEquals(new List<OASQRCodeTypeItem>(), qrCodeTypeResponse.r_static);
    }
}