@isTest
private class OASTemplatesRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = templatesRequest1;
        OASTemplatesRequest templatesRequest3 = new OASTemplatesRequest();
        OASTemplatesRequest templatesRequest4 = templatesRequest3;

        System.assert(templatesRequest1.equals(templatesRequest2));
        System.assert(templatesRequest2.equals(templatesRequest1));
        System.assert(templatesRequest1.equals(templatesRequest1));
        System.assert(templatesRequest3.equals(templatesRequest4));
        System.assert(templatesRequest4.equals(templatesRequest3));
        System.assert(templatesRequest3.equals(templatesRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest3 = new OASTemplatesRequest();
        OASTemplatesRequest templatesRequest4 = new OASTemplatesRequest();

        System.assert(templatesRequest1.equals(templatesRequest2));
        System.assert(templatesRequest2.equals(templatesRequest1));
        System.assert(templatesRequest3.equals(templatesRequest4));
        System.assert(templatesRequest4.equals(templatesRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = new OASTemplatesRequest();

        System.assertEquals(false, templatesRequest1.equals('foo'));
        System.assertEquals(false, templatesRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = new OASTemplatesRequest();
        OASTemplatesRequest templatesRequest3;

        System.assertEquals(false, templatesRequest1.equals(templatesRequest3));
        System.assertEquals(false, templatesRequest2.equals(templatesRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = new OASTemplatesRequest();

        System.assertEquals(templatesRequest1.hashCode(), templatesRequest1.hashCode());
        System.assertEquals(templatesRequest2.hashCode(), templatesRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTemplatesRequest templatesRequest1 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest2 = OASTemplatesRequest.getExample();
        OASTemplatesRequest templatesRequest3 = new OASTemplatesRequest();
        OASTemplatesRequest templatesRequest4 = new OASTemplatesRequest();

        System.assert(templatesRequest1.equals(templatesRequest2));
        System.assert(templatesRequest3.equals(templatesRequest4));
        System.assertEquals(templatesRequest1.hashCode(), templatesRequest2.hashCode());
        System.assertEquals(templatesRequest3.hashCode(), templatesRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTemplatesRequest templatesRequest = new OASTemplatesRequest();
        Map<String, String> propertymappings = templatesRequest.getPropertyMappings();
        System.assertEquals('siteId', propertymappings.get('site_id'));
    }
}