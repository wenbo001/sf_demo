@isTest
private class OASCreateQRCodeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = createQRCodeRequest1;
        OASCreateQRCodeRequest createQRCodeRequest3 = new OASCreateQRCodeRequest();
        OASCreateQRCodeRequest createQRCodeRequest4 = createQRCodeRequest3;

        System.assert(createQRCodeRequest1.equals(createQRCodeRequest2));
        System.assert(createQRCodeRequest2.equals(createQRCodeRequest1));
        System.assert(createQRCodeRequest1.equals(createQRCodeRequest1));
        System.assert(createQRCodeRequest3.equals(createQRCodeRequest4));
        System.assert(createQRCodeRequest4.equals(createQRCodeRequest3));
        System.assert(createQRCodeRequest3.equals(createQRCodeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest3 = new OASCreateQRCodeRequest();
        OASCreateQRCodeRequest createQRCodeRequest4 = new OASCreateQRCodeRequest();

        System.assert(createQRCodeRequest1.equals(createQRCodeRequest2));
        System.assert(createQRCodeRequest2.equals(createQRCodeRequest1));
        System.assert(createQRCodeRequest3.equals(createQRCodeRequest4));
        System.assert(createQRCodeRequest4.equals(createQRCodeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = new OASCreateQRCodeRequest();

        System.assertEquals(false, createQRCodeRequest1.equals('foo'));
        System.assertEquals(false, createQRCodeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = new OASCreateQRCodeRequest();
        OASCreateQRCodeRequest createQRCodeRequest3;

        System.assertEquals(false, createQRCodeRequest1.equals(createQRCodeRequest3));
        System.assertEquals(false, createQRCodeRequest2.equals(createQRCodeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = new OASCreateQRCodeRequest();

        System.assertEquals(createQRCodeRequest1.hashCode(), createQRCodeRequest1.hashCode());
        System.assertEquals(createQRCodeRequest2.hashCode(), createQRCodeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateQRCodeRequest createQRCodeRequest1 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest2 = OASCreateQRCodeRequest.getExample();
        OASCreateQRCodeRequest createQRCodeRequest3 = new OASCreateQRCodeRequest();
        OASCreateQRCodeRequest createQRCodeRequest4 = new OASCreateQRCodeRequest();

        System.assert(createQRCodeRequest1.equals(createQRCodeRequest2));
        System.assert(createQRCodeRequest3.equals(createQRCodeRequest4));
        System.assertEquals(createQRCodeRequest1.hashCode(), createQRCodeRequest2.hashCode());
        System.assertEquals(createQRCodeRequest3.hashCode(), createQRCodeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateQRCodeRequest createQRCodeRequest = new OASCreateQRCodeRequest();
        Map<String, String> propertymappings = createQRCodeRequest.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
        System.assertEquals('isCustomized', propertymappings.get('is_customized'));
        System.assertEquals('qrCodeType', propertymappings.get('qr_code_type'));
        System.assertEquals('dynamicContent', propertymappings.get('dynamic_content'));
        System.assertEquals('staticContent', propertymappings.get('static_content'));
    }
}