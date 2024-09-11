@isTest
private class OASCreateQRCodeFromUrlRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = createQRCodeFromUrlRequest1;
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest3 = new OASCreateQRCodeFromUrlRequest();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest4 = createQRCodeFromUrlRequest3;

        System.assert(createQRCodeFromUrlRequest1.equals(createQRCodeFromUrlRequest2));
        System.assert(createQRCodeFromUrlRequest2.equals(createQRCodeFromUrlRequest1));
        System.assert(createQRCodeFromUrlRequest1.equals(createQRCodeFromUrlRequest1));
        System.assert(createQRCodeFromUrlRequest3.equals(createQRCodeFromUrlRequest4));
        System.assert(createQRCodeFromUrlRequest4.equals(createQRCodeFromUrlRequest3));
        System.assert(createQRCodeFromUrlRequest3.equals(createQRCodeFromUrlRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest3 = new OASCreateQRCodeFromUrlRequest();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest4 = new OASCreateQRCodeFromUrlRequest();

        System.assert(createQRCodeFromUrlRequest1.equals(createQRCodeFromUrlRequest2));
        System.assert(createQRCodeFromUrlRequest2.equals(createQRCodeFromUrlRequest1));
        System.assert(createQRCodeFromUrlRequest3.equals(createQRCodeFromUrlRequest4));
        System.assert(createQRCodeFromUrlRequest4.equals(createQRCodeFromUrlRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = new OASCreateQRCodeFromUrlRequest();

        System.assertEquals(false, createQRCodeFromUrlRequest1.equals('foo'));
        System.assertEquals(false, createQRCodeFromUrlRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = new OASCreateQRCodeFromUrlRequest();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest3;

        System.assertEquals(false, createQRCodeFromUrlRequest1.equals(createQRCodeFromUrlRequest3));
        System.assertEquals(false, createQRCodeFromUrlRequest2.equals(createQRCodeFromUrlRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = new OASCreateQRCodeFromUrlRequest();

        System.assertEquals(createQRCodeFromUrlRequest1.hashCode(), createQRCodeFromUrlRequest1.hashCode());
        System.assertEquals(createQRCodeFromUrlRequest2.hashCode(), createQRCodeFromUrlRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest1 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest2 = OASCreateQRCodeFromUrlRequest.getExample();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest3 = new OASCreateQRCodeFromUrlRequest();
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest4 = new OASCreateQRCodeFromUrlRequest();

        System.assert(createQRCodeFromUrlRequest1.equals(createQRCodeFromUrlRequest2));
        System.assert(createQRCodeFromUrlRequest3.equals(createQRCodeFromUrlRequest4));
        System.assertEquals(createQRCodeFromUrlRequest1.hashCode(), createQRCodeFromUrlRequest2.hashCode());
        System.assertEquals(createQRCodeFromUrlRequest3.hashCode(), createQRCodeFromUrlRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest = new OASCreateQRCodeFromUrlRequest();
        Map<String, String> propertymappings = createQRCodeFromUrlRequest.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('responseFormat', propertymappings.get('response_format'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCreateQRCodeFromUrlRequest createQRCodeFromUrlRequest = new OASCreateQRCodeFromUrlRequest();
        System.assertEquals(OASCreateQRCodeFromUrlRequest.ResponseFormatEnum.PNG, createQRCodeFromUrlRequest.responseFormat);
        System.assertEquals(null, createQRCodeFromUrlRequest.groupGuid);
        System.assertEquals(null, createQRCodeFromUrlRequest.longUrl);
        System.assertEquals(null, createQRCodeFromUrlRequest.bitlink);
        System.assertEquals(null, createQRCodeFromUrlRequest.renderCustomizations);
    }
}