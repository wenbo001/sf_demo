@isTest
private class OASBitlySiteAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = bitlySiteAllOf1;
        OASBitlySiteAllOf bitlySiteAllOf3 = new OASBitlySiteAllOf();
        OASBitlySiteAllOf bitlySiteAllOf4 = bitlySiteAllOf3;

        System.assert(bitlySiteAllOf1.equals(bitlySiteAllOf2));
        System.assert(bitlySiteAllOf2.equals(bitlySiteAllOf1));
        System.assert(bitlySiteAllOf1.equals(bitlySiteAllOf1));
        System.assert(bitlySiteAllOf3.equals(bitlySiteAllOf4));
        System.assert(bitlySiteAllOf4.equals(bitlySiteAllOf3));
        System.assert(bitlySiteAllOf3.equals(bitlySiteAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf3 = new OASBitlySiteAllOf();
        OASBitlySiteAllOf bitlySiteAllOf4 = new OASBitlySiteAllOf();

        System.assert(bitlySiteAllOf1.equals(bitlySiteAllOf2));
        System.assert(bitlySiteAllOf2.equals(bitlySiteAllOf1));
        System.assert(bitlySiteAllOf3.equals(bitlySiteAllOf4));
        System.assert(bitlySiteAllOf4.equals(bitlySiteAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = new OASBitlySiteAllOf();

        System.assertEquals(false, bitlySiteAllOf1.equals('foo'));
        System.assertEquals(false, bitlySiteAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = new OASBitlySiteAllOf();
        OASBitlySiteAllOf bitlySiteAllOf3;

        System.assertEquals(false, bitlySiteAllOf1.equals(bitlySiteAllOf3));
        System.assertEquals(false, bitlySiteAllOf2.equals(bitlySiteAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = new OASBitlySiteAllOf();

        System.assertEquals(bitlySiteAllOf1.hashCode(), bitlySiteAllOf1.hashCode());
        System.assertEquals(bitlySiteAllOf2.hashCode(), bitlySiteAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySiteAllOf bitlySiteAllOf1 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf2 = OASBitlySiteAllOf.getExample();
        OASBitlySiteAllOf bitlySiteAllOf3 = new OASBitlySiteAllOf();
        OASBitlySiteAllOf bitlySiteAllOf4 = new OASBitlySiteAllOf();

        System.assert(bitlySiteAllOf1.equals(bitlySiteAllOf2));
        System.assert(bitlySiteAllOf3.equals(bitlySiteAllOf4));
        System.assertEquals(bitlySiteAllOf1.hashCode(), bitlySiteAllOf2.hashCode());
        System.assertEquals(bitlySiteAllOf3.hashCode(), bitlySiteAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySiteAllOf bitlySiteAllOf = new OASBitlySiteAllOf();
        Map<String, String> propertymappings = bitlySiteAllOf.getPropertyMappings();
        System.assertEquals('siteGuid', propertymappings.get('site_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('isEdited', propertymappings.get('is_edited'));
        System.assertEquals('buttonCount', propertymappings.get('button_count'));
        System.assertEquals('lastPublished', propertymappings.get('last_published'));
    }
}