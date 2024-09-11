@isTest
private class OASQRLogoImagesResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = qrLogoImagesResponse1;
        OASQRLogoImagesResponse qrLogoImagesResponse3 = new OASQRLogoImagesResponse();
        OASQRLogoImagesResponse qrLogoImagesResponse4 = qrLogoImagesResponse3;

        System.assert(qrLogoImagesResponse1.equals(qrLogoImagesResponse2));
        System.assert(qrLogoImagesResponse2.equals(qrLogoImagesResponse1));
        System.assert(qrLogoImagesResponse1.equals(qrLogoImagesResponse1));
        System.assert(qrLogoImagesResponse3.equals(qrLogoImagesResponse4));
        System.assert(qrLogoImagesResponse4.equals(qrLogoImagesResponse3));
        System.assert(qrLogoImagesResponse3.equals(qrLogoImagesResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse3 = new OASQRLogoImagesResponse();
        OASQRLogoImagesResponse qrLogoImagesResponse4 = new OASQRLogoImagesResponse();

        System.assert(qrLogoImagesResponse1.equals(qrLogoImagesResponse2));
        System.assert(qrLogoImagesResponse2.equals(qrLogoImagesResponse1));
        System.assert(qrLogoImagesResponse3.equals(qrLogoImagesResponse4));
        System.assert(qrLogoImagesResponse4.equals(qrLogoImagesResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = new OASQRLogoImagesResponse();

        System.assertEquals(false, qrLogoImagesResponse1.equals('foo'));
        System.assertEquals(false, qrLogoImagesResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = new OASQRLogoImagesResponse();
        OASQRLogoImagesResponse qrLogoImagesResponse3;

        System.assertEquals(false, qrLogoImagesResponse1.equals(qrLogoImagesResponse3));
        System.assertEquals(false, qrLogoImagesResponse2.equals(qrLogoImagesResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = new OASQRLogoImagesResponse();

        System.assertEquals(qrLogoImagesResponse1.hashCode(), qrLogoImagesResponse1.hashCode());
        System.assertEquals(qrLogoImagesResponse2.hashCode(), qrLogoImagesResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRLogoImagesResponse qrLogoImagesResponse1 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse2 = OASQRLogoImagesResponse.getExample();
        OASQRLogoImagesResponse qrLogoImagesResponse3 = new OASQRLogoImagesResponse();
        OASQRLogoImagesResponse qrLogoImagesResponse4 = new OASQRLogoImagesResponse();

        System.assert(qrLogoImagesResponse1.equals(qrLogoImagesResponse2));
        System.assert(qrLogoImagesResponse3.equals(qrLogoImagesResponse4));
        System.assertEquals(qrLogoImagesResponse1.hashCode(), qrLogoImagesResponse2.hashCode());
        System.assertEquals(qrLogoImagesResponse3.hashCode(), qrLogoImagesResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRLogoImagesResponse qrLogoImagesResponse = new OASQRLogoImagesResponse();
        Map<String, String> propertymappings = qrLogoImagesResponse.getPropertyMappings();
        System.assertEquals('qrLogoImages', propertymappings.get('qr_logo_images'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRLogoImagesResponse qrLogoImagesResponse = new OASQRLogoImagesResponse();
        System.assertEquals(new List<OASQRLogoImages>(), qrLogoImagesResponse.qrLogoImages);
    }
}