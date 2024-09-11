@isTest
private class OASBulkUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = bulkUpdate1;
        OASBulkUpdate bulkUpdate3 = new OASBulkUpdate();
        OASBulkUpdate bulkUpdate4 = bulkUpdate3;

        System.assert(bulkUpdate1.equals(bulkUpdate2));
        System.assert(bulkUpdate2.equals(bulkUpdate1));
        System.assert(bulkUpdate1.equals(bulkUpdate1));
        System.assert(bulkUpdate3.equals(bulkUpdate4));
        System.assert(bulkUpdate4.equals(bulkUpdate3));
        System.assert(bulkUpdate3.equals(bulkUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate3 = new OASBulkUpdate();
        OASBulkUpdate bulkUpdate4 = new OASBulkUpdate();

        System.assert(bulkUpdate1.equals(bulkUpdate2));
        System.assert(bulkUpdate2.equals(bulkUpdate1));
        System.assert(bulkUpdate3.equals(bulkUpdate4));
        System.assert(bulkUpdate4.equals(bulkUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = new OASBulkUpdate();

        System.assertEquals(false, bulkUpdate1.equals('foo'));
        System.assertEquals(false, bulkUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = new OASBulkUpdate();
        OASBulkUpdate bulkUpdate3;

        System.assertEquals(false, bulkUpdate1.equals(bulkUpdate3));
        System.assertEquals(false, bulkUpdate2.equals(bulkUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = new OASBulkUpdate();

        System.assertEquals(bulkUpdate1.hashCode(), bulkUpdate1.hashCode());
        System.assertEquals(bulkUpdate2.hashCode(), bulkUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUpdate bulkUpdate1 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate2 = OASBulkUpdate.getExample();
        OASBulkUpdate bulkUpdate3 = new OASBulkUpdate();
        OASBulkUpdate bulkUpdate4 = new OASBulkUpdate();

        System.assert(bulkUpdate1.equals(bulkUpdate2));
        System.assert(bulkUpdate3.equals(bulkUpdate4));
        System.assertEquals(bulkUpdate1.hashCode(), bulkUpdate2.hashCode());
        System.assertEquals(bulkUpdate3.hashCode(), bulkUpdate4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBulkUpdate bulkUpdate = new OASBulkUpdate();
        System.assertEquals(new List<String>(), bulkUpdate.links);
    }
}