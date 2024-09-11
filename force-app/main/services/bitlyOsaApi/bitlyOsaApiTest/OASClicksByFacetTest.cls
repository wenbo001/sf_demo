@isTest
private class OASClicksByFacetTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = clicksByFacet1;
        OASClicksByFacet clicksByFacet3 = new OASClicksByFacet();
        OASClicksByFacet clicksByFacet4 = clicksByFacet3;

        System.assert(clicksByFacet1.equals(clicksByFacet2));
        System.assert(clicksByFacet2.equals(clicksByFacet1));
        System.assert(clicksByFacet1.equals(clicksByFacet1));
        System.assert(clicksByFacet3.equals(clicksByFacet4));
        System.assert(clicksByFacet4.equals(clicksByFacet3));
        System.assert(clicksByFacet3.equals(clicksByFacet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet3 = new OASClicksByFacet();
        OASClicksByFacet clicksByFacet4 = new OASClicksByFacet();

        System.assert(clicksByFacet1.equals(clicksByFacet2));
        System.assert(clicksByFacet2.equals(clicksByFacet1));
        System.assert(clicksByFacet3.equals(clicksByFacet4));
        System.assert(clicksByFacet4.equals(clicksByFacet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = new OASClicksByFacet();

        System.assertEquals(false, clicksByFacet1.equals('foo'));
        System.assertEquals(false, clicksByFacet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = new OASClicksByFacet();
        OASClicksByFacet clicksByFacet3;

        System.assertEquals(false, clicksByFacet1.equals(clicksByFacet3));
        System.assertEquals(false, clicksByFacet2.equals(clicksByFacet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = new OASClicksByFacet();

        System.assertEquals(clicksByFacet1.hashCode(), clicksByFacet1.hashCode());
        System.assertEquals(clicksByFacet2.hashCode(), clicksByFacet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksByFacet clicksByFacet1 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet2 = OASClicksByFacet.getExample();
        OASClicksByFacet clicksByFacet3 = new OASClicksByFacet();
        OASClicksByFacet clicksByFacet4 = new OASClicksByFacet();

        System.assert(clicksByFacet1.equals(clicksByFacet2));
        System.assert(clicksByFacet3.equals(clicksByFacet4));
        System.assertEquals(clicksByFacet1.hashCode(), clicksByFacet2.hashCode());
        System.assertEquals(clicksByFacet3.hashCode(), clicksByFacet4.hashCode());
    }
}