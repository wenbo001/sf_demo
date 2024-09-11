@isTest
private class OASShortenTest {
    @isTest
    private static void equalsSameInstance() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = shorten1;
        OASShorten shorten3 = new OASShorten();
        OASShorten shorten4 = shorten3;

        System.assert(shorten1.equals(shorten2));
        System.assert(shorten2.equals(shorten1));
        System.assert(shorten1.equals(shorten1));
        System.assert(shorten3.equals(shorten4));
        System.assert(shorten4.equals(shorten3));
        System.assert(shorten3.equals(shorten3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = OASShorten.getExample();
        OASShorten shorten3 = new OASShorten();
        OASShorten shorten4 = new OASShorten();

        System.assert(shorten1.equals(shorten2));
        System.assert(shorten2.equals(shorten1));
        System.assert(shorten3.equals(shorten4));
        System.assert(shorten4.equals(shorten3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = new OASShorten();

        System.assertEquals(false, shorten1.equals('foo'));
        System.assertEquals(false, shorten2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = new OASShorten();
        OASShorten shorten3;

        System.assertEquals(false, shorten1.equals(shorten3));
        System.assertEquals(false, shorten2.equals(shorten3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = new OASShorten();

        System.assertEquals(shorten1.hashCode(), shorten1.hashCode());
        System.assertEquals(shorten2.hashCode(), shorten2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShorten shorten1 = OASShorten.getExample();
        OASShorten shorten2 = OASShorten.getExample();
        OASShorten shorten3 = new OASShorten();
        OASShorten shorten4 = new OASShorten();

        System.assert(shorten1.equals(shorten2));
        System.assert(shorten3.equals(shorten4));
        System.assertEquals(shorten1.hashCode(), shorten2.hashCode());
        System.assertEquals(shorten3.hashCode(), shorten4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShorten shorten = new OASShorten();
        Map<String, String> propertymappings = shorten.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASShorten shorten = new OASShorten();
        System.assertEquals('bit.ly', shorten.domain);
        System.assertEquals(null, shorten.getLongUrl());
        System.assertEquals(null, shorten.getGroupGuid());
    }
}