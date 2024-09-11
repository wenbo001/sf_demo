@isTest
private class OASTimeoutTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = timeout1;
        OASTimeout timeout3 = new OASTimeout();
        OASTimeout timeout4 = timeout3;

        System.assert(timeout1.equals(timeout2));
        System.assert(timeout2.equals(timeout1));
        System.assert(timeout1.equals(timeout1));
        System.assert(timeout3.equals(timeout4));
        System.assert(timeout4.equals(timeout3));
        System.assert(timeout3.equals(timeout3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = OASTimeout.getExample();
        OASTimeout timeout3 = new OASTimeout();
        OASTimeout timeout4 = new OASTimeout();

        System.assert(timeout1.equals(timeout2));
        System.assert(timeout2.equals(timeout1));
        System.assert(timeout3.equals(timeout4));
        System.assert(timeout4.equals(timeout3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = new OASTimeout();

        System.assertEquals(false, timeout1.equals('foo'));
        System.assertEquals(false, timeout2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = new OASTimeout();
        OASTimeout timeout3;

        System.assertEquals(false, timeout1.equals(timeout3));
        System.assertEquals(false, timeout2.equals(timeout3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = new OASTimeout();

        System.assertEquals(timeout1.hashCode(), timeout1.hashCode());
        System.assertEquals(timeout2.hashCode(), timeout2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimeout timeout1 = OASTimeout.getExample();
        OASTimeout timeout2 = OASTimeout.getExample();
        OASTimeout timeout3 = new OASTimeout();
        OASTimeout timeout4 = new OASTimeout();

        System.assert(timeout1.equals(timeout2));
        System.assert(timeout3.equals(timeout4));
        System.assertEquals(timeout1.hashCode(), timeout2.hashCode());
        System.assertEquals(timeout3.hashCode(), timeout4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTimeout timeout = new OASTimeout();
        System.assertEquals(new List<OASFieldError>(), timeout.errors);
        System.assertEquals(null, timeout.message);
        System.assertEquals(null, timeout.description);
        System.assertEquals(null, timeout.resource);
    }
}