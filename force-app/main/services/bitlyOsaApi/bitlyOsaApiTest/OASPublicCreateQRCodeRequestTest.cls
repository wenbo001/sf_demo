@isTest
private class OASPublicCreateQRCodeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = publicCreateQRCodeRequest1;
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest3 = new OASPublicCreateQRCodeRequest();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest4 = publicCreateQRCodeRequest3;

        System.assert(publicCreateQRCodeRequest1.equals(publicCreateQRCodeRequest2));
        System.assert(publicCreateQRCodeRequest2.equals(publicCreateQRCodeRequest1));
        System.assert(publicCreateQRCodeRequest1.equals(publicCreateQRCodeRequest1));
        System.assert(publicCreateQRCodeRequest3.equals(publicCreateQRCodeRequest4));
        System.assert(publicCreateQRCodeRequest4.equals(publicCreateQRCodeRequest3));
        System.assert(publicCreateQRCodeRequest3.equals(publicCreateQRCodeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest3 = new OASPublicCreateQRCodeRequest();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest4 = new OASPublicCreateQRCodeRequest();

        System.assert(publicCreateQRCodeRequest1.equals(publicCreateQRCodeRequest2));
        System.assert(publicCreateQRCodeRequest2.equals(publicCreateQRCodeRequest1));
        System.assert(publicCreateQRCodeRequest3.equals(publicCreateQRCodeRequest4));
        System.assert(publicCreateQRCodeRequest4.equals(publicCreateQRCodeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = new OASPublicCreateQRCodeRequest();

        System.assertEquals(false, publicCreateQRCodeRequest1.equals('foo'));
        System.assertEquals(false, publicCreateQRCodeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = new OASPublicCreateQRCodeRequest();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest3;

        System.assertEquals(false, publicCreateQRCodeRequest1.equals(publicCreateQRCodeRequest3));
        System.assertEquals(false, publicCreateQRCodeRequest2.equals(publicCreateQRCodeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = new OASPublicCreateQRCodeRequest();

        System.assertEquals(publicCreateQRCodeRequest1.hashCode(), publicCreateQRCodeRequest1.hashCode());
        System.assertEquals(publicCreateQRCodeRequest2.hashCode(), publicCreateQRCodeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest1 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest2 = OASPublicCreateQRCodeRequest.getExample();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest3 = new OASPublicCreateQRCodeRequest();
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest4 = new OASPublicCreateQRCodeRequest();

        System.assert(publicCreateQRCodeRequest1.equals(publicCreateQRCodeRequest2));
        System.assert(publicCreateQRCodeRequest3.equals(publicCreateQRCodeRequest4));
        System.assertEquals(publicCreateQRCodeRequest1.hashCode(), publicCreateQRCodeRequest2.hashCode());
        System.assertEquals(publicCreateQRCodeRequest3.hashCode(), publicCreateQRCodeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicCreateQRCodeRequest publicCreateQRCodeRequest = new OASPublicCreateQRCodeRequest();
        Map<String, String> propertymappings = publicCreateQRCodeRequest.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }
}