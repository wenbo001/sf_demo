@isTest
private class OASShortenBitlinkBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = shortenBitlinkBody1;
        OASShortenBitlinkBody shortenBitlinkBody3 = new OASShortenBitlinkBody();
        OASShortenBitlinkBody shortenBitlinkBody4 = shortenBitlinkBody3;

        System.assert(shortenBitlinkBody1.equals(shortenBitlinkBody2));
        System.assert(shortenBitlinkBody2.equals(shortenBitlinkBody1));
        System.assert(shortenBitlinkBody1.equals(shortenBitlinkBody1));
        System.assert(shortenBitlinkBody3.equals(shortenBitlinkBody4));
        System.assert(shortenBitlinkBody4.equals(shortenBitlinkBody3));
        System.assert(shortenBitlinkBody3.equals(shortenBitlinkBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody3 = new OASShortenBitlinkBody();
        OASShortenBitlinkBody shortenBitlinkBody4 = new OASShortenBitlinkBody();

        System.assert(shortenBitlinkBody1.equals(shortenBitlinkBody2));
        System.assert(shortenBitlinkBody2.equals(shortenBitlinkBody1));
        System.assert(shortenBitlinkBody3.equals(shortenBitlinkBody4));
        System.assert(shortenBitlinkBody4.equals(shortenBitlinkBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = new OASShortenBitlinkBody();

        System.assertEquals(false, shortenBitlinkBody1.equals('foo'));
        System.assertEquals(false, shortenBitlinkBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = new OASShortenBitlinkBody();
        OASShortenBitlinkBody shortenBitlinkBody3;

        System.assertEquals(false, shortenBitlinkBody1.equals(shortenBitlinkBody3));
        System.assertEquals(false, shortenBitlinkBody2.equals(shortenBitlinkBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = new OASShortenBitlinkBody();

        System.assertEquals(shortenBitlinkBody1.hashCode(), shortenBitlinkBody1.hashCode());
        System.assertEquals(shortenBitlinkBody2.hashCode(), shortenBitlinkBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShortenBitlinkBody shortenBitlinkBody1 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody2 = OASShortenBitlinkBody.getExample();
        OASShortenBitlinkBody shortenBitlinkBody3 = new OASShortenBitlinkBody();
        OASShortenBitlinkBody shortenBitlinkBody4 = new OASShortenBitlinkBody();

        System.assert(shortenBitlinkBody1.equals(shortenBitlinkBody2));
        System.assert(shortenBitlinkBody3.equals(shortenBitlinkBody4));
        System.assertEquals(shortenBitlinkBody1.hashCode(), shortenBitlinkBody2.hashCode());
        System.assertEquals(shortenBitlinkBody3.hashCode(), shortenBitlinkBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShortenBitlinkBody shortenBitlinkBody = new OASShortenBitlinkBody();
        Map<String, String> propertymappings = shortenBitlinkBody.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('customBitlinks', propertymappings.get('custom_bitlinks'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASShortenBitlinkBody shortenBitlinkBody = new OASShortenBitlinkBody();
        System.assertEquals(new Map<String, String>(), shortenBitlinkBody.references);
        System.assertEquals(new List<String>(), shortenBitlinkBody.customBitlinks);
        System.assertEquals(new List<String>(), shortenBitlinkBody.tags);
        System.assertEquals(new List<OASDeeplinkRule>(), shortenBitlinkBody.deeplinks);
        System.assertEquals(null, shortenBitlinkBody.link);
        System.assertEquals(null, shortenBitlinkBody.id);
        System.assertEquals(null, shortenBitlinkBody.longUrl);
        System.assertEquals(null, shortenBitlinkBody.archived);
        System.assertEquals(null, shortenBitlinkBody.createdAt);
    }
}