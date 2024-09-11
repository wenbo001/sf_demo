@isTest
private class OASEvaluateInterventionResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = evaluateInterventionResponse1;
        OASEvaluateInterventionResponse evaluateInterventionResponse3 = new OASEvaluateInterventionResponse();
        OASEvaluateInterventionResponse evaluateInterventionResponse4 = evaluateInterventionResponse3;

        System.assert(evaluateInterventionResponse1.equals(evaluateInterventionResponse2));
        System.assert(evaluateInterventionResponse2.equals(evaluateInterventionResponse1));
        System.assert(evaluateInterventionResponse1.equals(evaluateInterventionResponse1));
        System.assert(evaluateInterventionResponse3.equals(evaluateInterventionResponse4));
        System.assert(evaluateInterventionResponse4.equals(evaluateInterventionResponse3));
        System.assert(evaluateInterventionResponse3.equals(evaluateInterventionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse3 = new OASEvaluateInterventionResponse();
        OASEvaluateInterventionResponse evaluateInterventionResponse4 = new OASEvaluateInterventionResponse();

        System.assert(evaluateInterventionResponse1.equals(evaluateInterventionResponse2));
        System.assert(evaluateInterventionResponse2.equals(evaluateInterventionResponse1));
        System.assert(evaluateInterventionResponse3.equals(evaluateInterventionResponse4));
        System.assert(evaluateInterventionResponse4.equals(evaluateInterventionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = new OASEvaluateInterventionResponse();

        System.assertEquals(false, evaluateInterventionResponse1.equals('foo'));
        System.assertEquals(false, evaluateInterventionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = new OASEvaluateInterventionResponse();
        OASEvaluateInterventionResponse evaluateInterventionResponse3;

        System.assertEquals(false, evaluateInterventionResponse1.equals(evaluateInterventionResponse3));
        System.assertEquals(false, evaluateInterventionResponse2.equals(evaluateInterventionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = new OASEvaluateInterventionResponse();

        System.assertEquals(evaluateInterventionResponse1.hashCode(), evaluateInterventionResponse1.hashCode());
        System.assertEquals(evaluateInterventionResponse2.hashCode(), evaluateInterventionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvaluateInterventionResponse evaluateInterventionResponse1 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse2 = OASEvaluateInterventionResponse.getExample();
        OASEvaluateInterventionResponse evaluateInterventionResponse3 = new OASEvaluateInterventionResponse();
        OASEvaluateInterventionResponse evaluateInterventionResponse4 = new OASEvaluateInterventionResponse();

        System.assert(evaluateInterventionResponse1.equals(evaluateInterventionResponse2));
        System.assert(evaluateInterventionResponse3.equals(evaluateInterventionResponse4));
        System.assertEquals(evaluateInterventionResponse1.hashCode(), evaluateInterventionResponse2.hashCode());
        System.assertEquals(evaluateInterventionResponse3.hashCode(), evaluateInterventionResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEvaluateInterventionResponse evaluateInterventionResponse = new OASEvaluateInterventionResponse();
        Map<String, String> propertymappings = evaluateInterventionResponse.getPropertyMappings();
        System.assertEquals('monthlyPromo', propertymappings.get('monthly_promo'));
        System.assertEquals('annualPromo', propertymappings.get('annual_promo'));
    }
}