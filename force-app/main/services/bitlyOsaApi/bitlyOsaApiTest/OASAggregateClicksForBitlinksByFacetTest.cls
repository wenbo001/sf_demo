@isTest
private class OASAggregateClicksForBitlinksByFacetTest {
    @isTest
    private static void equalsSameInstance() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = aggregateClicksForBitlinksByFacet1;
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet3 = new OASAggregateClicksForBitlinksByFacet();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet4 = aggregateClicksForBitlinksByFacet3;

        System.assert(aggregateClicksForBitlinksByFacet1.equals(aggregateClicksForBitlinksByFacet2));
        System.assert(aggregateClicksForBitlinksByFacet2.equals(aggregateClicksForBitlinksByFacet1));
        System.assert(aggregateClicksForBitlinksByFacet1.equals(aggregateClicksForBitlinksByFacet1));
        System.assert(aggregateClicksForBitlinksByFacet3.equals(aggregateClicksForBitlinksByFacet4));
        System.assert(aggregateClicksForBitlinksByFacet4.equals(aggregateClicksForBitlinksByFacet3));
        System.assert(aggregateClicksForBitlinksByFacet3.equals(aggregateClicksForBitlinksByFacet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet3 = new OASAggregateClicksForBitlinksByFacet();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet4 = new OASAggregateClicksForBitlinksByFacet();

        System.assert(aggregateClicksForBitlinksByFacet1.equals(aggregateClicksForBitlinksByFacet2));
        System.assert(aggregateClicksForBitlinksByFacet2.equals(aggregateClicksForBitlinksByFacet1));
        System.assert(aggregateClicksForBitlinksByFacet3.equals(aggregateClicksForBitlinksByFacet4));
        System.assert(aggregateClicksForBitlinksByFacet4.equals(aggregateClicksForBitlinksByFacet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = new OASAggregateClicksForBitlinksByFacet();

        System.assertEquals(false, aggregateClicksForBitlinksByFacet1.equals('foo'));
        System.assertEquals(false, aggregateClicksForBitlinksByFacet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = new OASAggregateClicksForBitlinksByFacet();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet3;

        System.assertEquals(false, aggregateClicksForBitlinksByFacet1.equals(aggregateClicksForBitlinksByFacet3));
        System.assertEquals(false, aggregateClicksForBitlinksByFacet2.equals(aggregateClicksForBitlinksByFacet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = new OASAggregateClicksForBitlinksByFacet();

        System.assertEquals(aggregateClicksForBitlinksByFacet1.hashCode(), aggregateClicksForBitlinksByFacet1.hashCode());
        System.assertEquals(aggregateClicksForBitlinksByFacet2.hashCode(), aggregateClicksForBitlinksByFacet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet1 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet2 = OASAggregateClicksForBitlinksByFacet.getExample();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet3 = new OASAggregateClicksForBitlinksByFacet();
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet4 = new OASAggregateClicksForBitlinksByFacet();

        System.assert(aggregateClicksForBitlinksByFacet1.equals(aggregateClicksForBitlinksByFacet2));
        System.assert(aggregateClicksForBitlinksByFacet3.equals(aggregateClicksForBitlinksByFacet4));
        System.assertEquals(aggregateClicksForBitlinksByFacet1.hashCode(), aggregateClicksForBitlinksByFacet2.hashCode());
        System.assertEquals(aggregateClicksForBitlinksByFacet3.hashCode(), aggregateClicksForBitlinksByFacet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet = new OASAggregateClicksForBitlinksByFacet();
        Map<String, String> propertymappings = aggregateClicksForBitlinksByFacet.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('totalsForTimePeriod', propertymappings.get('totals_for_time_period'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAggregateClicksForBitlinksByFacet aggregateClicksForBitlinksByFacet = new OASAggregateClicksForBitlinksByFacet();
        System.assertEquals(new List<OASClicksByFacet>(), aggregateClicksForBitlinksByFacet.totalsForTimePeriod);
        System.assertEquals(null, aggregateClicksForBitlinksByFacet.unitReference);
        System.assertEquals(null, aggregateClicksForBitlinksByFacet.unit);
        System.assertEquals(null, aggregateClicksForBitlinksByFacet.units);
        System.assertEquals(null, aggregateClicksForBitlinksByFacet.facet);
    }
}