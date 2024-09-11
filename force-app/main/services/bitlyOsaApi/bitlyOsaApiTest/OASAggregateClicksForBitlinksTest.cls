@isTest
private class OASAggregateClicksForBitlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = aggregateClicksForBitlinks1;
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks3 = new OASAggregateClicksForBitlinks();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks4 = aggregateClicksForBitlinks3;

        System.assert(aggregateClicksForBitlinks1.equals(aggregateClicksForBitlinks2));
        System.assert(aggregateClicksForBitlinks2.equals(aggregateClicksForBitlinks1));
        System.assert(aggregateClicksForBitlinks1.equals(aggregateClicksForBitlinks1));
        System.assert(aggregateClicksForBitlinks3.equals(aggregateClicksForBitlinks4));
        System.assert(aggregateClicksForBitlinks4.equals(aggregateClicksForBitlinks3));
        System.assert(aggregateClicksForBitlinks3.equals(aggregateClicksForBitlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks3 = new OASAggregateClicksForBitlinks();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks4 = new OASAggregateClicksForBitlinks();

        System.assert(aggregateClicksForBitlinks1.equals(aggregateClicksForBitlinks2));
        System.assert(aggregateClicksForBitlinks2.equals(aggregateClicksForBitlinks1));
        System.assert(aggregateClicksForBitlinks3.equals(aggregateClicksForBitlinks4));
        System.assert(aggregateClicksForBitlinks4.equals(aggregateClicksForBitlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = new OASAggregateClicksForBitlinks();

        System.assertEquals(false, aggregateClicksForBitlinks1.equals('foo'));
        System.assertEquals(false, aggregateClicksForBitlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = new OASAggregateClicksForBitlinks();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks3;

        System.assertEquals(false, aggregateClicksForBitlinks1.equals(aggregateClicksForBitlinks3));
        System.assertEquals(false, aggregateClicksForBitlinks2.equals(aggregateClicksForBitlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = new OASAggregateClicksForBitlinks();

        System.assertEquals(aggregateClicksForBitlinks1.hashCode(), aggregateClicksForBitlinks1.hashCode());
        System.assertEquals(aggregateClicksForBitlinks2.hashCode(), aggregateClicksForBitlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks1 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks2 = OASAggregateClicksForBitlinks.getExample();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks3 = new OASAggregateClicksForBitlinks();
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks4 = new OASAggregateClicksForBitlinks();

        System.assert(aggregateClicksForBitlinks1.equals(aggregateClicksForBitlinks2));
        System.assert(aggregateClicksForBitlinks3.equals(aggregateClicksForBitlinks4));
        System.assertEquals(aggregateClicksForBitlinks1.hashCode(), aggregateClicksForBitlinks2.hashCode());
        System.assertEquals(aggregateClicksForBitlinks3.hashCode(), aggregateClicksForBitlinks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks = new OASAggregateClicksForBitlinks();
        Map<String, String> propertymappings = aggregateClicksForBitlinks.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAggregateClicksForBitlinks aggregateClicksForBitlinks = new OASAggregateClicksForBitlinks();
        System.assertEquals(new List<OASClicksForAggregate>(), aggregateClicksForBitlinks.clicks);
        System.assertEquals(null, aggregateClicksForBitlinks.unitReference);
        System.assertEquals(null, aggregateClicksForBitlinks.unit);
        System.assertEquals(null, aggregateClicksForBitlinks.units);
    }
}