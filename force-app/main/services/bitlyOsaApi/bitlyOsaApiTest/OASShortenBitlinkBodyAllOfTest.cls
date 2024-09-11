@isTest
private class OASShortenBitlinkBodyAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = shortenBitlinkBodyAllOf1;
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf3 = new OASShortenBitlinkBodyAllOf();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf4 = shortenBitlinkBodyAllOf3;

        System.assert(shortenBitlinkBodyAllOf1.equals(shortenBitlinkBodyAllOf2));
        System.assert(shortenBitlinkBodyAllOf2.equals(shortenBitlinkBodyAllOf1));
        System.assert(shortenBitlinkBodyAllOf1.equals(shortenBitlinkBodyAllOf1));
        System.assert(shortenBitlinkBodyAllOf3.equals(shortenBitlinkBodyAllOf4));
        System.assert(shortenBitlinkBodyAllOf4.equals(shortenBitlinkBodyAllOf3));
        System.assert(shortenBitlinkBodyAllOf3.equals(shortenBitlinkBodyAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf3 = new OASShortenBitlinkBodyAllOf();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf4 = new OASShortenBitlinkBodyAllOf();

        System.assert(shortenBitlinkBodyAllOf1.equals(shortenBitlinkBodyAllOf2));
        System.assert(shortenBitlinkBodyAllOf2.equals(shortenBitlinkBodyAllOf1));
        System.assert(shortenBitlinkBodyAllOf3.equals(shortenBitlinkBodyAllOf4));
        System.assert(shortenBitlinkBodyAllOf4.equals(shortenBitlinkBodyAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = new OASShortenBitlinkBodyAllOf();

        System.assertEquals(false, shortenBitlinkBodyAllOf1.equals('foo'));
        System.assertEquals(false, shortenBitlinkBodyAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = new OASShortenBitlinkBodyAllOf();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf3;

        System.assertEquals(false, shortenBitlinkBodyAllOf1.equals(shortenBitlinkBodyAllOf3));
        System.assertEquals(false, shortenBitlinkBodyAllOf2.equals(shortenBitlinkBodyAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = new OASShortenBitlinkBodyAllOf();

        System.assertEquals(shortenBitlinkBodyAllOf1.hashCode(), shortenBitlinkBodyAllOf1.hashCode());
        System.assertEquals(shortenBitlinkBodyAllOf2.hashCode(), shortenBitlinkBodyAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf1 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf2 = OASShortenBitlinkBodyAllOf.getExample();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf3 = new OASShortenBitlinkBodyAllOf();
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf4 = new OASShortenBitlinkBodyAllOf();

        System.assert(shortenBitlinkBodyAllOf1.equals(shortenBitlinkBodyAllOf2));
        System.assert(shortenBitlinkBodyAllOf3.equals(shortenBitlinkBodyAllOf4));
        System.assertEquals(shortenBitlinkBodyAllOf1.hashCode(), shortenBitlinkBodyAllOf2.hashCode());
        System.assertEquals(shortenBitlinkBodyAllOf3.hashCode(), shortenBitlinkBodyAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf = new OASShortenBitlinkBodyAllOf();
        Map<String, String> propertymappings = shortenBitlinkBodyAllOf.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('customBitlinks', propertymappings.get('custom_bitlinks'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASShortenBitlinkBodyAllOf shortenBitlinkBodyAllOf = new OASShortenBitlinkBodyAllOf();
        System.assertEquals(new List<String>(), shortenBitlinkBodyAllOf.customBitlinks);
        System.assertEquals(new List<String>(), shortenBitlinkBodyAllOf.tags);
        System.assertEquals(new List<OASDeeplinkRule>(), shortenBitlinkBodyAllOf.deeplinks);
        System.assertEquals(null, shortenBitlinkBodyAllOf.link);
        System.assertEquals(null, shortenBitlinkBodyAllOf.id);
        System.assertEquals(null, shortenBitlinkBodyAllOf.longUrl);
        System.assertEquals(null, shortenBitlinkBodyAllOf.archived);
        System.assertEquals(null, shortenBitlinkBodyAllOf.createdAt);
    }
}