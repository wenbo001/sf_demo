@isTest
private class OASBitlinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = bitlinks1;
        OASBitlinks bitlinks3 = new OASBitlinks();
        OASBitlinks bitlinks4 = bitlinks3;

        System.assert(bitlinks1.equals(bitlinks2));
        System.assert(bitlinks2.equals(bitlinks1));
        System.assert(bitlinks1.equals(bitlinks1));
        System.assert(bitlinks3.equals(bitlinks4));
        System.assert(bitlinks4.equals(bitlinks3));
        System.assert(bitlinks3.equals(bitlinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = OASBitlinks.getExample();
        OASBitlinks bitlinks3 = new OASBitlinks();
        OASBitlinks bitlinks4 = new OASBitlinks();

        System.assert(bitlinks1.equals(bitlinks2));
        System.assert(bitlinks2.equals(bitlinks1));
        System.assert(bitlinks3.equals(bitlinks4));
        System.assert(bitlinks4.equals(bitlinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = new OASBitlinks();

        System.assertEquals(false, bitlinks1.equals('foo'));
        System.assertEquals(false, bitlinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = new OASBitlinks();
        OASBitlinks bitlinks3;

        System.assertEquals(false, bitlinks1.equals(bitlinks3));
        System.assertEquals(false, bitlinks2.equals(bitlinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = new OASBitlinks();

        System.assertEquals(bitlinks1.hashCode(), bitlinks1.hashCode());
        System.assertEquals(bitlinks2.hashCode(), bitlinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinks bitlinks1 = OASBitlinks.getExample();
        OASBitlinks bitlinks2 = OASBitlinks.getExample();
        OASBitlinks bitlinks3 = new OASBitlinks();
        OASBitlinks bitlinks4 = new OASBitlinks();

        System.assert(bitlinks1.equals(bitlinks2));
        System.assert(bitlinks3.equals(bitlinks4));
        System.assertEquals(bitlinks1.hashCode(), bitlinks2.hashCode());
        System.assertEquals(bitlinks3.hashCode(), bitlinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinks bitlinks = new OASBitlinks();
        System.assertEquals(new List<OASBitlinkBody>(), bitlinks.links);
        System.assertEquals(null, bitlinks.pagination);
    }
}