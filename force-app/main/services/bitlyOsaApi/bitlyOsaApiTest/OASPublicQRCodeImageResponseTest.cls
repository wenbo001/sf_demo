@isTest
private class OASPublicQRCodeImageResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = publicQRCodeImageResponse1;
        OASPublicQRCodeImageResponse publicQRCodeImageResponse3 = new OASPublicQRCodeImageResponse();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse4 = publicQRCodeImageResponse3;

        System.assert(publicQRCodeImageResponse1.equals(publicQRCodeImageResponse2));
        System.assert(publicQRCodeImageResponse2.equals(publicQRCodeImageResponse1));
        System.assert(publicQRCodeImageResponse1.equals(publicQRCodeImageResponse1));
        System.assert(publicQRCodeImageResponse3.equals(publicQRCodeImageResponse4));
        System.assert(publicQRCodeImageResponse4.equals(publicQRCodeImageResponse3));
        System.assert(publicQRCodeImageResponse3.equals(publicQRCodeImageResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse3 = new OASPublicQRCodeImageResponse();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse4 = new OASPublicQRCodeImageResponse();

        System.assert(publicQRCodeImageResponse1.equals(publicQRCodeImageResponse2));
        System.assert(publicQRCodeImageResponse2.equals(publicQRCodeImageResponse1));
        System.assert(publicQRCodeImageResponse3.equals(publicQRCodeImageResponse4));
        System.assert(publicQRCodeImageResponse4.equals(publicQRCodeImageResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = new OASPublicQRCodeImageResponse();

        System.assertEquals(false, publicQRCodeImageResponse1.equals('foo'));
        System.assertEquals(false, publicQRCodeImageResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = new OASPublicQRCodeImageResponse();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse3;

        System.assertEquals(false, publicQRCodeImageResponse1.equals(publicQRCodeImageResponse3));
        System.assertEquals(false, publicQRCodeImageResponse2.equals(publicQRCodeImageResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = new OASPublicQRCodeImageResponse();

        System.assertEquals(publicQRCodeImageResponse1.hashCode(), publicQRCodeImageResponse1.hashCode());
        System.assertEquals(publicQRCodeImageResponse2.hashCode(), publicQRCodeImageResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse1 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse2 = OASPublicQRCodeImageResponse.getExample();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse3 = new OASPublicQRCodeImageResponse();
        OASPublicQRCodeImageResponse publicQRCodeImageResponse4 = new OASPublicQRCodeImageResponse();

        System.assert(publicQRCodeImageResponse1.equals(publicQRCodeImageResponse2));
        System.assert(publicQRCodeImageResponse3.equals(publicQRCodeImageResponse4));
        System.assertEquals(publicQRCodeImageResponse1.hashCode(), publicQRCodeImageResponse2.hashCode());
        System.assertEquals(publicQRCodeImageResponse3.hashCode(), publicQRCodeImageResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicQRCodeImageResponse publicQRCodeImageResponse = new OASPublicQRCodeImageResponse();
        Map<String, String> propertymappings = publicQRCodeImageResponse.getPropertyMappings();
        System.assertEquals('qrCodeImage', propertymappings.get('qr_code_image'));
    }
}