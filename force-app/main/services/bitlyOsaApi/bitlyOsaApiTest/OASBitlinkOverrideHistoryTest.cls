@isTest
private class OASBitlinkOverrideHistoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = bitlinkOverrideHistory1;
        OASBitlinkOverrideHistory bitlinkOverrideHistory3 = new OASBitlinkOverrideHistory();
        OASBitlinkOverrideHistory bitlinkOverrideHistory4 = bitlinkOverrideHistory3;

        System.assert(bitlinkOverrideHistory1.equals(bitlinkOverrideHistory2));
        System.assert(bitlinkOverrideHistory2.equals(bitlinkOverrideHistory1));
        System.assert(bitlinkOverrideHistory1.equals(bitlinkOverrideHistory1));
        System.assert(bitlinkOverrideHistory3.equals(bitlinkOverrideHistory4));
        System.assert(bitlinkOverrideHistory4.equals(bitlinkOverrideHistory3));
        System.assert(bitlinkOverrideHistory3.equals(bitlinkOverrideHistory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory3 = new OASBitlinkOverrideHistory();
        OASBitlinkOverrideHistory bitlinkOverrideHistory4 = new OASBitlinkOverrideHistory();

        System.assert(bitlinkOverrideHistory1.equals(bitlinkOverrideHistory2));
        System.assert(bitlinkOverrideHistory2.equals(bitlinkOverrideHistory1));
        System.assert(bitlinkOverrideHistory3.equals(bitlinkOverrideHistory4));
        System.assert(bitlinkOverrideHistory4.equals(bitlinkOverrideHistory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = new OASBitlinkOverrideHistory();

        System.assertEquals(false, bitlinkOverrideHistory1.equals('foo'));
        System.assertEquals(false, bitlinkOverrideHistory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = new OASBitlinkOverrideHistory();
        OASBitlinkOverrideHistory bitlinkOverrideHistory3;

        System.assertEquals(false, bitlinkOverrideHistory1.equals(bitlinkOverrideHistory3));
        System.assertEquals(false, bitlinkOverrideHistory2.equals(bitlinkOverrideHistory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = new OASBitlinkOverrideHistory();

        System.assertEquals(bitlinkOverrideHistory1.hashCode(), bitlinkOverrideHistory1.hashCode());
        System.assertEquals(bitlinkOverrideHistory2.hashCode(), bitlinkOverrideHistory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory1 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory2 = OASBitlinkOverrideHistory.getExample();
        OASBitlinkOverrideHistory bitlinkOverrideHistory3 = new OASBitlinkOverrideHistory();
        OASBitlinkOverrideHistory bitlinkOverrideHistory4 = new OASBitlinkOverrideHistory();

        System.assert(bitlinkOverrideHistory1.equals(bitlinkOverrideHistory2));
        System.assert(bitlinkOverrideHistory3.equals(bitlinkOverrideHistory4));
        System.assertEquals(bitlinkOverrideHistory1.hashCode(), bitlinkOverrideHistory2.hashCode());
        System.assertEquals(bitlinkOverrideHistory3.hashCode(), bitlinkOverrideHistory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory = new OASBitlinkOverrideHistory();
        Map<String, String> propertymappings = bitlinkOverrideHistory.getPropertyMappings();
        System.assertEquals('totalCount', propertymappings.get('total_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkOverrideHistory bitlinkOverrideHistory = new OASBitlinkOverrideHistory();
        System.assertEquals(new List<OASBitlinkHistory>(), bitlinkOverrideHistory.bitlinks);
        System.assertEquals(null, bitlinkOverrideHistory.totalCount);
    }
}