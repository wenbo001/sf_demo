@isTest
private class OASBulkShortenUploadTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = bulkShortenUpload1;
        OASBulkShortenUpload bulkShortenUpload3 = new OASBulkShortenUpload();
        OASBulkShortenUpload bulkShortenUpload4 = bulkShortenUpload3;

        System.assert(bulkShortenUpload1.equals(bulkShortenUpload2));
        System.assert(bulkShortenUpload2.equals(bulkShortenUpload1));
        System.assert(bulkShortenUpload1.equals(bulkShortenUpload1));
        System.assert(bulkShortenUpload3.equals(bulkShortenUpload4));
        System.assert(bulkShortenUpload4.equals(bulkShortenUpload3));
        System.assert(bulkShortenUpload3.equals(bulkShortenUpload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload3 = new OASBulkShortenUpload();
        OASBulkShortenUpload bulkShortenUpload4 = new OASBulkShortenUpload();

        System.assert(bulkShortenUpload1.equals(bulkShortenUpload2));
        System.assert(bulkShortenUpload2.equals(bulkShortenUpload1));
        System.assert(bulkShortenUpload3.equals(bulkShortenUpload4));
        System.assert(bulkShortenUpload4.equals(bulkShortenUpload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = new OASBulkShortenUpload();

        System.assertEquals(false, bulkShortenUpload1.equals('foo'));
        System.assertEquals(false, bulkShortenUpload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = new OASBulkShortenUpload();
        OASBulkShortenUpload bulkShortenUpload3;

        System.assertEquals(false, bulkShortenUpload1.equals(bulkShortenUpload3));
        System.assertEquals(false, bulkShortenUpload2.equals(bulkShortenUpload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = new OASBulkShortenUpload();

        System.assertEquals(bulkShortenUpload1.hashCode(), bulkShortenUpload1.hashCode());
        System.assertEquals(bulkShortenUpload2.hashCode(), bulkShortenUpload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkShortenUpload bulkShortenUpload1 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload2 = OASBulkShortenUpload.getExample();
        OASBulkShortenUpload bulkShortenUpload3 = new OASBulkShortenUpload();
        OASBulkShortenUpload bulkShortenUpload4 = new OASBulkShortenUpload();

        System.assert(bulkShortenUpload1.equals(bulkShortenUpload2));
        System.assert(bulkShortenUpload3.equals(bulkShortenUpload4));
        System.assertEquals(bulkShortenUpload1.hashCode(), bulkShortenUpload2.hashCode());
        System.assertEquals(bulkShortenUpload3.hashCode(), bulkShortenUpload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkShortenUpload bulkShortenUpload = new OASBulkShortenUpload();
        Map<String, String> propertymappings = bulkShortenUpload.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('reportUrl', propertymappings.get('report_url'));
        System.assertEquals('uploadedBy', propertymappings.get('uploaded_by'));
    }
}