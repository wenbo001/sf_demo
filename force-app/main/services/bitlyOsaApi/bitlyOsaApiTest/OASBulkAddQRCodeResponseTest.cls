@isTest
private class OASBulkAddQRCodeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = bulkAddQRCodeResponse1;
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse3 = new OASBulkAddQRCodeResponse();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse4 = bulkAddQRCodeResponse3;

        System.assert(bulkAddQRCodeResponse1.equals(bulkAddQRCodeResponse2));
        System.assert(bulkAddQRCodeResponse2.equals(bulkAddQRCodeResponse1));
        System.assert(bulkAddQRCodeResponse1.equals(bulkAddQRCodeResponse1));
        System.assert(bulkAddQRCodeResponse3.equals(bulkAddQRCodeResponse4));
        System.assert(bulkAddQRCodeResponse4.equals(bulkAddQRCodeResponse3));
        System.assert(bulkAddQRCodeResponse3.equals(bulkAddQRCodeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse3 = new OASBulkAddQRCodeResponse();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse4 = new OASBulkAddQRCodeResponse();

        System.assert(bulkAddQRCodeResponse1.equals(bulkAddQRCodeResponse2));
        System.assert(bulkAddQRCodeResponse2.equals(bulkAddQRCodeResponse1));
        System.assert(bulkAddQRCodeResponse3.equals(bulkAddQRCodeResponse4));
        System.assert(bulkAddQRCodeResponse4.equals(bulkAddQRCodeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = new OASBulkAddQRCodeResponse();

        System.assertEquals(false, bulkAddQRCodeResponse1.equals('foo'));
        System.assertEquals(false, bulkAddQRCodeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = new OASBulkAddQRCodeResponse();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse3;

        System.assertEquals(false, bulkAddQRCodeResponse1.equals(bulkAddQRCodeResponse3));
        System.assertEquals(false, bulkAddQRCodeResponse2.equals(bulkAddQRCodeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = new OASBulkAddQRCodeResponse();

        System.assertEquals(bulkAddQRCodeResponse1.hashCode(), bulkAddQRCodeResponse1.hashCode());
        System.assertEquals(bulkAddQRCodeResponse2.hashCode(), bulkAddQRCodeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse1 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse2 = OASBulkAddQRCodeResponse.getExample();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse3 = new OASBulkAddQRCodeResponse();
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse4 = new OASBulkAddQRCodeResponse();

        System.assert(bulkAddQRCodeResponse1.equals(bulkAddQRCodeResponse2));
        System.assert(bulkAddQRCodeResponse3.equals(bulkAddQRCodeResponse4));
        System.assertEquals(bulkAddQRCodeResponse1.hashCode(), bulkAddQRCodeResponse2.hashCode());
        System.assertEquals(bulkAddQRCodeResponse3.hashCode(), bulkAddQRCodeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkAddQRCodeResponse bulkAddQRCodeResponse = new OASBulkAddQRCodeResponse();
        Map<String, String> propertymappings = bulkAddQRCodeResponse.getPropertyMappings();
        System.assertEquals('csvFormatFailures', propertymappings.get('csv_format_failures'));
        System.assertEquals('qrCodeSaveFailures', propertymappings.get('qr_code_save_failures'));
        System.assertEquals('keywordFailures', propertymappings.get('keyword_failures'));
    }
}