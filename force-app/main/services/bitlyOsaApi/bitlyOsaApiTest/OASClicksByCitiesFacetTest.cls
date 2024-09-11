@isTest
private class OASClicksByCitiesFacetTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = clicksByCitiesFacet1;
        OASClicksByCitiesFacet clicksByCitiesFacet3 = new OASClicksByCitiesFacet();
        OASClicksByCitiesFacet clicksByCitiesFacet4 = clicksByCitiesFacet3;

        System.assert(clicksByCitiesFacet1.equals(clicksByCitiesFacet2));
        System.assert(clicksByCitiesFacet2.equals(clicksByCitiesFacet1));
        System.assert(clicksByCitiesFacet1.equals(clicksByCitiesFacet1));
        System.assert(clicksByCitiesFacet3.equals(clicksByCitiesFacet4));
        System.assert(clicksByCitiesFacet4.equals(clicksByCitiesFacet3));
        System.assert(clicksByCitiesFacet3.equals(clicksByCitiesFacet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet3 = new OASClicksByCitiesFacet();
        OASClicksByCitiesFacet clicksByCitiesFacet4 = new OASClicksByCitiesFacet();

        System.assert(clicksByCitiesFacet1.equals(clicksByCitiesFacet2));
        System.assert(clicksByCitiesFacet2.equals(clicksByCitiesFacet1));
        System.assert(clicksByCitiesFacet3.equals(clicksByCitiesFacet4));
        System.assert(clicksByCitiesFacet4.equals(clicksByCitiesFacet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = new OASClicksByCitiesFacet();

        System.assertEquals(false, clicksByCitiesFacet1.equals('foo'));
        System.assertEquals(false, clicksByCitiesFacet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = new OASClicksByCitiesFacet();
        OASClicksByCitiesFacet clicksByCitiesFacet3;

        System.assertEquals(false, clicksByCitiesFacet1.equals(clicksByCitiesFacet3));
        System.assertEquals(false, clicksByCitiesFacet2.equals(clicksByCitiesFacet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = new OASClicksByCitiesFacet();

        System.assertEquals(clicksByCitiesFacet1.hashCode(), clicksByCitiesFacet1.hashCode());
        System.assertEquals(clicksByCitiesFacet2.hashCode(), clicksByCitiesFacet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksByCitiesFacet clicksByCitiesFacet1 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet2 = OASClicksByCitiesFacet.getExample();
        OASClicksByCitiesFacet clicksByCitiesFacet3 = new OASClicksByCitiesFacet();
        OASClicksByCitiesFacet clicksByCitiesFacet4 = new OASClicksByCitiesFacet();

        System.assert(clicksByCitiesFacet1.equals(clicksByCitiesFacet2));
        System.assert(clicksByCitiesFacet3.equals(clicksByCitiesFacet4));
        System.assertEquals(clicksByCitiesFacet1.hashCode(), clicksByCitiesFacet2.hashCode());
        System.assertEquals(clicksByCitiesFacet3.hashCode(), clicksByCitiesFacet4.hashCode());
    }
}