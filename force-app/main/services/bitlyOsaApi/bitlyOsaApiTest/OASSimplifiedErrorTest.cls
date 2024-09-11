@isTest
private class OASSimplifiedErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = simplifiedError1;
        OASSimplifiedError simplifiedError3 = new OASSimplifiedError();
        OASSimplifiedError simplifiedError4 = simplifiedError3;

        System.assert(simplifiedError1.equals(simplifiedError2));
        System.assert(simplifiedError2.equals(simplifiedError1));
        System.assert(simplifiedError1.equals(simplifiedError1));
        System.assert(simplifiedError3.equals(simplifiedError4));
        System.assert(simplifiedError4.equals(simplifiedError3));
        System.assert(simplifiedError3.equals(simplifiedError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError3 = new OASSimplifiedError();
        OASSimplifiedError simplifiedError4 = new OASSimplifiedError();

        System.assert(simplifiedError1.equals(simplifiedError2));
        System.assert(simplifiedError2.equals(simplifiedError1));
        System.assert(simplifiedError3.equals(simplifiedError4));
        System.assert(simplifiedError4.equals(simplifiedError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = new OASSimplifiedError();

        System.assertEquals(false, simplifiedError1.equals('foo'));
        System.assertEquals(false, simplifiedError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = new OASSimplifiedError();
        OASSimplifiedError simplifiedError3;

        System.assertEquals(false, simplifiedError1.equals(simplifiedError3));
        System.assertEquals(false, simplifiedError2.equals(simplifiedError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = new OASSimplifiedError();

        System.assertEquals(simplifiedError1.hashCode(), simplifiedError1.hashCode());
        System.assertEquals(simplifiedError2.hashCode(), simplifiedError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSimplifiedError simplifiedError1 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError2 = OASSimplifiedError.getExample();
        OASSimplifiedError simplifiedError3 = new OASSimplifiedError();
        OASSimplifiedError simplifiedError4 = new OASSimplifiedError();

        System.assert(simplifiedError1.equals(simplifiedError2));
        System.assert(simplifiedError3.equals(simplifiedError4));
        System.assertEquals(simplifiedError1.hashCode(), simplifiedError2.hashCode());
        System.assertEquals(simplifiedError3.hashCode(), simplifiedError4.hashCode());
    }
}