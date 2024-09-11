@isTest
private class OASBitlinkHistoryAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = bitlinkHistoryAllOf1;
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf3 = new OASBitlinkHistoryAllOf();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf4 = bitlinkHistoryAllOf3;

        System.assert(bitlinkHistoryAllOf1.equals(bitlinkHistoryAllOf2));
        System.assert(bitlinkHistoryAllOf2.equals(bitlinkHistoryAllOf1));
        System.assert(bitlinkHistoryAllOf1.equals(bitlinkHistoryAllOf1));
        System.assert(bitlinkHistoryAllOf3.equals(bitlinkHistoryAllOf4));
        System.assert(bitlinkHistoryAllOf4.equals(bitlinkHistoryAllOf3));
        System.assert(bitlinkHistoryAllOf3.equals(bitlinkHistoryAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf3 = new OASBitlinkHistoryAllOf();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf4 = new OASBitlinkHistoryAllOf();

        System.assert(bitlinkHistoryAllOf1.equals(bitlinkHistoryAllOf2));
        System.assert(bitlinkHistoryAllOf2.equals(bitlinkHistoryAllOf1));
        System.assert(bitlinkHistoryAllOf3.equals(bitlinkHistoryAllOf4));
        System.assert(bitlinkHistoryAllOf4.equals(bitlinkHistoryAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = new OASBitlinkHistoryAllOf();

        System.assertEquals(false, bitlinkHistoryAllOf1.equals('foo'));
        System.assertEquals(false, bitlinkHistoryAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = new OASBitlinkHistoryAllOf();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf3;

        System.assertEquals(false, bitlinkHistoryAllOf1.equals(bitlinkHistoryAllOf3));
        System.assertEquals(false, bitlinkHistoryAllOf2.equals(bitlinkHistoryAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = new OASBitlinkHistoryAllOf();

        System.assertEquals(bitlinkHistoryAllOf1.hashCode(), bitlinkHistoryAllOf1.hashCode());
        System.assertEquals(bitlinkHistoryAllOf2.hashCode(), bitlinkHistoryAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf1 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf2 = OASBitlinkHistoryAllOf.getExample();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf3 = new OASBitlinkHistoryAllOf();
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf4 = new OASBitlinkHistoryAllOf();

        System.assert(bitlinkHistoryAllOf1.equals(bitlinkHistoryAllOf2));
        System.assert(bitlinkHistoryAllOf3.equals(bitlinkHistoryAllOf4));
        System.assertEquals(bitlinkHistoryAllOf1.hashCode(), bitlinkHistoryAllOf2.hashCode());
        System.assertEquals(bitlinkHistoryAllOf3.hashCode(), bitlinkHistoryAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkHistoryAllOf bitlinkHistoryAllOf = new OASBitlinkHistoryAllOf();
        Map<String, String> propertymappings = bitlinkHistoryAllOf.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('targetBitlinkId', propertymappings.get('target_bitlink_id'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('deactivatedAt', propertymappings.get('deactivated_at'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isDeleted', propertymappings.get('is_deleted'));
    }
}