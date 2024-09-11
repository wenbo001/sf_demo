@isTest
private class OASUpdateQRCodeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = updateQRCodeRequest1;
        OASUpdateQRCodeRequest updateQRCodeRequest3 = new OASUpdateQRCodeRequest();
        OASUpdateQRCodeRequest updateQRCodeRequest4 = updateQRCodeRequest3;

        System.assert(updateQRCodeRequest1.equals(updateQRCodeRequest2));
        System.assert(updateQRCodeRequest2.equals(updateQRCodeRequest1));
        System.assert(updateQRCodeRequest1.equals(updateQRCodeRequest1));
        System.assert(updateQRCodeRequest3.equals(updateQRCodeRequest4));
        System.assert(updateQRCodeRequest4.equals(updateQRCodeRequest3));
        System.assert(updateQRCodeRequest3.equals(updateQRCodeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest3 = new OASUpdateQRCodeRequest();
        OASUpdateQRCodeRequest updateQRCodeRequest4 = new OASUpdateQRCodeRequest();

        System.assert(updateQRCodeRequest1.equals(updateQRCodeRequest2));
        System.assert(updateQRCodeRequest2.equals(updateQRCodeRequest1));
        System.assert(updateQRCodeRequest3.equals(updateQRCodeRequest4));
        System.assert(updateQRCodeRequest4.equals(updateQRCodeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = new OASUpdateQRCodeRequest();

        System.assertEquals(false, updateQRCodeRequest1.equals('foo'));
        System.assertEquals(false, updateQRCodeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = new OASUpdateQRCodeRequest();
        OASUpdateQRCodeRequest updateQRCodeRequest3;

        System.assertEquals(false, updateQRCodeRequest1.equals(updateQRCodeRequest3));
        System.assertEquals(false, updateQRCodeRequest2.equals(updateQRCodeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = new OASUpdateQRCodeRequest();

        System.assertEquals(updateQRCodeRequest1.hashCode(), updateQRCodeRequest1.hashCode());
        System.assertEquals(updateQRCodeRequest2.hashCode(), updateQRCodeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateQRCodeRequest updateQRCodeRequest1 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest2 = OASUpdateQRCodeRequest.getExample();
        OASUpdateQRCodeRequest updateQRCodeRequest3 = new OASUpdateQRCodeRequest();
        OASUpdateQRCodeRequest updateQRCodeRequest4 = new OASUpdateQRCodeRequest();

        System.assert(updateQRCodeRequest1.equals(updateQRCodeRequest2));
        System.assert(updateQRCodeRequest3.equals(updateQRCodeRequest4));
        System.assertEquals(updateQRCodeRequest1.hashCode(), updateQRCodeRequest2.hashCode());
        System.assertEquals(updateQRCodeRequest3.hashCode(), updateQRCodeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateQRCodeRequest updateQRCodeRequest = new OASUpdateQRCodeRequest();
        Map<String, String> propertymappings = updateQRCodeRequest.getPropertyMappings();
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
        System.assertEquals('staticContent', propertymappings.get('static_content'));
    }
}