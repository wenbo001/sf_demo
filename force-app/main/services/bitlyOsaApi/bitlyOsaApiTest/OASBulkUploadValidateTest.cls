@isTest
private class OASBulkUploadValidateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = bulkUploadValidate1;
        OASBulkUploadValidate bulkUploadValidate3 = new OASBulkUploadValidate();
        OASBulkUploadValidate bulkUploadValidate4 = bulkUploadValidate3;

        System.assert(bulkUploadValidate1.equals(bulkUploadValidate2));
        System.assert(bulkUploadValidate2.equals(bulkUploadValidate1));
        System.assert(bulkUploadValidate1.equals(bulkUploadValidate1));
        System.assert(bulkUploadValidate3.equals(bulkUploadValidate4));
        System.assert(bulkUploadValidate4.equals(bulkUploadValidate3));
        System.assert(bulkUploadValidate3.equals(bulkUploadValidate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate3 = new OASBulkUploadValidate();
        OASBulkUploadValidate bulkUploadValidate4 = new OASBulkUploadValidate();

        System.assert(bulkUploadValidate1.equals(bulkUploadValidate2));
        System.assert(bulkUploadValidate2.equals(bulkUploadValidate1));
        System.assert(bulkUploadValidate3.equals(bulkUploadValidate4));
        System.assert(bulkUploadValidate4.equals(bulkUploadValidate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = new OASBulkUploadValidate();

        System.assertEquals(false, bulkUploadValidate1.equals('foo'));
        System.assertEquals(false, bulkUploadValidate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = new OASBulkUploadValidate();
        OASBulkUploadValidate bulkUploadValidate3;

        System.assertEquals(false, bulkUploadValidate1.equals(bulkUploadValidate3));
        System.assertEquals(false, bulkUploadValidate2.equals(bulkUploadValidate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = new OASBulkUploadValidate();

        System.assertEquals(bulkUploadValidate1.hashCode(), bulkUploadValidate1.hashCode());
        System.assertEquals(bulkUploadValidate2.hashCode(), bulkUploadValidate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUploadValidate bulkUploadValidate1 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate2 = OASBulkUploadValidate.getExample();
        OASBulkUploadValidate bulkUploadValidate3 = new OASBulkUploadValidate();
        OASBulkUploadValidate bulkUploadValidate4 = new OASBulkUploadValidate();

        System.assert(bulkUploadValidate1.equals(bulkUploadValidate2));
        System.assert(bulkUploadValidate3.equals(bulkUploadValidate4));
        System.assertEquals(bulkUploadValidate1.hashCode(), bulkUploadValidate2.hashCode());
        System.assertEquals(bulkUploadValidate3.hashCode(), bulkUploadValidate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkUploadValidate bulkUploadValidate = new OASBulkUploadValidate();
        Map<String, String> propertymappings = bulkUploadValidate.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('uploadType', propertymappings.get('upload_type'));
        System.assertEquals('bitlyBrand', propertymappings.get('bitly_brand'));
    }
}