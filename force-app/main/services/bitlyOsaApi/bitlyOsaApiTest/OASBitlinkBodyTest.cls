@isTest
private class OASBitlinkBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = bitlinkBody1;
        OASBitlinkBody bitlinkBody3 = new OASBitlinkBody();
        OASBitlinkBody bitlinkBody4 = bitlinkBody3;

        System.assert(bitlinkBody1.equals(bitlinkBody2));
        System.assert(bitlinkBody2.equals(bitlinkBody1));
        System.assert(bitlinkBody1.equals(bitlinkBody1));
        System.assert(bitlinkBody3.equals(bitlinkBody4));
        System.assert(bitlinkBody4.equals(bitlinkBody3));
        System.assert(bitlinkBody3.equals(bitlinkBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody3 = new OASBitlinkBody();
        OASBitlinkBody bitlinkBody4 = new OASBitlinkBody();

        System.assert(bitlinkBody1.equals(bitlinkBody2));
        System.assert(bitlinkBody2.equals(bitlinkBody1));
        System.assert(bitlinkBody3.equals(bitlinkBody4));
        System.assert(bitlinkBody4.equals(bitlinkBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = new OASBitlinkBody();

        System.assertEquals(false, bitlinkBody1.equals('foo'));
        System.assertEquals(false, bitlinkBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = new OASBitlinkBody();
        OASBitlinkBody bitlinkBody3;

        System.assertEquals(false, bitlinkBody1.equals(bitlinkBody3));
        System.assertEquals(false, bitlinkBody2.equals(bitlinkBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = new OASBitlinkBody();

        System.assertEquals(bitlinkBody1.hashCode(), bitlinkBody1.hashCode());
        System.assertEquals(bitlinkBody2.hashCode(), bitlinkBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkBody bitlinkBody1 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody2 = OASBitlinkBody.getExample();
        OASBitlinkBody bitlinkBody3 = new OASBitlinkBody();
        OASBitlinkBody bitlinkBody4 = new OASBitlinkBody();

        System.assert(bitlinkBody1.equals(bitlinkBody2));
        System.assert(bitlinkBody3.equals(bitlinkBody4));
        System.assertEquals(bitlinkBody1.hashCode(), bitlinkBody2.hashCode());
        System.assertEquals(bitlinkBody3.hashCode(), bitlinkBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkBody bitlinkBody = new OASBitlinkBody();
        Map<String, String> propertymappings = bitlinkBody.getPropertyMappings();
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
        OASBitlinkBody bitlinkBody = new OASBitlinkBody();
        System.assertEquals(new Map<String, String>(), bitlinkBody.references);
        System.assertEquals(new List<String>(), bitlinkBody.customBitlinks);
        System.assertEquals(new List<String>(), bitlinkBody.tags);
        System.assertEquals(new List<String>(), bitlinkBody.launchpadIds);
        System.assertEquals(new List<OASDeeplinkRule>(), bitlinkBody.deeplinks);
        System.assertEquals(new List<String>(), bitlinkBody.campaignIds);
        System.assertEquals(null, bitlinkBody.link);
        System.assertEquals(null, bitlinkBody.id);
        System.assertEquals(null, bitlinkBody.longUrl);
        System.assertEquals(null, bitlinkBody.title);
        System.assertEquals(null, bitlinkBody.archived);
        System.assertEquals(null, bitlinkBody.createdAt);
        System.assertEquals(null, bitlinkBody.createdBy);
        System.assertEquals(null, bitlinkBody.clientId);
        System.assertEquals(null, bitlinkBody.isDeleted);
    }
}