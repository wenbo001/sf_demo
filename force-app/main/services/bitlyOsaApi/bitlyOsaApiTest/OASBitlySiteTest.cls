@isTest
private class OASBitlySiteTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = bitlySite1;
        OASBitlySite bitlySite3 = new OASBitlySite();
        OASBitlySite bitlySite4 = bitlySite3;

        System.assert(bitlySite1.equals(bitlySite2));
        System.assert(bitlySite2.equals(bitlySite1));
        System.assert(bitlySite1.equals(bitlySite1));
        System.assert(bitlySite3.equals(bitlySite4));
        System.assert(bitlySite4.equals(bitlySite3));
        System.assert(bitlySite3.equals(bitlySite3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = OASBitlySite.getExample();
        OASBitlySite bitlySite3 = new OASBitlySite();
        OASBitlySite bitlySite4 = new OASBitlySite();

        System.assert(bitlySite1.equals(bitlySite2));
        System.assert(bitlySite2.equals(bitlySite1));
        System.assert(bitlySite3.equals(bitlySite4));
        System.assert(bitlySite4.equals(bitlySite3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = new OASBitlySite();

        System.assertEquals(false, bitlySite1.equals('foo'));
        System.assertEquals(false, bitlySite2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = new OASBitlySite();
        OASBitlySite bitlySite3;

        System.assertEquals(false, bitlySite1.equals(bitlySite3));
        System.assertEquals(false, bitlySite2.equals(bitlySite3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = new OASBitlySite();

        System.assertEquals(bitlySite1.hashCode(), bitlySite1.hashCode());
        System.assertEquals(bitlySite2.hashCode(), bitlySite2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySite bitlySite1 = OASBitlySite.getExample();
        OASBitlySite bitlySite2 = OASBitlySite.getExample();
        OASBitlySite bitlySite3 = new OASBitlySite();
        OASBitlySite bitlySite4 = new OASBitlySite();

        System.assert(bitlySite1.equals(bitlySite2));
        System.assert(bitlySite3.equals(bitlySite4));
        System.assertEquals(bitlySite1.hashCode(), bitlySite2.hashCode());
        System.assertEquals(bitlySite3.hashCode(), bitlySite4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySite bitlySite = new OASBitlySite();
        Map<String, String> propertymappings = bitlySite.getPropertyMappings();
        System.assertEquals('siteGuid', propertymappings.get('site_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('isEdited', propertymappings.get('is_edited'));
        System.assertEquals('buttonCount', propertymappings.get('button_count'));
        System.assertEquals('lastPublished', propertymappings.get('last_published'));
    }
}