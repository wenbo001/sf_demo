@isTest
private class OASTemporarilyUnavailableTest {
    @isTest
    private static void equalsSameInstance() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = temporarilyUnavailable1;
        OASTemporarilyUnavailable temporarilyUnavailable3 = new OASTemporarilyUnavailable();
        OASTemporarilyUnavailable temporarilyUnavailable4 = temporarilyUnavailable3;

        System.assert(temporarilyUnavailable1.equals(temporarilyUnavailable2));
        System.assert(temporarilyUnavailable2.equals(temporarilyUnavailable1));
        System.assert(temporarilyUnavailable1.equals(temporarilyUnavailable1));
        System.assert(temporarilyUnavailable3.equals(temporarilyUnavailable4));
        System.assert(temporarilyUnavailable4.equals(temporarilyUnavailable3));
        System.assert(temporarilyUnavailable3.equals(temporarilyUnavailable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable3 = new OASTemporarilyUnavailable();
        OASTemporarilyUnavailable temporarilyUnavailable4 = new OASTemporarilyUnavailable();

        System.assert(temporarilyUnavailable1.equals(temporarilyUnavailable2));
        System.assert(temporarilyUnavailable2.equals(temporarilyUnavailable1));
        System.assert(temporarilyUnavailable3.equals(temporarilyUnavailable4));
        System.assert(temporarilyUnavailable4.equals(temporarilyUnavailable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = new OASTemporarilyUnavailable();

        System.assertEquals(false, temporarilyUnavailable1.equals('foo'));
        System.assertEquals(false, temporarilyUnavailable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = new OASTemporarilyUnavailable();
        OASTemporarilyUnavailable temporarilyUnavailable3;

        System.assertEquals(false, temporarilyUnavailable1.equals(temporarilyUnavailable3));
        System.assertEquals(false, temporarilyUnavailable2.equals(temporarilyUnavailable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = new OASTemporarilyUnavailable();

        System.assertEquals(temporarilyUnavailable1.hashCode(), temporarilyUnavailable1.hashCode());
        System.assertEquals(temporarilyUnavailable2.hashCode(), temporarilyUnavailable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTemporarilyUnavailable temporarilyUnavailable1 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable2 = OASTemporarilyUnavailable.getExample();
        OASTemporarilyUnavailable temporarilyUnavailable3 = new OASTemporarilyUnavailable();
        OASTemporarilyUnavailable temporarilyUnavailable4 = new OASTemporarilyUnavailable();

        System.assert(temporarilyUnavailable1.equals(temporarilyUnavailable2));
        System.assert(temporarilyUnavailable3.equals(temporarilyUnavailable4));
        System.assertEquals(temporarilyUnavailable1.hashCode(), temporarilyUnavailable2.hashCode());
        System.assertEquals(temporarilyUnavailable3.hashCode(), temporarilyUnavailable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTemporarilyUnavailable temporarilyUnavailable = new OASTemporarilyUnavailable();
        System.assertEquals(new List<OASFieldError>(), temporarilyUnavailable.errors);
        System.assertEquals(null, temporarilyUnavailable.message);
        System.assertEquals(null, temporarilyUnavailable.description);
        System.assertEquals(null, temporarilyUnavailable.resource);
    }
}