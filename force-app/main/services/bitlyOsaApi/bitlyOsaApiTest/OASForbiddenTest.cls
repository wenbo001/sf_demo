@isTest
private class OASForbiddenTest {
    @isTest
    private static void equalsSameInstance() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = forbidden1;
        OASForbidden forbidden3 = new OASForbidden();
        OASForbidden forbidden4 = forbidden3;

        System.assert(forbidden1.equals(forbidden2));
        System.assert(forbidden2.equals(forbidden1));
        System.assert(forbidden1.equals(forbidden1));
        System.assert(forbidden3.equals(forbidden4));
        System.assert(forbidden4.equals(forbidden3));
        System.assert(forbidden3.equals(forbidden3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = OASForbidden.getExample();
        OASForbidden forbidden3 = new OASForbidden();
        OASForbidden forbidden4 = new OASForbidden();

        System.assert(forbidden1.equals(forbidden2));
        System.assert(forbidden2.equals(forbidden1));
        System.assert(forbidden3.equals(forbidden4));
        System.assert(forbidden4.equals(forbidden3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = new OASForbidden();

        System.assertEquals(false, forbidden1.equals('foo'));
        System.assertEquals(false, forbidden2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = new OASForbidden();
        OASForbidden forbidden3;

        System.assertEquals(false, forbidden1.equals(forbidden3));
        System.assertEquals(false, forbidden2.equals(forbidden3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = new OASForbidden();

        System.assertEquals(forbidden1.hashCode(), forbidden1.hashCode());
        System.assertEquals(forbidden2.hashCode(), forbidden2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASForbidden forbidden1 = OASForbidden.getExample();
        OASForbidden forbidden2 = OASForbidden.getExample();
        OASForbidden forbidden3 = new OASForbidden();
        OASForbidden forbidden4 = new OASForbidden();

        System.assert(forbidden1.equals(forbidden2));
        System.assert(forbidden3.equals(forbidden4));
        System.assertEquals(forbidden1.hashCode(), forbidden2.hashCode());
        System.assertEquals(forbidden3.hashCode(), forbidden4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASForbidden forbidden = new OASForbidden();
        System.assertEquals(new List<OASFieldError>(), forbidden.errors);
        System.assertEquals(null, forbidden.message);
        System.assertEquals(null, forbidden.description);
        System.assertEquals(null, forbidden.resource);
    }
}