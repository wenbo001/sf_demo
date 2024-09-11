@isTest
private class OASQRPaginationTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = qrPagination1;
        OASQRPagination qrPagination3 = new OASQRPagination();
        OASQRPagination qrPagination4 = qrPagination3;

        System.assert(qrPagination1.equals(qrPagination2));
        System.assert(qrPagination2.equals(qrPagination1));
        System.assert(qrPagination1.equals(qrPagination1));
        System.assert(qrPagination3.equals(qrPagination4));
        System.assert(qrPagination4.equals(qrPagination3));
        System.assert(qrPagination3.equals(qrPagination3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = OASQRPagination.getExample();
        OASQRPagination qrPagination3 = new OASQRPagination();
        OASQRPagination qrPagination4 = new OASQRPagination();

        System.assert(qrPagination1.equals(qrPagination2));
        System.assert(qrPagination2.equals(qrPagination1));
        System.assert(qrPagination3.equals(qrPagination4));
        System.assert(qrPagination4.equals(qrPagination3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = new OASQRPagination();

        System.assertEquals(false, qrPagination1.equals('foo'));
        System.assertEquals(false, qrPagination2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = new OASQRPagination();
        OASQRPagination qrPagination3;

        System.assertEquals(false, qrPagination1.equals(qrPagination3));
        System.assertEquals(false, qrPagination2.equals(qrPagination3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = new OASQRPagination();

        System.assertEquals(qrPagination1.hashCode(), qrPagination1.hashCode());
        System.assertEquals(qrPagination2.hashCode(), qrPagination2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRPagination qrPagination1 = OASQRPagination.getExample();
        OASQRPagination qrPagination2 = OASQRPagination.getExample();
        OASQRPagination qrPagination3 = new OASQRPagination();
        OASQRPagination qrPagination4 = new OASQRPagination();

        System.assert(qrPagination1.equals(qrPagination2));
        System.assert(qrPagination3.equals(qrPagination4));
        System.assertEquals(qrPagination1.hashCode(), qrPagination2.hashCode());
        System.assertEquals(qrPagination3.hashCode(), qrPagination4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRPagination qrPagination = new OASQRPagination();
        Map<String, String> propertymappings = qrPagination.getPropertyMappings();
        System.assertEquals('searchAfter', propertymappings.get('search_after'));
    }
}