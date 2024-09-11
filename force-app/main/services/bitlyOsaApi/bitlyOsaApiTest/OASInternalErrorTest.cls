@isTest
private class OASInternalErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = internalError1;
        OASInternalError internalError3 = new OASInternalError();
        OASInternalError internalError4 = internalError3;

        System.assert(internalError1.equals(internalError2));
        System.assert(internalError2.equals(internalError1));
        System.assert(internalError1.equals(internalError1));
        System.assert(internalError3.equals(internalError4));
        System.assert(internalError4.equals(internalError3));
        System.assert(internalError3.equals(internalError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = OASInternalError.getExample();
        OASInternalError internalError3 = new OASInternalError();
        OASInternalError internalError4 = new OASInternalError();

        System.assert(internalError1.equals(internalError2));
        System.assert(internalError2.equals(internalError1));
        System.assert(internalError3.equals(internalError4));
        System.assert(internalError4.equals(internalError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = new OASInternalError();

        System.assertEquals(false, internalError1.equals('foo'));
        System.assertEquals(false, internalError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = new OASInternalError();
        OASInternalError internalError3;

        System.assertEquals(false, internalError1.equals(internalError3));
        System.assertEquals(false, internalError2.equals(internalError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = new OASInternalError();

        System.assertEquals(internalError1.hashCode(), internalError1.hashCode());
        System.assertEquals(internalError2.hashCode(), internalError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInternalError internalError1 = OASInternalError.getExample();
        OASInternalError internalError2 = OASInternalError.getExample();
        OASInternalError internalError3 = new OASInternalError();
        OASInternalError internalError4 = new OASInternalError();

        System.assert(internalError1.equals(internalError2));
        System.assert(internalError3.equals(internalError4));
        System.assertEquals(internalError1.hashCode(), internalError2.hashCode());
        System.assertEquals(internalError3.hashCode(), internalError4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASInternalError internalError = new OASInternalError();
        System.assertEquals(new List<OASFieldError>(), internalError.errors);
        System.assertEquals(null, internalError.message);
        System.assertEquals(null, internalError.description);
        System.assertEquals(null, internalError.resource);
    }
}