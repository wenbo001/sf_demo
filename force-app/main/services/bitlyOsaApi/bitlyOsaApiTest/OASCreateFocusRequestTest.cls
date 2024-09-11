@isTest
private class OASCreateFocusRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = createFocusRequest1;
        OASCreateFocusRequest createFocusRequest3 = new OASCreateFocusRequest();
        OASCreateFocusRequest createFocusRequest4 = createFocusRequest3;

        System.assert(createFocusRequest1.equals(createFocusRequest2));
        System.assert(createFocusRequest2.equals(createFocusRequest1));
        System.assert(createFocusRequest1.equals(createFocusRequest1));
        System.assert(createFocusRequest3.equals(createFocusRequest4));
        System.assert(createFocusRequest4.equals(createFocusRequest3));
        System.assert(createFocusRequest3.equals(createFocusRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest3 = new OASCreateFocusRequest();
        OASCreateFocusRequest createFocusRequest4 = new OASCreateFocusRequest();

        System.assert(createFocusRequest1.equals(createFocusRequest2));
        System.assert(createFocusRequest2.equals(createFocusRequest1));
        System.assert(createFocusRequest3.equals(createFocusRequest4));
        System.assert(createFocusRequest4.equals(createFocusRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = new OASCreateFocusRequest();

        System.assertEquals(false, createFocusRequest1.equals('foo'));
        System.assertEquals(false, createFocusRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = new OASCreateFocusRequest();
        OASCreateFocusRequest createFocusRequest3;

        System.assertEquals(false, createFocusRequest1.equals(createFocusRequest3));
        System.assertEquals(false, createFocusRequest2.equals(createFocusRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = new OASCreateFocusRequest();

        System.assertEquals(createFocusRequest1.hashCode(), createFocusRequest1.hashCode());
        System.assertEquals(createFocusRequest2.hashCode(), createFocusRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateFocusRequest createFocusRequest1 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest2 = OASCreateFocusRequest.getExample();
        OASCreateFocusRequest createFocusRequest3 = new OASCreateFocusRequest();
        OASCreateFocusRequest createFocusRequest4 = new OASCreateFocusRequest();

        System.assert(createFocusRequest1.equals(createFocusRequest2));
        System.assert(createFocusRequest3.equals(createFocusRequest4));
        System.assertEquals(createFocusRequest1.hashCode(), createFocusRequest2.hashCode());
        System.assertEquals(createFocusRequest3.hashCode(), createFocusRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateFocusRequest createFocusRequest = new OASCreateFocusRequest();
        Map<String, String> propertymappings = createFocusRequest.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
    }
}