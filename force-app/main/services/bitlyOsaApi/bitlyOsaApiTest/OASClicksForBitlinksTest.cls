@isTest
private class OASClicksForBitlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = clicksForBitlinks1;
        OASClicksForBitlinks clicksForBitlinks3 = new OASClicksForBitlinks();
        OASClicksForBitlinks clicksForBitlinks4 = clicksForBitlinks3;

        System.assert(clicksForBitlinks1.equals(clicksForBitlinks2));
        System.assert(clicksForBitlinks2.equals(clicksForBitlinks1));
        System.assert(clicksForBitlinks1.equals(clicksForBitlinks1));
        System.assert(clicksForBitlinks3.equals(clicksForBitlinks4));
        System.assert(clicksForBitlinks4.equals(clicksForBitlinks3));
        System.assert(clicksForBitlinks3.equals(clicksForBitlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks3 = new OASClicksForBitlinks();
        OASClicksForBitlinks clicksForBitlinks4 = new OASClicksForBitlinks();

        System.assert(clicksForBitlinks1.equals(clicksForBitlinks2));
        System.assert(clicksForBitlinks2.equals(clicksForBitlinks1));
        System.assert(clicksForBitlinks3.equals(clicksForBitlinks4));
        System.assert(clicksForBitlinks4.equals(clicksForBitlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = new OASClicksForBitlinks();

        System.assertEquals(false, clicksForBitlinks1.equals('foo'));
        System.assertEquals(false, clicksForBitlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = new OASClicksForBitlinks();
        OASClicksForBitlinks clicksForBitlinks3;

        System.assertEquals(false, clicksForBitlinks1.equals(clicksForBitlinks3));
        System.assertEquals(false, clicksForBitlinks2.equals(clicksForBitlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = new OASClicksForBitlinks();

        System.assertEquals(clicksForBitlinks1.hashCode(), clicksForBitlinks1.hashCode());
        System.assertEquals(clicksForBitlinks2.hashCode(), clicksForBitlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksForBitlinks clicksForBitlinks1 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks2 = OASClicksForBitlinks.getExample();
        OASClicksForBitlinks clicksForBitlinks3 = new OASClicksForBitlinks();
        OASClicksForBitlinks clicksForBitlinks4 = new OASClicksForBitlinks();

        System.assert(clicksForBitlinks1.equals(clicksForBitlinks2));
        System.assert(clicksForBitlinks3.equals(clicksForBitlinks4));
        System.assertEquals(clicksForBitlinks1.hashCode(), clicksForBitlinks2.hashCode());
        System.assertEquals(clicksForBitlinks3.hashCode(), clicksForBitlinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClicksForBitlinks clicksForBitlinks = new OASClicksForBitlinks();
        System.assertEquals(new List<OASClicksCount>(), clicksForBitlinks.clicks);
    }
}