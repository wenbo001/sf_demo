@isTest
private class OASPublicQRCodeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = publicQRCodeResponse1;
        OASPublicQRCodeResponse publicQRCodeResponse3 = new OASPublicQRCodeResponse();
        OASPublicQRCodeResponse publicQRCodeResponse4 = publicQRCodeResponse3;

        System.assert(publicQRCodeResponse1.equals(publicQRCodeResponse2));
        System.assert(publicQRCodeResponse2.equals(publicQRCodeResponse1));
        System.assert(publicQRCodeResponse1.equals(publicQRCodeResponse1));
        System.assert(publicQRCodeResponse3.equals(publicQRCodeResponse4));
        System.assert(publicQRCodeResponse4.equals(publicQRCodeResponse3));
        System.assert(publicQRCodeResponse3.equals(publicQRCodeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse3 = new OASPublicQRCodeResponse();
        OASPublicQRCodeResponse publicQRCodeResponse4 = new OASPublicQRCodeResponse();

        System.assert(publicQRCodeResponse1.equals(publicQRCodeResponse2));
        System.assert(publicQRCodeResponse2.equals(publicQRCodeResponse1));
        System.assert(publicQRCodeResponse3.equals(publicQRCodeResponse4));
        System.assert(publicQRCodeResponse4.equals(publicQRCodeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = new OASPublicQRCodeResponse();

        System.assertEquals(false, publicQRCodeResponse1.equals('foo'));
        System.assertEquals(false, publicQRCodeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = new OASPublicQRCodeResponse();
        OASPublicQRCodeResponse publicQRCodeResponse3;

        System.assertEquals(false, publicQRCodeResponse1.equals(publicQRCodeResponse3));
        System.assertEquals(false, publicQRCodeResponse2.equals(publicQRCodeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = new OASPublicQRCodeResponse();

        System.assertEquals(publicQRCodeResponse1.hashCode(), publicQRCodeResponse1.hashCode());
        System.assertEquals(publicQRCodeResponse2.hashCode(), publicQRCodeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicQRCodeResponse publicQRCodeResponse1 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse2 = OASPublicQRCodeResponse.getExample();
        OASPublicQRCodeResponse publicQRCodeResponse3 = new OASPublicQRCodeResponse();
        OASPublicQRCodeResponse publicQRCodeResponse4 = new OASPublicQRCodeResponse();

        System.assert(publicQRCodeResponse1.equals(publicQRCodeResponse2));
        System.assert(publicQRCodeResponse3.equals(publicQRCodeResponse4));
        System.assertEquals(publicQRCodeResponse1.hashCode(), publicQRCodeResponse2.hashCode());
        System.assertEquals(publicQRCodeResponse3.hashCode(), publicQRCodeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicQRCodeResponse publicQRCodeResponse = new OASPublicQRCodeResponse();
        Map<String, String> propertymappings = publicQRCodeResponse.getPropertyMappings();
        System.assertEquals('qrCode', propertymappings.get('qr_code'));
    }
}