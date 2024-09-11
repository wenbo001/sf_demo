@isTest
private class OASRegionsTest {
    @isTest
    private static void equalsSameInstance() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = regions1;
        OASRegions regions3 = new OASRegions();
        OASRegions regions4 = regions3;

        System.assert(regions1.equals(regions2));
        System.assert(regions2.equals(regions1));
        System.assert(regions1.equals(regions1));
        System.assert(regions3.equals(regions4));
        System.assert(regions4.equals(regions3));
        System.assert(regions3.equals(regions3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = OASRegions.getExample();
        OASRegions regions3 = new OASRegions();
        OASRegions regions4 = new OASRegions();

        System.assert(regions1.equals(regions2));
        System.assert(regions2.equals(regions1));
        System.assert(regions3.equals(regions4));
        System.assert(regions4.equals(regions3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = new OASRegions();

        System.assertEquals(false, regions1.equals('foo'));
        System.assertEquals(false, regions2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = new OASRegions();
        OASRegions regions3;

        System.assertEquals(false, regions1.equals(regions3));
        System.assertEquals(false, regions2.equals(regions3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = new OASRegions();

        System.assertEquals(regions1.hashCode(), regions1.hashCode());
        System.assertEquals(regions2.hashCode(), regions2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRegions regions1 = OASRegions.getExample();
        OASRegions regions2 = OASRegions.getExample();
        OASRegions regions3 = new OASRegions();
        OASRegions regions4 = new OASRegions();

        System.assert(regions1.equals(regions2));
        System.assert(regions3.equals(regions4));
        System.assertEquals(regions1.hashCode(), regions2.hashCode());
        System.assertEquals(regions3.hashCode(), regions4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRegions regions = new OASRegions();
        System.assertEquals(new List<OASRegion>(), regions.regions);
    }
}