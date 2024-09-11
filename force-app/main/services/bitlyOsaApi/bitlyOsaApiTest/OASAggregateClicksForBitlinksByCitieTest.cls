@isTest
private class OASAggregateClicksForBitlinksByCitieTest {
    @isTest
    private static void equalsSameInstance() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = aggregateClicksForBitlinksByCitiesFacet1;
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet3 = new OASAggregateClicksForBitlinksByCitie();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet4 = aggregateClicksForBitlinksByCitiesFacet3;

        System.assert(aggregateClicksForBitlinksByCitiesFacet1.equals(aggregateClicksForBitlinksByCitiesFacet2));
        System.assert(aggregateClicksForBitlinksByCitiesFacet2.equals(aggregateClicksForBitlinksByCitiesFacet1));
        System.assert(aggregateClicksForBitlinksByCitiesFacet1.equals(aggregateClicksForBitlinksByCitiesFacet1));
        System.assert(aggregateClicksForBitlinksByCitiesFacet3.equals(aggregateClicksForBitlinksByCitiesFacet4));
        System.assert(aggregateClicksForBitlinksByCitiesFacet4.equals(aggregateClicksForBitlinksByCitiesFacet3));
        System.assert(aggregateClicksForBitlinksByCitiesFacet3.equals(aggregateClicksForBitlinksByCitiesFacet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet3 = new OASAggregateClicksForBitlinksByCitie();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet4 = new OASAggregateClicksForBitlinksByCitie();

        System.assert(aggregateClicksForBitlinksByCitiesFacet1.equals(aggregateClicksForBitlinksByCitiesFacet2));
        System.assert(aggregateClicksForBitlinksByCitiesFacet2.equals(aggregateClicksForBitlinksByCitiesFacet1));
        System.assert(aggregateClicksForBitlinksByCitiesFacet3.equals(aggregateClicksForBitlinksByCitiesFacet4));
        System.assert(aggregateClicksForBitlinksByCitiesFacet4.equals(aggregateClicksForBitlinksByCitiesFacet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = new OASAggregateClicksForBitlinksByCitie();

        System.assertEquals(false, aggregateClicksForBitlinksByCitiesFacet1.equals('foo'));
        System.assertEquals(false, aggregateClicksForBitlinksByCitiesFacet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = new OASAggregateClicksForBitlinksByCitie();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet3;

        System.assertEquals(false, aggregateClicksForBitlinksByCitiesFacet1.equals(aggregateClicksForBitlinksByCitiesFacet3));
        System.assertEquals(false, aggregateClicksForBitlinksByCitiesFacet2.equals(aggregateClicksForBitlinksByCitiesFacet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = new OASAggregateClicksForBitlinksByCitie();

        System.assertEquals(aggregateClicksForBitlinksByCitiesFacet1.hashCode(), aggregateClicksForBitlinksByCitiesFacet1.hashCode());
        System.assertEquals(aggregateClicksForBitlinksByCitiesFacet2.hashCode(), aggregateClicksForBitlinksByCitiesFacet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet1 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet2 = OASAggregateClicksForBitlinksByCitie.getExample();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet3 = new OASAggregateClicksForBitlinksByCitie();
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet4 = new OASAggregateClicksForBitlinksByCitie();

        System.assert(aggregateClicksForBitlinksByCitiesFacet1.equals(aggregateClicksForBitlinksByCitiesFacet2));
        System.assert(aggregateClicksForBitlinksByCitiesFacet3.equals(aggregateClicksForBitlinksByCitiesFacet4));
        System.assertEquals(aggregateClicksForBitlinksByCitiesFacet1.hashCode(), aggregateClicksForBitlinksByCitiesFacet2.hashCode());
        System.assertEquals(aggregateClicksForBitlinksByCitiesFacet3.hashCode(), aggregateClicksForBitlinksByCitiesFacet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet = new OASAggregateClicksForBitlinksByCitie();
        Map<String, String> propertymappings = aggregateClicksForBitlinksByCitiesFacet.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('totalsForTimePeriod', propertymappings.get('totals_for_time_period'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAggregateClicksForBitlinksByCitie aggregateClicksForBitlinksByCitiesFacet = new OASAggregateClicksForBitlinksByCitie();
        System.assertEquals(new List<OASClicksByCitiesFacet>(), aggregateClicksForBitlinksByCitiesFacet.totalsForTimePeriod);
        System.assertEquals(null, aggregateClicksForBitlinksByCitiesFacet.unitReference);
        System.assertEquals(null, aggregateClicksForBitlinksByCitiesFacet.unit);
        System.assertEquals(null, aggregateClicksForBitlinksByCitiesFacet.units);
        System.assertEquals(null, aggregateClicksForBitlinksByCitiesFacet.facet);
    }
}