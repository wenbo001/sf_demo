@isTest
private class OASPriceMapTest {
    @isTest
    private static void equalsSameInstance() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = priceMap1;
        OASPriceMap priceMap3 = new OASPriceMap();
        OASPriceMap priceMap4 = priceMap3;

        System.assert(priceMap1.equals(priceMap2));
        System.assert(priceMap2.equals(priceMap1));
        System.assert(priceMap1.equals(priceMap1));
        System.assert(priceMap3.equals(priceMap4));
        System.assert(priceMap4.equals(priceMap3));
        System.assert(priceMap3.equals(priceMap3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = OASPriceMap.getExample();
        OASPriceMap priceMap3 = new OASPriceMap();
        OASPriceMap priceMap4 = new OASPriceMap();

        System.assert(priceMap1.equals(priceMap2));
        System.assert(priceMap2.equals(priceMap1));
        System.assert(priceMap3.equals(priceMap4));
        System.assert(priceMap4.equals(priceMap3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = new OASPriceMap();

        System.assertEquals(false, priceMap1.equals('foo'));
        System.assertEquals(false, priceMap2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = new OASPriceMap();
        OASPriceMap priceMap3;

        System.assertEquals(false, priceMap1.equals(priceMap3));
        System.assertEquals(false, priceMap2.equals(priceMap3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = new OASPriceMap();

        System.assertEquals(priceMap1.hashCode(), priceMap1.hashCode());
        System.assertEquals(priceMap2.hashCode(), priceMap2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPriceMap priceMap1 = OASPriceMap.getExample();
        OASPriceMap priceMap2 = OASPriceMap.getExample();
        OASPriceMap priceMap3 = new OASPriceMap();
        OASPriceMap priceMap4 = new OASPriceMap();

        System.assert(priceMap1.equals(priceMap2));
        System.assert(priceMap3.equals(priceMap4));
        System.assertEquals(priceMap1.hashCode(), priceMap2.hashCode());
        System.assertEquals(priceMap3.hashCode(), priceMap4.hashCode());
    }
}