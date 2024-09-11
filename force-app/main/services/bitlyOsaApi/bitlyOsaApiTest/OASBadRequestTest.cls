@isTest
private class OASBadRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = badRequest1;
        OASBadRequest badRequest3 = new OASBadRequest();
        OASBadRequest badRequest4 = badRequest3;

        System.assert(badRequest1.equals(badRequest2));
        System.assert(badRequest2.equals(badRequest1));
        System.assert(badRequest1.equals(badRequest1));
        System.assert(badRequest3.equals(badRequest4));
        System.assert(badRequest4.equals(badRequest3));
        System.assert(badRequest3.equals(badRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = OASBadRequest.getExample();
        OASBadRequest badRequest3 = new OASBadRequest();
        OASBadRequest badRequest4 = new OASBadRequest();

        System.assert(badRequest1.equals(badRequest2));
        System.assert(badRequest2.equals(badRequest1));
        System.assert(badRequest3.equals(badRequest4));
        System.assert(badRequest4.equals(badRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = new OASBadRequest();

        System.assertEquals(false, badRequest1.equals('foo'));
        System.assertEquals(false, badRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = new OASBadRequest();
        OASBadRequest badRequest3;

        System.assertEquals(false, badRequest1.equals(badRequest3));
        System.assertEquals(false, badRequest2.equals(badRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = new OASBadRequest();

        System.assertEquals(badRequest1.hashCode(), badRequest1.hashCode());
        System.assertEquals(badRequest2.hashCode(), badRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBadRequest badRequest1 = OASBadRequest.getExample();
        OASBadRequest badRequest2 = OASBadRequest.getExample();
        OASBadRequest badRequest3 = new OASBadRequest();
        OASBadRequest badRequest4 = new OASBadRequest();

        System.assert(badRequest1.equals(badRequest2));
        System.assert(badRequest3.equals(badRequest4));
        System.assertEquals(badRequest1.hashCode(), badRequest2.hashCode());
        System.assertEquals(badRequest3.hashCode(), badRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBadRequest badRequest = new OASBadRequest();
        System.assertEquals(new List<OASFieldError>(), badRequest.errors);
        System.assertEquals(null, badRequest.message);
        System.assertEquals(null, badRequest.description);
        System.assertEquals(null, badRequest.resource);
    }
}