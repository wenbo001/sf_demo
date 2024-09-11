@isTest
private class OASBulkUploadDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = bulkUploadData1;
        OASBulkUploadData bulkUploadData3 = new OASBulkUploadData();
        OASBulkUploadData bulkUploadData4 = bulkUploadData3;

        System.assert(bulkUploadData1.equals(bulkUploadData2));
        System.assert(bulkUploadData2.equals(bulkUploadData1));
        System.assert(bulkUploadData1.equals(bulkUploadData1));
        System.assert(bulkUploadData3.equals(bulkUploadData4));
        System.assert(bulkUploadData4.equals(bulkUploadData3));
        System.assert(bulkUploadData3.equals(bulkUploadData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData3 = new OASBulkUploadData();
        OASBulkUploadData bulkUploadData4 = new OASBulkUploadData();

        System.assert(bulkUploadData1.equals(bulkUploadData2));
        System.assert(bulkUploadData2.equals(bulkUploadData1));
        System.assert(bulkUploadData3.equals(bulkUploadData4));
        System.assert(bulkUploadData4.equals(bulkUploadData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = new OASBulkUploadData();

        System.assertEquals(false, bulkUploadData1.equals('foo'));
        System.assertEquals(false, bulkUploadData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = new OASBulkUploadData();
        OASBulkUploadData bulkUploadData3;

        System.assertEquals(false, bulkUploadData1.equals(bulkUploadData3));
        System.assertEquals(false, bulkUploadData2.equals(bulkUploadData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = new OASBulkUploadData();

        System.assertEquals(bulkUploadData1.hashCode(), bulkUploadData1.hashCode());
        System.assertEquals(bulkUploadData2.hashCode(), bulkUploadData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUploadData bulkUploadData1 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData2 = OASBulkUploadData.getExample();
        OASBulkUploadData bulkUploadData3 = new OASBulkUploadData();
        OASBulkUploadData bulkUploadData4 = new OASBulkUploadData();

        System.assert(bulkUploadData1.equals(bulkUploadData2));
        System.assert(bulkUploadData3.equals(bulkUploadData4));
        System.assertEquals(bulkUploadData1.hashCode(), bulkUploadData2.hashCode());
        System.assertEquals(bulkUploadData3.hashCode(), bulkUploadData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkUploadData bulkUploadData = new OASBulkUploadData();
        Map<String, String> propertymappings = bulkUploadData.getPropertyMappings();
        System.assertEquals('uploadUrl', propertymappings.get('upload_url'));
    }
}