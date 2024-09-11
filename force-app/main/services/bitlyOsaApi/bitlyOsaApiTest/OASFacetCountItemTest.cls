@isTest
private class OASFacetCountItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = facetCountItem1;
        OASFacetCountItem facetCountItem3 = new OASFacetCountItem();
        OASFacetCountItem facetCountItem4 = facetCountItem3;

        System.assert(facetCountItem1.equals(facetCountItem2));
        System.assert(facetCountItem2.equals(facetCountItem1));
        System.assert(facetCountItem1.equals(facetCountItem1));
        System.assert(facetCountItem3.equals(facetCountItem4));
        System.assert(facetCountItem4.equals(facetCountItem3));
        System.assert(facetCountItem3.equals(facetCountItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem3 = new OASFacetCountItem();
        OASFacetCountItem facetCountItem4 = new OASFacetCountItem();

        System.assert(facetCountItem1.equals(facetCountItem2));
        System.assert(facetCountItem2.equals(facetCountItem1));
        System.assert(facetCountItem3.equals(facetCountItem4));
        System.assert(facetCountItem4.equals(facetCountItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = new OASFacetCountItem();

        System.assertEquals(false, facetCountItem1.equals('foo'));
        System.assertEquals(false, facetCountItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = new OASFacetCountItem();
        OASFacetCountItem facetCountItem3;

        System.assertEquals(false, facetCountItem1.equals(facetCountItem3));
        System.assertEquals(false, facetCountItem2.equals(facetCountItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = new OASFacetCountItem();

        System.assertEquals(facetCountItem1.hashCode(), facetCountItem1.hashCode());
        System.assertEquals(facetCountItem2.hashCode(), facetCountItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFacetCountItem facetCountItem1 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem2 = OASFacetCountItem.getExample();
        OASFacetCountItem facetCountItem3 = new OASFacetCountItem();
        OASFacetCountItem facetCountItem4 = new OASFacetCountItem();

        System.assert(facetCountItem1.equals(facetCountItem2));
        System.assert(facetCountItem3.equals(facetCountItem4));
        System.assertEquals(facetCountItem1.hashCode(), facetCountItem2.hashCode());
        System.assertEquals(facetCountItem3.hashCode(), facetCountItem4.hashCode());
    }
}