@isTest
private class OASFacetCountDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = facetCountData1;
        OASFacetCountData facetCountData3 = new OASFacetCountData();
        OASFacetCountData facetCountData4 = facetCountData3;

        System.assert(facetCountData1.equals(facetCountData2));
        System.assert(facetCountData2.equals(facetCountData1));
        System.assert(facetCountData1.equals(facetCountData1));
        System.assert(facetCountData3.equals(facetCountData4));
        System.assert(facetCountData4.equals(facetCountData3));
        System.assert(facetCountData3.equals(facetCountData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData3 = new OASFacetCountData();
        OASFacetCountData facetCountData4 = new OASFacetCountData();

        System.assert(facetCountData1.equals(facetCountData2));
        System.assert(facetCountData2.equals(facetCountData1));
        System.assert(facetCountData3.equals(facetCountData4));
        System.assert(facetCountData4.equals(facetCountData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = new OASFacetCountData();

        System.assertEquals(false, facetCountData1.equals('foo'));
        System.assertEquals(false, facetCountData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = new OASFacetCountData();
        OASFacetCountData facetCountData3;

        System.assertEquals(false, facetCountData1.equals(facetCountData3));
        System.assertEquals(false, facetCountData2.equals(facetCountData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = new OASFacetCountData();

        System.assertEquals(facetCountData1.hashCode(), facetCountData1.hashCode());
        System.assertEquals(facetCountData2.hashCode(), facetCountData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFacetCountData facetCountData1 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData2 = OASFacetCountData.getExample();
        OASFacetCountData facetCountData3 = new OASFacetCountData();
        OASFacetCountData facetCountData4 = new OASFacetCountData();

        System.assert(facetCountData1.equals(facetCountData2));
        System.assert(facetCountData3.equals(facetCountData4));
        System.assertEquals(facetCountData1.hashCode(), facetCountData2.hashCode());
        System.assertEquals(facetCountData3.hashCode(), facetCountData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFacetCountData facetCountData = new OASFacetCountData();
        Map<String, String> propertymappings = facetCountData.getPropertyMappings();
        System.assertEquals('totalCount', propertymappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFacetCountData facetCountData = new OASFacetCountData();
        System.assertEquals(new List<OASFacetCountItem>(), facetCountData.items);
        System.assertEquals(null, facetCountData.ts);
        System.assertEquals(null, facetCountData.totalCount);
    }
}