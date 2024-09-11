@isTest
private class OASPublicUpdateQRCodeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = publicUpdateQRCodeRequest1;
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest3 = new OASPublicUpdateQRCodeRequest();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest4 = publicUpdateQRCodeRequest3;

        System.assert(publicUpdateQRCodeRequest1.equals(publicUpdateQRCodeRequest2));
        System.assert(publicUpdateQRCodeRequest2.equals(publicUpdateQRCodeRequest1));
        System.assert(publicUpdateQRCodeRequest1.equals(publicUpdateQRCodeRequest1));
        System.assert(publicUpdateQRCodeRequest3.equals(publicUpdateQRCodeRequest4));
        System.assert(publicUpdateQRCodeRequest4.equals(publicUpdateQRCodeRequest3));
        System.assert(publicUpdateQRCodeRequest3.equals(publicUpdateQRCodeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest3 = new OASPublicUpdateQRCodeRequest();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest4 = new OASPublicUpdateQRCodeRequest();

        System.assert(publicUpdateQRCodeRequest1.equals(publicUpdateQRCodeRequest2));
        System.assert(publicUpdateQRCodeRequest2.equals(publicUpdateQRCodeRequest1));
        System.assert(publicUpdateQRCodeRequest3.equals(publicUpdateQRCodeRequest4));
        System.assert(publicUpdateQRCodeRequest4.equals(publicUpdateQRCodeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = new OASPublicUpdateQRCodeRequest();

        System.assertEquals(false, publicUpdateQRCodeRequest1.equals('foo'));
        System.assertEquals(false, publicUpdateQRCodeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = new OASPublicUpdateQRCodeRequest();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest3;

        System.assertEquals(false, publicUpdateQRCodeRequest1.equals(publicUpdateQRCodeRequest3));
        System.assertEquals(false, publicUpdateQRCodeRequest2.equals(publicUpdateQRCodeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = new OASPublicUpdateQRCodeRequest();

        System.assertEquals(publicUpdateQRCodeRequest1.hashCode(), publicUpdateQRCodeRequest1.hashCode());
        System.assertEquals(publicUpdateQRCodeRequest2.hashCode(), publicUpdateQRCodeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest1 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest2 = OASPublicUpdateQRCodeRequest.getExample();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest3 = new OASPublicUpdateQRCodeRequest();
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest4 = new OASPublicUpdateQRCodeRequest();

        System.assert(publicUpdateQRCodeRequest1.equals(publicUpdateQRCodeRequest2));
        System.assert(publicUpdateQRCodeRequest3.equals(publicUpdateQRCodeRequest4));
        System.assertEquals(publicUpdateQRCodeRequest1.hashCode(), publicUpdateQRCodeRequest2.hashCode());
        System.assertEquals(publicUpdateQRCodeRequest3.hashCode(), publicUpdateQRCodeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicUpdateQRCodeRequest publicUpdateQRCodeRequest = new OASPublicUpdateQRCodeRequest();
        Map<String, String> propertymappings = publicUpdateQRCodeRequest.getPropertyMappings();
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }
}