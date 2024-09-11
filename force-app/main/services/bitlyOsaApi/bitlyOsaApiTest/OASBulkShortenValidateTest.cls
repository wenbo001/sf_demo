@isTest
private class OASBulkShortenValidateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = bulkShortenValidate1;
        OASBulkShortenValidate bulkShortenValidate3 = new OASBulkShortenValidate();
        OASBulkShortenValidate bulkShortenValidate4 = bulkShortenValidate3;

        System.assert(bulkShortenValidate1.equals(bulkShortenValidate2));
        System.assert(bulkShortenValidate2.equals(bulkShortenValidate1));
        System.assert(bulkShortenValidate1.equals(bulkShortenValidate1));
        System.assert(bulkShortenValidate3.equals(bulkShortenValidate4));
        System.assert(bulkShortenValidate4.equals(bulkShortenValidate3));
        System.assert(bulkShortenValidate3.equals(bulkShortenValidate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate3 = new OASBulkShortenValidate();
        OASBulkShortenValidate bulkShortenValidate4 = new OASBulkShortenValidate();

        System.assert(bulkShortenValidate1.equals(bulkShortenValidate2));
        System.assert(bulkShortenValidate2.equals(bulkShortenValidate1));
        System.assert(bulkShortenValidate3.equals(bulkShortenValidate4));
        System.assert(bulkShortenValidate4.equals(bulkShortenValidate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = new OASBulkShortenValidate();

        System.assertEquals(false, bulkShortenValidate1.equals('foo'));
        System.assertEquals(false, bulkShortenValidate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = new OASBulkShortenValidate();
        OASBulkShortenValidate bulkShortenValidate3;

        System.assertEquals(false, bulkShortenValidate1.equals(bulkShortenValidate3));
        System.assertEquals(false, bulkShortenValidate2.equals(bulkShortenValidate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = new OASBulkShortenValidate();

        System.assertEquals(bulkShortenValidate1.hashCode(), bulkShortenValidate1.hashCode());
        System.assertEquals(bulkShortenValidate2.hashCode(), bulkShortenValidate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkShortenValidate bulkShortenValidate1 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate2 = OASBulkShortenValidate.getExample();
        OASBulkShortenValidate bulkShortenValidate3 = new OASBulkShortenValidate();
        OASBulkShortenValidate bulkShortenValidate4 = new OASBulkShortenValidate();

        System.assert(bulkShortenValidate1.equals(bulkShortenValidate2));
        System.assert(bulkShortenValidate3.equals(bulkShortenValidate4));
        System.assertEquals(bulkShortenValidate1.hashCode(), bulkShortenValidate2.hashCode());
        System.assertEquals(bulkShortenValidate3.hashCode(), bulkShortenValidate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkShortenValidate bulkShortenValidate = new OASBulkShortenValidate();
        Map<String, String> propertymappings = bulkShortenValidate.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('uploadType', propertymappings.get('upload_type'));
        System.assertEquals('bitlyBrand', propertymappings.get('bitly_brand'));
    }
}