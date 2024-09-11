@isTest
private class OASAutobrandedDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = autobrandedDomain1;
        OASAutobrandedDomain autobrandedDomain3 = new OASAutobrandedDomain();
        OASAutobrandedDomain autobrandedDomain4 = autobrandedDomain3;

        System.assert(autobrandedDomain1.equals(autobrandedDomain2));
        System.assert(autobrandedDomain2.equals(autobrandedDomain1));
        System.assert(autobrandedDomain1.equals(autobrandedDomain1));
        System.assert(autobrandedDomain3.equals(autobrandedDomain4));
        System.assert(autobrandedDomain4.equals(autobrandedDomain3));
        System.assert(autobrandedDomain3.equals(autobrandedDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain3 = new OASAutobrandedDomain();
        OASAutobrandedDomain autobrandedDomain4 = new OASAutobrandedDomain();

        System.assert(autobrandedDomain1.equals(autobrandedDomain2));
        System.assert(autobrandedDomain2.equals(autobrandedDomain1));
        System.assert(autobrandedDomain3.equals(autobrandedDomain4));
        System.assert(autobrandedDomain4.equals(autobrandedDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = new OASAutobrandedDomain();

        System.assertEquals(false, autobrandedDomain1.equals('foo'));
        System.assertEquals(false, autobrandedDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = new OASAutobrandedDomain();
        OASAutobrandedDomain autobrandedDomain3;

        System.assertEquals(false, autobrandedDomain1.equals(autobrandedDomain3));
        System.assertEquals(false, autobrandedDomain2.equals(autobrandedDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = new OASAutobrandedDomain();

        System.assertEquals(autobrandedDomain1.hashCode(), autobrandedDomain1.hashCode());
        System.assertEquals(autobrandedDomain2.hashCode(), autobrandedDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAutobrandedDomain autobrandedDomain1 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain2 = OASAutobrandedDomain.getExample();
        OASAutobrandedDomain autobrandedDomain3 = new OASAutobrandedDomain();
        OASAutobrandedDomain autobrandedDomain4 = new OASAutobrandedDomain();

        System.assert(autobrandedDomain1.equals(autobrandedDomain2));
        System.assert(autobrandedDomain3.equals(autobrandedDomain4));
        System.assertEquals(autobrandedDomain1.hashCode(), autobrandedDomain2.hashCode());
        System.assertEquals(autobrandedDomain3.hashCode(), autobrandedDomain4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAutobrandedDomain autobrandedDomain = new OASAutobrandedDomain();
        System.assertEquals(new List<OASAutobrandedDomainResultInner>(), autobrandedDomain.result);
    }
}