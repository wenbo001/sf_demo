@isTest
private class OASBitlinkHistoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = bitlinkHistory1;
        OASBitlinkHistory bitlinkHistory3 = new OASBitlinkHistory();
        OASBitlinkHistory bitlinkHistory4 = bitlinkHistory3;

        System.assert(bitlinkHistory1.equals(bitlinkHistory2));
        System.assert(bitlinkHistory2.equals(bitlinkHistory1));
        System.assert(bitlinkHistory1.equals(bitlinkHistory1));
        System.assert(bitlinkHistory3.equals(bitlinkHistory4));
        System.assert(bitlinkHistory4.equals(bitlinkHistory3));
        System.assert(bitlinkHistory3.equals(bitlinkHistory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory3 = new OASBitlinkHistory();
        OASBitlinkHistory bitlinkHistory4 = new OASBitlinkHistory();

        System.assert(bitlinkHistory1.equals(bitlinkHistory2));
        System.assert(bitlinkHistory2.equals(bitlinkHistory1));
        System.assert(bitlinkHistory3.equals(bitlinkHistory4));
        System.assert(bitlinkHistory4.equals(bitlinkHistory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = new OASBitlinkHistory();

        System.assertEquals(false, bitlinkHistory1.equals('foo'));
        System.assertEquals(false, bitlinkHistory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = new OASBitlinkHistory();
        OASBitlinkHistory bitlinkHistory3;

        System.assertEquals(false, bitlinkHistory1.equals(bitlinkHistory3));
        System.assertEquals(false, bitlinkHistory2.equals(bitlinkHistory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = new OASBitlinkHistory();

        System.assertEquals(bitlinkHistory1.hashCode(), bitlinkHistory1.hashCode());
        System.assertEquals(bitlinkHistory2.hashCode(), bitlinkHistory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkHistory bitlinkHistory1 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory2 = OASBitlinkHistory.getExample();
        OASBitlinkHistory bitlinkHistory3 = new OASBitlinkHistory();
        OASBitlinkHistory bitlinkHistory4 = new OASBitlinkHistory();

        System.assert(bitlinkHistory1.equals(bitlinkHistory2));
        System.assert(bitlinkHistory3.equals(bitlinkHistory4));
        System.assertEquals(bitlinkHistory1.hashCode(), bitlinkHistory2.hashCode());
        System.assertEquals(bitlinkHistory3.hashCode(), bitlinkHistory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkHistory bitlinkHistory = new OASBitlinkHistory();
        Map<String, String> propertymappings = bitlinkHistory.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('targetBitlinkId', propertymappings.get('target_bitlink_id'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('deactivatedAt', propertymappings.get('deactivated_at'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isDeleted', propertymappings.get('is_deleted'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkHistory bitlinkHistory = new OASBitlinkHistory();
        System.assertEquals(new Map<String, String>(), bitlinkHistory.references);
        System.assertEquals(null, bitlinkHistory.id);
        System.assertEquals(null, bitlinkHistory.groupGuid);
        System.assertEquals(null, bitlinkHistory.targetBitlinkId);
        System.assertEquals(null, bitlinkHistory.hash);
        System.assertEquals(null, bitlinkHistory.login);
        System.assertEquals(null, bitlinkHistory.longUrl);
        System.assertEquals(null, bitlinkHistory.createdAt);
        System.assertEquals(null, bitlinkHistory.deactivatedAt);
        System.assertEquals(null, bitlinkHistory.isActive);
        System.assertEquals(null, bitlinkHistory.isDeleted);
        System.assertEquals(null, bitlinkHistory.version);
    }
}