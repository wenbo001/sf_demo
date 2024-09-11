@isTest
private class OASQRCodeFullPaginatedListResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = qrCodeFullPaginatedListResponse1;
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse3 = new OASQRCodeFullPaginatedListResponse();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse4 = qrCodeFullPaginatedListResponse3;

        System.assert(qrCodeFullPaginatedListResponse1.equals(qrCodeFullPaginatedListResponse2));
        System.assert(qrCodeFullPaginatedListResponse2.equals(qrCodeFullPaginatedListResponse1));
        System.assert(qrCodeFullPaginatedListResponse1.equals(qrCodeFullPaginatedListResponse1));
        System.assert(qrCodeFullPaginatedListResponse3.equals(qrCodeFullPaginatedListResponse4));
        System.assert(qrCodeFullPaginatedListResponse4.equals(qrCodeFullPaginatedListResponse3));
        System.assert(qrCodeFullPaginatedListResponse3.equals(qrCodeFullPaginatedListResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse3 = new OASQRCodeFullPaginatedListResponse();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse4 = new OASQRCodeFullPaginatedListResponse();

        System.assert(qrCodeFullPaginatedListResponse1.equals(qrCodeFullPaginatedListResponse2));
        System.assert(qrCodeFullPaginatedListResponse2.equals(qrCodeFullPaginatedListResponse1));
        System.assert(qrCodeFullPaginatedListResponse3.equals(qrCodeFullPaginatedListResponse4));
        System.assert(qrCodeFullPaginatedListResponse4.equals(qrCodeFullPaginatedListResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = new OASQRCodeFullPaginatedListResponse();

        System.assertEquals(false, qrCodeFullPaginatedListResponse1.equals('foo'));
        System.assertEquals(false, qrCodeFullPaginatedListResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = new OASQRCodeFullPaginatedListResponse();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse3;

        System.assertEquals(false, qrCodeFullPaginatedListResponse1.equals(qrCodeFullPaginatedListResponse3));
        System.assertEquals(false, qrCodeFullPaginatedListResponse2.equals(qrCodeFullPaginatedListResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = new OASQRCodeFullPaginatedListResponse();

        System.assertEquals(qrCodeFullPaginatedListResponse1.hashCode(), qrCodeFullPaginatedListResponse1.hashCode());
        System.assertEquals(qrCodeFullPaginatedListResponse2.hashCode(), qrCodeFullPaginatedListResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse1 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse2 = OASQRCodeFullPaginatedListResponse.getExample();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse3 = new OASQRCodeFullPaginatedListResponse();
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse4 = new OASQRCodeFullPaginatedListResponse();

        System.assert(qrCodeFullPaginatedListResponse1.equals(qrCodeFullPaginatedListResponse2));
        System.assert(qrCodeFullPaginatedListResponse3.equals(qrCodeFullPaginatedListResponse4));
        System.assertEquals(qrCodeFullPaginatedListResponse1.hashCode(), qrCodeFullPaginatedListResponse2.hashCode());
        System.assertEquals(qrCodeFullPaginatedListResponse3.hashCode(), qrCodeFullPaginatedListResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse = new OASQRCodeFullPaginatedListResponse();
        Map<String, String> propertymappings = qrCodeFullPaginatedListResponse.getPropertyMappings();
        System.assertEquals('qrCodes', propertymappings.get('qr_codes'));
        System.assertEquals('pageNumber', propertymappings.get('page_number'));
        System.assertEquals('pageSize', propertymappings.get('page_size'));
        System.assertEquals('totalCount', propertymappings.get('total_count'));
        System.assertEquals('currentCount', propertymappings.get('current_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeFullPaginatedListResponse qrCodeFullPaginatedListResponse = new OASQRCodeFullPaginatedListResponse();
        System.assertEquals(new List<OASQRCode>(), qrCodeFullPaginatedListResponse.qrCodes);
        System.assertEquals(null, qrCodeFullPaginatedListResponse.pagination);
        System.assertEquals(null, qrCodeFullPaginatedListResponse.pageNumber);
        System.assertEquals(null, qrCodeFullPaginatedListResponse.pageSize);
        System.assertEquals(null, qrCodeFullPaginatedListResponse.totalCount);
        System.assertEquals(null, qrCodeFullPaginatedListResponse.currentCount);
    }
}