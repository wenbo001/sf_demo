@isTest
private class OASBulkUploadsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = bulkUploads1;
        OASBulkUploads bulkUploads3 = new OASBulkUploads();
        OASBulkUploads bulkUploads4 = bulkUploads3;

        System.assert(bulkUploads1.equals(bulkUploads2));
        System.assert(bulkUploads2.equals(bulkUploads1));
        System.assert(bulkUploads1.equals(bulkUploads1));
        System.assert(bulkUploads3.equals(bulkUploads4));
        System.assert(bulkUploads4.equals(bulkUploads3));
        System.assert(bulkUploads3.equals(bulkUploads3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads3 = new OASBulkUploads();
        OASBulkUploads bulkUploads4 = new OASBulkUploads();

        System.assert(bulkUploads1.equals(bulkUploads2));
        System.assert(bulkUploads2.equals(bulkUploads1));
        System.assert(bulkUploads3.equals(bulkUploads4));
        System.assert(bulkUploads4.equals(bulkUploads3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = new OASBulkUploads();

        System.assertEquals(false, bulkUploads1.equals('foo'));
        System.assertEquals(false, bulkUploads2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = new OASBulkUploads();
        OASBulkUploads bulkUploads3;

        System.assertEquals(false, bulkUploads1.equals(bulkUploads3));
        System.assertEquals(false, bulkUploads2.equals(bulkUploads3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = new OASBulkUploads();

        System.assertEquals(bulkUploads1.hashCode(), bulkUploads1.hashCode());
        System.assertEquals(bulkUploads2.hashCode(), bulkUploads2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUploads bulkUploads1 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads2 = OASBulkUploads.getExample();
        OASBulkUploads bulkUploads3 = new OASBulkUploads();
        OASBulkUploads bulkUploads4 = new OASBulkUploads();

        System.assert(bulkUploads1.equals(bulkUploads2));
        System.assert(bulkUploads3.equals(bulkUploads4));
        System.assertEquals(bulkUploads1.hashCode(), bulkUploads2.hashCode());
        System.assertEquals(bulkUploads3.hashCode(), bulkUploads4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBulkUploads bulkUploads = new OASBulkUploads();
        System.assertEquals(new List<OASBulkUpload>(), bulkUploads.uploads);
    }
}