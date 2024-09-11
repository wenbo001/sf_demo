@isTest
private class OASApplyTemplateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = applyTemplateRequest1;
        OASApplyTemplateRequest applyTemplateRequest3 = new OASApplyTemplateRequest();
        OASApplyTemplateRequest applyTemplateRequest4 = applyTemplateRequest3;

        System.assert(applyTemplateRequest1.equals(applyTemplateRequest2));
        System.assert(applyTemplateRequest2.equals(applyTemplateRequest1));
        System.assert(applyTemplateRequest1.equals(applyTemplateRequest1));
        System.assert(applyTemplateRequest3.equals(applyTemplateRequest4));
        System.assert(applyTemplateRequest4.equals(applyTemplateRequest3));
        System.assert(applyTemplateRequest3.equals(applyTemplateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest3 = new OASApplyTemplateRequest();
        OASApplyTemplateRequest applyTemplateRequest4 = new OASApplyTemplateRequest();

        System.assert(applyTemplateRequest1.equals(applyTemplateRequest2));
        System.assert(applyTemplateRequest2.equals(applyTemplateRequest1));
        System.assert(applyTemplateRequest3.equals(applyTemplateRequest4));
        System.assert(applyTemplateRequest4.equals(applyTemplateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = new OASApplyTemplateRequest();

        System.assertEquals(false, applyTemplateRequest1.equals('foo'));
        System.assertEquals(false, applyTemplateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = new OASApplyTemplateRequest();
        OASApplyTemplateRequest applyTemplateRequest3;

        System.assertEquals(false, applyTemplateRequest1.equals(applyTemplateRequest3));
        System.assertEquals(false, applyTemplateRequest2.equals(applyTemplateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = new OASApplyTemplateRequest();

        System.assertEquals(applyTemplateRequest1.hashCode(), applyTemplateRequest1.hashCode());
        System.assertEquals(applyTemplateRequest2.hashCode(), applyTemplateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApplyTemplateRequest applyTemplateRequest1 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest2 = OASApplyTemplateRequest.getExample();
        OASApplyTemplateRequest applyTemplateRequest3 = new OASApplyTemplateRequest();
        OASApplyTemplateRequest applyTemplateRequest4 = new OASApplyTemplateRequest();

        System.assert(applyTemplateRequest1.equals(applyTemplateRequest2));
        System.assert(applyTemplateRequest3.equals(applyTemplateRequest4));
        System.assertEquals(applyTemplateRequest1.hashCode(), applyTemplateRequest2.hashCode());
        System.assertEquals(applyTemplateRequest3.hashCode(), applyTemplateRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASApplyTemplateRequest applyTemplateRequest = new OASApplyTemplateRequest();
        Map<String, String> propertymappings = applyTemplateRequest.getPropertyMappings();
        System.assertEquals('templateGuid', propertymappings.get('template_guid'));
    }
}