@isTest
private class OASEvaluateResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = evaluateResponse1;
        OASEvaluateResponse evaluateResponse3 = new OASEvaluateResponse();
        OASEvaluateResponse evaluateResponse4 = evaluateResponse3;

        System.assert(evaluateResponse1.equals(evaluateResponse2));
        System.assert(evaluateResponse2.equals(evaluateResponse1));
        System.assert(evaluateResponse1.equals(evaluateResponse1));
        System.assert(evaluateResponse3.equals(evaluateResponse4));
        System.assert(evaluateResponse4.equals(evaluateResponse3));
        System.assert(evaluateResponse3.equals(evaluateResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse3 = new OASEvaluateResponse();
        OASEvaluateResponse evaluateResponse4 = new OASEvaluateResponse();

        System.assert(evaluateResponse1.equals(evaluateResponse2));
        System.assert(evaluateResponse2.equals(evaluateResponse1));
        System.assert(evaluateResponse3.equals(evaluateResponse4));
        System.assert(evaluateResponse4.equals(evaluateResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = new OASEvaluateResponse();

        System.assertEquals(false, evaluateResponse1.equals('foo'));
        System.assertEquals(false, evaluateResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = new OASEvaluateResponse();
        OASEvaluateResponse evaluateResponse3;

        System.assertEquals(false, evaluateResponse1.equals(evaluateResponse3));
        System.assertEquals(false, evaluateResponse2.equals(evaluateResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = new OASEvaluateResponse();

        System.assertEquals(evaluateResponse1.hashCode(), evaluateResponse1.hashCode());
        System.assertEquals(evaluateResponse2.hashCode(), evaluateResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvaluateResponse evaluateResponse1 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse2 = OASEvaluateResponse.getExample();
        OASEvaluateResponse evaluateResponse3 = new OASEvaluateResponse();
        OASEvaluateResponse evaluateResponse4 = new OASEvaluateResponse();

        System.assert(evaluateResponse1.equals(evaluateResponse2));
        System.assert(evaluateResponse3.equals(evaluateResponse4));
        System.assertEquals(evaluateResponse1.hashCode(), evaluateResponse2.hashCode());
        System.assertEquals(evaluateResponse3.hashCode(), evaluateResponse4.hashCode());
    }
}