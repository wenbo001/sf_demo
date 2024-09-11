@isTest
private class OASEvaluateInterventionRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = evaluateInterventionRequest1;
        OASEvaluateInterventionRequest evaluateInterventionRequest3 = new OASEvaluateInterventionRequest();
        OASEvaluateInterventionRequest evaluateInterventionRequest4 = evaluateInterventionRequest3;

        System.assert(evaluateInterventionRequest1.equals(evaluateInterventionRequest2));
        System.assert(evaluateInterventionRequest2.equals(evaluateInterventionRequest1));
        System.assert(evaluateInterventionRequest1.equals(evaluateInterventionRequest1));
        System.assert(evaluateInterventionRequest3.equals(evaluateInterventionRequest4));
        System.assert(evaluateInterventionRequest4.equals(evaluateInterventionRequest3));
        System.assert(evaluateInterventionRequest3.equals(evaluateInterventionRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest3 = new OASEvaluateInterventionRequest();
        OASEvaluateInterventionRequest evaluateInterventionRequest4 = new OASEvaluateInterventionRequest();

        System.assert(evaluateInterventionRequest1.equals(evaluateInterventionRequest2));
        System.assert(evaluateInterventionRequest2.equals(evaluateInterventionRequest1));
        System.assert(evaluateInterventionRequest3.equals(evaluateInterventionRequest4));
        System.assert(evaluateInterventionRequest4.equals(evaluateInterventionRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = new OASEvaluateInterventionRequest();

        System.assertEquals(false, evaluateInterventionRequest1.equals('foo'));
        System.assertEquals(false, evaluateInterventionRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = new OASEvaluateInterventionRequest();
        OASEvaluateInterventionRequest evaluateInterventionRequest3;

        System.assertEquals(false, evaluateInterventionRequest1.equals(evaluateInterventionRequest3));
        System.assertEquals(false, evaluateInterventionRequest2.equals(evaluateInterventionRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = new OASEvaluateInterventionRequest();

        System.assertEquals(evaluateInterventionRequest1.hashCode(), evaluateInterventionRequest1.hashCode());
        System.assertEquals(evaluateInterventionRequest2.hashCode(), evaluateInterventionRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvaluateInterventionRequest evaluateInterventionRequest1 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest2 = OASEvaluateInterventionRequest.getExample();
        OASEvaluateInterventionRequest evaluateInterventionRequest3 = new OASEvaluateInterventionRequest();
        OASEvaluateInterventionRequest evaluateInterventionRequest4 = new OASEvaluateInterventionRequest();

        System.assert(evaluateInterventionRequest1.equals(evaluateInterventionRequest2));
        System.assert(evaluateInterventionRequest3.equals(evaluateInterventionRequest4));
        System.assertEquals(evaluateInterventionRequest1.hashCode(), evaluateInterventionRequest2.hashCode());
        System.assertEquals(evaluateInterventionRequest3.hashCode(), evaluateInterventionRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEvaluateInterventionRequest evaluateInterventionRequest = new OASEvaluateInterventionRequest();
        Map<String, String> propertymappings = evaluateInterventionRequest.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}