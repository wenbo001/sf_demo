@isTest
private class OASBulkAddResponseDataTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = bulkAddResponseData1;
        OASBulkAddResponseData bulkAddResponseData3 = new OASBulkAddResponseData();
        OASBulkAddResponseData bulkAddResponseData4 = bulkAddResponseData3;

        System.assert(bulkAddResponseData1.equals(bulkAddResponseData2));
        System.assert(bulkAddResponseData2.equals(bulkAddResponseData1));
        System.assert(bulkAddResponseData1.equals(bulkAddResponseData1));
        System.assert(bulkAddResponseData3.equals(bulkAddResponseData4));
        System.assert(bulkAddResponseData4.equals(bulkAddResponseData3));
        System.assert(bulkAddResponseData3.equals(bulkAddResponseData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData3 = new OASBulkAddResponseData();
        OASBulkAddResponseData bulkAddResponseData4 = new OASBulkAddResponseData();

        System.assert(bulkAddResponseData1.equals(bulkAddResponseData2));
        System.assert(bulkAddResponseData2.equals(bulkAddResponseData1));
        System.assert(bulkAddResponseData3.equals(bulkAddResponseData4));
        System.assert(bulkAddResponseData4.equals(bulkAddResponseData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = new OASBulkAddResponseData();

        System.assertEquals(false, bulkAddResponseData1.equals('foo'));
        System.assertEquals(false, bulkAddResponseData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = new OASBulkAddResponseData();
        OASBulkAddResponseData bulkAddResponseData3;

        System.assertEquals(false, bulkAddResponseData1.equals(bulkAddResponseData3));
        System.assertEquals(false, bulkAddResponseData2.equals(bulkAddResponseData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = new OASBulkAddResponseData();

        System.assertEquals(bulkAddResponseData1.hashCode(), bulkAddResponseData1.hashCode());
        System.assertEquals(bulkAddResponseData2.hashCode(), bulkAddResponseData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkAddResponseData bulkAddResponseData1 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData2 = OASBulkAddResponseData.getExample();
        OASBulkAddResponseData bulkAddResponseData3 = new OASBulkAddResponseData();
        OASBulkAddResponseData bulkAddResponseData4 = new OASBulkAddResponseData();

        System.assert(bulkAddResponseData1.equals(bulkAddResponseData2));
        System.assert(bulkAddResponseData3.equals(bulkAddResponseData4));
        System.assertEquals(bulkAddResponseData1.hashCode(), bulkAddResponseData2.hashCode());
        System.assertEquals(bulkAddResponseData3.hashCode(), bulkAddResponseData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkAddResponseData bulkAddResponseData = new OASBulkAddResponseData();
        Map<String, String> propertymappings = bulkAddResponseData.getPropertyMappings();
        System.assertEquals('csvFormatFailures', propertymappings.get('csv_format_failures'));
        System.assertEquals('linkSaveFailures', propertymappings.get('link_save_failures'));
        System.assertEquals('keywordFailures', propertymappings.get('keyword_failures'));
        System.assertEquals('channelBitlinkFailures', propertymappings.get('channel_bitlink_failures'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBulkAddResponseData bulkAddResponseData = new OASBulkAddResponseData();
        System.assertEquals(new List<String>(), bulkAddResponseData.results);
        System.assertEquals(null, bulkAddResponseData.successes);
        System.assertEquals(null, bulkAddResponseData.csvFormatFailures);
        System.assertEquals(null, bulkAddResponseData.linkSaveFailures);
        System.assertEquals(null, bulkAddResponseData.keywordFailures);
        System.assertEquals(null, bulkAddResponseData.channelBitlinkFailures);
    }
}