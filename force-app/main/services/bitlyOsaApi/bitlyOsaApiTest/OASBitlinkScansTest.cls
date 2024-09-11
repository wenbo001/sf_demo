@isTest
private class OASBitlinkScansTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = bitlinkScans1;
        OASBitlinkScans bitlinkScans3 = new OASBitlinkScans();
        OASBitlinkScans bitlinkScans4 = bitlinkScans3;

        System.assert(bitlinkScans1.equals(bitlinkScans2));
        System.assert(bitlinkScans2.equals(bitlinkScans1));
        System.assert(bitlinkScans1.equals(bitlinkScans1));
        System.assert(bitlinkScans3.equals(bitlinkScans4));
        System.assert(bitlinkScans4.equals(bitlinkScans3));
        System.assert(bitlinkScans3.equals(bitlinkScans3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans3 = new OASBitlinkScans();
        OASBitlinkScans bitlinkScans4 = new OASBitlinkScans();

        System.assert(bitlinkScans1.equals(bitlinkScans2));
        System.assert(bitlinkScans2.equals(bitlinkScans1));
        System.assert(bitlinkScans3.equals(bitlinkScans4));
        System.assert(bitlinkScans4.equals(bitlinkScans3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = new OASBitlinkScans();

        System.assertEquals(false, bitlinkScans1.equals('foo'));
        System.assertEquals(false, bitlinkScans2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = new OASBitlinkScans();
        OASBitlinkScans bitlinkScans3;

        System.assertEquals(false, bitlinkScans1.equals(bitlinkScans3));
        System.assertEquals(false, bitlinkScans2.equals(bitlinkScans3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = new OASBitlinkScans();

        System.assertEquals(bitlinkScans1.hashCode(), bitlinkScans1.hashCode());
        System.assertEquals(bitlinkScans2.hashCode(), bitlinkScans2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkScans bitlinkScans1 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans2 = OASBitlinkScans.getExample();
        OASBitlinkScans bitlinkScans3 = new OASBitlinkScans();
        OASBitlinkScans bitlinkScans4 = new OASBitlinkScans();

        System.assert(bitlinkScans1.equals(bitlinkScans2));
        System.assert(bitlinkScans3.equals(bitlinkScans4));
        System.assertEquals(bitlinkScans1.hashCode(), bitlinkScans2.hashCode());
        System.assertEquals(bitlinkScans3.hashCode(), bitlinkScans4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkScans bitlinkScans = new OASBitlinkScans();
        Map<String, String> propertymappings = bitlinkScans.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkScans bitlinkScans = new OASBitlinkScans();
        System.assertEquals(new List<OASQRScans>(), bitlinkScans.scans);
        System.assertEquals(null, bitlinkScans.units);
        System.assertEquals(null, bitlinkScans.unit);
        System.assertEquals(null, bitlinkScans.unitReference);
    }
}