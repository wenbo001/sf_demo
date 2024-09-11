@isTest
private class OASBulkShortenUploadDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = bulkShortenUploadData1;
        OASBulkShortenUploadData bulkShortenUploadData3 = new OASBulkShortenUploadData();
        OASBulkShortenUploadData bulkShortenUploadData4 = bulkShortenUploadData3;

        System.assert(bulkShortenUploadData1.equals(bulkShortenUploadData2));
        System.assert(bulkShortenUploadData2.equals(bulkShortenUploadData1));
        System.assert(bulkShortenUploadData1.equals(bulkShortenUploadData1));
        System.assert(bulkShortenUploadData3.equals(bulkShortenUploadData4));
        System.assert(bulkShortenUploadData4.equals(bulkShortenUploadData3));
        System.assert(bulkShortenUploadData3.equals(bulkShortenUploadData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData3 = new OASBulkShortenUploadData();
        OASBulkShortenUploadData bulkShortenUploadData4 = new OASBulkShortenUploadData();

        System.assert(bulkShortenUploadData1.equals(bulkShortenUploadData2));
        System.assert(bulkShortenUploadData2.equals(bulkShortenUploadData1));
        System.assert(bulkShortenUploadData3.equals(bulkShortenUploadData4));
        System.assert(bulkShortenUploadData4.equals(bulkShortenUploadData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = new OASBulkShortenUploadData();

        System.assertEquals(false, bulkShortenUploadData1.equals('foo'));
        System.assertEquals(false, bulkShortenUploadData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = new OASBulkShortenUploadData();
        OASBulkShortenUploadData bulkShortenUploadData3;

        System.assertEquals(false, bulkShortenUploadData1.equals(bulkShortenUploadData3));
        System.assertEquals(false, bulkShortenUploadData2.equals(bulkShortenUploadData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = new OASBulkShortenUploadData();

        System.assertEquals(bulkShortenUploadData1.hashCode(), bulkShortenUploadData1.hashCode());
        System.assertEquals(bulkShortenUploadData2.hashCode(), bulkShortenUploadData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkShortenUploadData bulkShortenUploadData1 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData2 = OASBulkShortenUploadData.getExample();
        OASBulkShortenUploadData bulkShortenUploadData3 = new OASBulkShortenUploadData();
        OASBulkShortenUploadData bulkShortenUploadData4 = new OASBulkShortenUploadData();

        System.assert(bulkShortenUploadData1.equals(bulkShortenUploadData2));
        System.assert(bulkShortenUploadData3.equals(bulkShortenUploadData4));
        System.assertEquals(bulkShortenUploadData1.hashCode(), bulkShortenUploadData2.hashCode());
        System.assertEquals(bulkShortenUploadData3.hashCode(), bulkShortenUploadData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkShortenUploadData bulkShortenUploadData = new OASBulkShortenUploadData();
        Map<String, String> propertymappings = bulkShortenUploadData.getPropertyMappings();
        System.assertEquals('uploadUrl', propertymappings.get('upload_url'));
    }
}