@isTest
private class OASBulkAddResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = bulkAddResponse1;
        OASBulkAddResponse bulkAddResponse3 = new OASBulkAddResponse();
        OASBulkAddResponse bulkAddResponse4 = bulkAddResponse3;

        System.assert(bulkAddResponse1.equals(bulkAddResponse2));
        System.assert(bulkAddResponse2.equals(bulkAddResponse1));
        System.assert(bulkAddResponse1.equals(bulkAddResponse1));
        System.assert(bulkAddResponse3.equals(bulkAddResponse4));
        System.assert(bulkAddResponse4.equals(bulkAddResponse3));
        System.assert(bulkAddResponse3.equals(bulkAddResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse3 = new OASBulkAddResponse();
        OASBulkAddResponse bulkAddResponse4 = new OASBulkAddResponse();

        System.assert(bulkAddResponse1.equals(bulkAddResponse2));
        System.assert(bulkAddResponse2.equals(bulkAddResponse1));
        System.assert(bulkAddResponse3.equals(bulkAddResponse4));
        System.assert(bulkAddResponse4.equals(bulkAddResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = new OASBulkAddResponse();

        System.assertEquals(false, bulkAddResponse1.equals('foo'));
        System.assertEquals(false, bulkAddResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = new OASBulkAddResponse();
        OASBulkAddResponse bulkAddResponse3;

        System.assertEquals(false, bulkAddResponse1.equals(bulkAddResponse3));
        System.assertEquals(false, bulkAddResponse2.equals(bulkAddResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = new OASBulkAddResponse();

        System.assertEquals(bulkAddResponse1.hashCode(), bulkAddResponse1.hashCode());
        System.assertEquals(bulkAddResponse2.hashCode(), bulkAddResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkAddResponse bulkAddResponse1 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse2 = OASBulkAddResponse.getExample();
        OASBulkAddResponse bulkAddResponse3 = new OASBulkAddResponse();
        OASBulkAddResponse bulkAddResponse4 = new OASBulkAddResponse();

        System.assert(bulkAddResponse1.equals(bulkAddResponse2));
        System.assert(bulkAddResponse3.equals(bulkAddResponse4));
        System.assertEquals(bulkAddResponse1.hashCode(), bulkAddResponse2.hashCode());
        System.assertEquals(bulkAddResponse3.hashCode(), bulkAddResponse4.hashCode());
    }
}