@isTest
private class OASFullShortenTest {
    @isTest
    private static void equalsSameInstance() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = fullShorten1;
        OASFullShorten fullShorten3 = new OASFullShorten();
        OASFullShorten fullShorten4 = fullShorten3;

        System.assert(fullShorten1.equals(fullShorten2));
        System.assert(fullShorten2.equals(fullShorten1));
        System.assert(fullShorten1.equals(fullShorten1));
        System.assert(fullShorten3.equals(fullShorten4));
        System.assert(fullShorten4.equals(fullShorten3));
        System.assert(fullShorten3.equals(fullShorten3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = OASFullShorten.getExample();
        OASFullShorten fullShorten3 = new OASFullShorten();
        OASFullShorten fullShorten4 = new OASFullShorten();

        System.assert(fullShorten1.equals(fullShorten2));
        System.assert(fullShorten2.equals(fullShorten1));
        System.assert(fullShorten3.equals(fullShorten4));
        System.assert(fullShorten4.equals(fullShorten3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = new OASFullShorten();

        System.assertEquals(false, fullShorten1.equals('foo'));
        System.assertEquals(false, fullShorten2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = new OASFullShorten();
        OASFullShorten fullShorten3;

        System.assertEquals(false, fullShorten1.equals(fullShorten3));
        System.assertEquals(false, fullShorten2.equals(fullShorten3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = new OASFullShorten();

        System.assertEquals(fullShorten1.hashCode(), fullShorten1.hashCode());
        System.assertEquals(fullShorten2.hashCode(), fullShorten2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFullShorten fullShorten1 = OASFullShorten.getExample();
        OASFullShorten fullShorten2 = OASFullShorten.getExample();
        OASFullShorten fullShorten3 = new OASFullShorten();
        OASFullShorten fullShorten4 = new OASFullShorten();

        System.assert(fullShorten1.equals(fullShorten2));
        System.assert(fullShorten3.equals(fullShorten4));
        System.assertEquals(fullShorten1.hashCode(), fullShorten2.hashCode());
        System.assertEquals(fullShorten3.hashCode(), fullShorten4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFullShorten fullShorten = new OASFullShorten();
        Map<String, String> propertymappings = fullShorten.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASFullShorten fullShorten = new OASFullShorten();
        System.assertEquals('bit.ly', fullShorten.domain);
        System.assertEquals(new List<String>(), fullShorten.tags);
        System.assertEquals(new List<OASDeeplink>(), fullShorten.deeplinks);
        System.assertEquals(null, fullShorten.longUrl);
        System.assertEquals(null, fullShorten.groupGuid);
        System.assertEquals(null, fullShorten.title);
    }
}