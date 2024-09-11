@isTest
private class OASAddBitlinkResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = addBitlinkResult1;
        OASAddBitlinkResult addBitlinkResult3 = new OASAddBitlinkResult();
        OASAddBitlinkResult addBitlinkResult4 = addBitlinkResult3;

        System.assert(addBitlinkResult1.equals(addBitlinkResult2));
        System.assert(addBitlinkResult2.equals(addBitlinkResult1));
        System.assert(addBitlinkResult1.equals(addBitlinkResult1));
        System.assert(addBitlinkResult3.equals(addBitlinkResult4));
        System.assert(addBitlinkResult4.equals(addBitlinkResult3));
        System.assert(addBitlinkResult3.equals(addBitlinkResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult3 = new OASAddBitlinkResult();
        OASAddBitlinkResult addBitlinkResult4 = new OASAddBitlinkResult();

        System.assert(addBitlinkResult1.equals(addBitlinkResult2));
        System.assert(addBitlinkResult2.equals(addBitlinkResult1));
        System.assert(addBitlinkResult3.equals(addBitlinkResult4));
        System.assert(addBitlinkResult4.equals(addBitlinkResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = new OASAddBitlinkResult();

        System.assertEquals(false, addBitlinkResult1.equals('foo'));
        System.assertEquals(false, addBitlinkResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = new OASAddBitlinkResult();
        OASAddBitlinkResult addBitlinkResult3;

        System.assertEquals(false, addBitlinkResult1.equals(addBitlinkResult3));
        System.assertEquals(false, addBitlinkResult2.equals(addBitlinkResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = new OASAddBitlinkResult();

        System.assertEquals(addBitlinkResult1.hashCode(), addBitlinkResult1.hashCode());
        System.assertEquals(addBitlinkResult2.hashCode(), addBitlinkResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddBitlinkResult addBitlinkResult1 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult2 = OASAddBitlinkResult.getExample();
        OASAddBitlinkResult addBitlinkResult3 = new OASAddBitlinkResult();
        OASAddBitlinkResult addBitlinkResult4 = new OASAddBitlinkResult();

        System.assert(addBitlinkResult1.equals(addBitlinkResult2));
        System.assert(addBitlinkResult3.equals(addBitlinkResult4));
        System.assertEquals(addBitlinkResult1.hashCode(), addBitlinkResult2.hashCode());
        System.assertEquals(addBitlinkResult3.hashCode(), addBitlinkResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddBitlinkResult addBitlinkResult = new OASAddBitlinkResult();
        Map<String, String> propertymappings = addBitlinkResult.getPropertyMappings();
        System.assertEquals('channelGuid', propertymappings.get('channel_guid'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('keywordLink', propertymappings.get('keyword_link'));
        System.assertEquals('newChannelBitlink', propertymappings.get('new_channel_bitlink'));
        System.assertEquals('bitlinkCreatedTs', propertymappings.get('bitlink_created_ts'));
        System.assertEquals('shortenLinkError', propertymappings.get('shorten_link_error'));
        System.assertEquals('channelBitlinkError', propertymappings.get('channel_bitlink_error'));
        System.assertEquals('otherLinkError', propertymappings.get('other_link_error'));
    }
}