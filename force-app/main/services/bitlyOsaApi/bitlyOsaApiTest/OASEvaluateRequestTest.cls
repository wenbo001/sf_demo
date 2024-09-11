@isTest
private class OASEvaluateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = evaluateRequest1;
        OASEvaluateRequest evaluateRequest3 = new OASEvaluateRequest();
        OASEvaluateRequest evaluateRequest4 = evaluateRequest3;

        System.assert(evaluateRequest1.equals(evaluateRequest2));
        System.assert(evaluateRequest2.equals(evaluateRequest1));
        System.assert(evaluateRequest1.equals(evaluateRequest1));
        System.assert(evaluateRequest3.equals(evaluateRequest4));
        System.assert(evaluateRequest4.equals(evaluateRequest3));
        System.assert(evaluateRequest3.equals(evaluateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest3 = new OASEvaluateRequest();
        OASEvaluateRequest evaluateRequest4 = new OASEvaluateRequest();

        System.assert(evaluateRequest1.equals(evaluateRequest2));
        System.assert(evaluateRequest2.equals(evaluateRequest1));
        System.assert(evaluateRequest3.equals(evaluateRequest4));
        System.assert(evaluateRequest4.equals(evaluateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = new OASEvaluateRequest();

        System.assertEquals(false, evaluateRequest1.equals('foo'));
        System.assertEquals(false, evaluateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = new OASEvaluateRequest();
        OASEvaluateRequest evaluateRequest3;

        System.assertEquals(false, evaluateRequest1.equals(evaluateRequest3));
        System.assertEquals(false, evaluateRequest2.equals(evaluateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = new OASEvaluateRequest();

        System.assertEquals(evaluateRequest1.hashCode(), evaluateRequest1.hashCode());
        System.assertEquals(evaluateRequest2.hashCode(), evaluateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvaluateRequest evaluateRequest1 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest2 = OASEvaluateRequest.getExample();
        OASEvaluateRequest evaluateRequest3 = new OASEvaluateRequest();
        OASEvaluateRequest evaluateRequest4 = new OASEvaluateRequest();

        System.assert(evaluateRequest1.equals(evaluateRequest2));
        System.assert(evaluateRequest3.equals(evaluateRequest4));
        System.assertEquals(evaluateRequest1.hashCode(), evaluateRequest2.hashCode());
        System.assertEquals(evaluateRequest3.hashCode(), evaluateRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEvaluateRequest evaluateRequest = new OASEvaluateRequest();
        Map<String, String> propertymappings = evaluateRequest.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}