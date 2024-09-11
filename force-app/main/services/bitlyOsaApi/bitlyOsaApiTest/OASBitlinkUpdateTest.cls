@isTest
private class OASBitlinkUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = bitlinkUpdate1;
        OASBitlinkUpdate bitlinkUpdate3 = new OASBitlinkUpdate();
        OASBitlinkUpdate bitlinkUpdate4 = bitlinkUpdate3;

        System.assert(bitlinkUpdate1.equals(bitlinkUpdate2));
        System.assert(bitlinkUpdate2.equals(bitlinkUpdate1));
        System.assert(bitlinkUpdate1.equals(bitlinkUpdate1));
        System.assert(bitlinkUpdate3.equals(bitlinkUpdate4));
        System.assert(bitlinkUpdate4.equals(bitlinkUpdate3));
        System.assert(bitlinkUpdate3.equals(bitlinkUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate3 = new OASBitlinkUpdate();
        OASBitlinkUpdate bitlinkUpdate4 = new OASBitlinkUpdate();

        System.assert(bitlinkUpdate1.equals(bitlinkUpdate2));
        System.assert(bitlinkUpdate2.equals(bitlinkUpdate1));
        System.assert(bitlinkUpdate3.equals(bitlinkUpdate4));
        System.assert(bitlinkUpdate4.equals(bitlinkUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = new OASBitlinkUpdate();

        System.assertEquals(false, bitlinkUpdate1.equals('foo'));
        System.assertEquals(false, bitlinkUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = new OASBitlinkUpdate();
        OASBitlinkUpdate bitlinkUpdate3;

        System.assertEquals(false, bitlinkUpdate1.equals(bitlinkUpdate3));
        System.assertEquals(false, bitlinkUpdate2.equals(bitlinkUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = new OASBitlinkUpdate();

        System.assertEquals(bitlinkUpdate1.hashCode(), bitlinkUpdate1.hashCode());
        System.assertEquals(bitlinkUpdate2.hashCode(), bitlinkUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkUpdate bitlinkUpdate1 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate2 = OASBitlinkUpdate.getExample();
        OASBitlinkUpdate bitlinkUpdate3 = new OASBitlinkUpdate();
        OASBitlinkUpdate bitlinkUpdate4 = new OASBitlinkUpdate();

        System.assert(bitlinkUpdate1.equals(bitlinkUpdate2));
        System.assert(bitlinkUpdate3.equals(bitlinkUpdate4));
        System.assertEquals(bitlinkUpdate1.hashCode(), bitlinkUpdate2.hashCode());
        System.assertEquals(bitlinkUpdate3.hashCode(), bitlinkUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkUpdate bitlinkUpdate = new OASBitlinkUpdate();
        Map<String, String> propertymappings = bitlinkUpdate.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('createdBy', propertymappings.get('created_by'));
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('customBitlinks', propertymappings.get('custom_bitlinks'));
        System.assertEquals('launchpadIds', propertymappings.get('launchpad_ids'));
        System.assertEquals('isDeleted', propertymappings.get('is_deleted'));
        System.assertEquals('campaignIds', propertymappings.get('campaign_ids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkUpdate bitlinkUpdate = new OASBitlinkUpdate();
        System.assertEquals(new List<String>(), bitlinkUpdate.customBitlinks);
        System.assertEquals(new List<String>(), bitlinkUpdate.tags);
        System.assertEquals(new List<String>(), bitlinkUpdate.launchpadIds);
        System.assertEquals(new List<OASDeeplinkRule>(), bitlinkUpdate.deeplinks);
        System.assertEquals(new List<String>(), bitlinkUpdate.campaignIds);
        System.assertEquals(null, bitlinkUpdate.link);
        System.assertEquals(null, bitlinkUpdate.id);
        System.assertEquals(null, bitlinkUpdate.longUrl);
        System.assertEquals(null, bitlinkUpdate.title);
        System.assertEquals(null, bitlinkUpdate.archived);
        System.assertEquals(null, bitlinkUpdate.createdAt);
        System.assertEquals(null, bitlinkUpdate.createdBy);
        System.assertEquals(null, bitlinkUpdate.clientId);
        System.assertEquals(null, bitlinkUpdate.isDeleted);
    }
}