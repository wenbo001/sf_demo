@isTest
private class OASBulkShortenUploadsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = bulkShortenUploads1;
        OASBulkShortenUploads bulkShortenUploads3 = new OASBulkShortenUploads();
        OASBulkShortenUploads bulkShortenUploads4 = bulkShortenUploads3;

        System.assert(bulkShortenUploads1.equals(bulkShortenUploads2));
        System.assert(bulkShortenUploads2.equals(bulkShortenUploads1));
        System.assert(bulkShortenUploads1.equals(bulkShortenUploads1));
        System.assert(bulkShortenUploads3.equals(bulkShortenUploads4));
        System.assert(bulkShortenUploads4.equals(bulkShortenUploads3));
        System.assert(bulkShortenUploads3.equals(bulkShortenUploads3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads3 = new OASBulkShortenUploads();
        OASBulkShortenUploads bulkShortenUploads4 = new OASBulkShortenUploads();

        System.assert(bulkShortenUploads1.equals(bulkShortenUploads2));
        System.assert(bulkShortenUploads2.equals(bulkShortenUploads1));
        System.assert(bulkShortenUploads3.equals(bulkShortenUploads4));
        System.assert(bulkShortenUploads4.equals(bulkShortenUploads3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = new OASBulkShortenUploads();

        System.assertEquals(false, bulkShortenUploads1.equals('foo'));
        System.assertEquals(false, bulkShortenUploads2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = new OASBulkShortenUploads();
        OASBulkShortenUploads bulkShortenUploads3;

        System.assertEquals(false, bulkShortenUploads1.equals(bulkShortenUploads3));
        System.assertEquals(false, bulkShortenUploads2.equals(bulkShortenUploads3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = new OASBulkShortenUploads();

        System.assertEquals(bulkShortenUploads1.hashCode(), bulkShortenUploads1.hashCode());
        System.assertEquals(bulkShortenUploads2.hashCode(), bulkShortenUploads2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkShortenUploads bulkShortenUploads1 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads2 = OASBulkShortenUploads.getExample();
        OASBulkShortenUploads bulkShortenUploads3 = new OASBulkShortenUploads();
        OASBulkShortenUploads bulkShortenUploads4 = new OASBulkShortenUploads();

        System.assert(bulkShortenUploads1.equals(bulkShortenUploads2));
        System.assert(bulkShortenUploads3.equals(bulkShortenUploads4));
        System.assertEquals(bulkShortenUploads1.hashCode(), bulkShortenUploads2.hashCode());
        System.assertEquals(bulkShortenUploads3.hashCode(), bulkShortenUploads4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBulkShortenUploads bulkShortenUploads = new OASBulkShortenUploads();
        System.assertEquals(new List<OASBulkShortenUpload>(), bulkShortenUploads.uploads);
    }
}