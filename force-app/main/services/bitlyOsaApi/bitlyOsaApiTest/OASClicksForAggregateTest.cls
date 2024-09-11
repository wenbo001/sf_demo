@isTest
private class OASClicksForAggregateTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = clicksForAggregate1;
        OASClicksForAggregate clicksForAggregate3 = new OASClicksForAggregate();
        OASClicksForAggregate clicksForAggregate4 = clicksForAggregate3;

        System.assert(clicksForAggregate1.equals(clicksForAggregate2));
        System.assert(clicksForAggregate2.equals(clicksForAggregate1));
        System.assert(clicksForAggregate1.equals(clicksForAggregate1));
        System.assert(clicksForAggregate3.equals(clicksForAggregate4));
        System.assert(clicksForAggregate4.equals(clicksForAggregate3));
        System.assert(clicksForAggregate3.equals(clicksForAggregate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate3 = new OASClicksForAggregate();
        OASClicksForAggregate clicksForAggregate4 = new OASClicksForAggregate();

        System.assert(clicksForAggregate1.equals(clicksForAggregate2));
        System.assert(clicksForAggregate2.equals(clicksForAggregate1));
        System.assert(clicksForAggregate3.equals(clicksForAggregate4));
        System.assert(clicksForAggregate4.equals(clicksForAggregate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = new OASClicksForAggregate();

        System.assertEquals(false, clicksForAggregate1.equals('foo'));
        System.assertEquals(false, clicksForAggregate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = new OASClicksForAggregate();
        OASClicksForAggregate clicksForAggregate3;

        System.assertEquals(false, clicksForAggregate1.equals(clicksForAggregate3));
        System.assertEquals(false, clicksForAggregate2.equals(clicksForAggregate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = new OASClicksForAggregate();

        System.assertEquals(clicksForAggregate1.hashCode(), clicksForAggregate1.hashCode());
        System.assertEquals(clicksForAggregate2.hashCode(), clicksForAggregate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksForAggregate clicksForAggregate1 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate2 = OASClicksForAggregate.getExample();
        OASClicksForAggregate clicksForAggregate3 = new OASClicksForAggregate();
        OASClicksForAggregate clicksForAggregate4 = new OASClicksForAggregate();

        System.assert(clicksForAggregate1.equals(clicksForAggregate2));
        System.assert(clicksForAggregate3.equals(clicksForAggregate4));
        System.assertEquals(clicksForAggregate1.hashCode(), clicksForAggregate2.hashCode());
        System.assertEquals(clicksForAggregate3.hashCode(), clicksForAggregate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClicksForAggregate clicksForAggregate = new OASClicksForAggregate();
        Map<String, String> propertymappings = clicksForAggregate.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
    }
}