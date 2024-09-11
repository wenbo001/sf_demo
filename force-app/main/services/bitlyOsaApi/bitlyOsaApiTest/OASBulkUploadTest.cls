@isTest
private class OASBulkUploadTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = bulkUpload1;
        OASBulkUpload bulkUpload3 = new OASBulkUpload();
        OASBulkUpload bulkUpload4 = bulkUpload3;

        System.assert(bulkUpload1.equals(bulkUpload2));
        System.assert(bulkUpload2.equals(bulkUpload1));
        System.assert(bulkUpload1.equals(bulkUpload1));
        System.assert(bulkUpload3.equals(bulkUpload4));
        System.assert(bulkUpload4.equals(bulkUpload3));
        System.assert(bulkUpload3.equals(bulkUpload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload3 = new OASBulkUpload();
        OASBulkUpload bulkUpload4 = new OASBulkUpload();

        System.assert(bulkUpload1.equals(bulkUpload2));
        System.assert(bulkUpload2.equals(bulkUpload1));
        System.assert(bulkUpload3.equals(bulkUpload4));
        System.assert(bulkUpload4.equals(bulkUpload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = new OASBulkUpload();

        System.assertEquals(false, bulkUpload1.equals('foo'));
        System.assertEquals(false, bulkUpload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = new OASBulkUpload();
        OASBulkUpload bulkUpload3;

        System.assertEquals(false, bulkUpload1.equals(bulkUpload3));
        System.assertEquals(false, bulkUpload2.equals(bulkUpload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = new OASBulkUpload();

        System.assertEquals(bulkUpload1.hashCode(), bulkUpload1.hashCode());
        System.assertEquals(bulkUpload2.hashCode(), bulkUpload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUpload bulkUpload1 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload2 = OASBulkUpload.getExample();
        OASBulkUpload bulkUpload3 = new OASBulkUpload();
        OASBulkUpload bulkUpload4 = new OASBulkUpload();

        System.assert(bulkUpload1.equals(bulkUpload2));
        System.assert(bulkUpload3.equals(bulkUpload4));
        System.assertEquals(bulkUpload1.hashCode(), bulkUpload2.hashCode());
        System.assertEquals(bulkUpload3.hashCode(), bulkUpload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkUpload bulkUpload = new OASBulkUpload();
        Map<String, String> propertymappings = bulkUpload.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('reportUrl', propertymappings.get('report_url'));
        System.assertEquals('uploadedBy', propertymappings.get('uploaded_by'));
    }
}