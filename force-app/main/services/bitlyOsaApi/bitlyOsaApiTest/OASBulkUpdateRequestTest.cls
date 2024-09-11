@isTest
private class OASBulkUpdateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = bulkUpdateRequest1;
        OASBulkUpdateRequest bulkUpdateRequest3 = new OASBulkUpdateRequest();
        OASBulkUpdateRequest bulkUpdateRequest4 = bulkUpdateRequest3;

        System.assert(bulkUpdateRequest1.equals(bulkUpdateRequest2));
        System.assert(bulkUpdateRequest2.equals(bulkUpdateRequest1));
        System.assert(bulkUpdateRequest1.equals(bulkUpdateRequest1));
        System.assert(bulkUpdateRequest3.equals(bulkUpdateRequest4));
        System.assert(bulkUpdateRequest4.equals(bulkUpdateRequest3));
        System.assert(bulkUpdateRequest3.equals(bulkUpdateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest3 = new OASBulkUpdateRequest();
        OASBulkUpdateRequest bulkUpdateRequest4 = new OASBulkUpdateRequest();

        System.assert(bulkUpdateRequest1.equals(bulkUpdateRequest2));
        System.assert(bulkUpdateRequest2.equals(bulkUpdateRequest1));
        System.assert(bulkUpdateRequest3.equals(bulkUpdateRequest4));
        System.assert(bulkUpdateRequest4.equals(bulkUpdateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = new OASBulkUpdateRequest();

        System.assertEquals(false, bulkUpdateRequest1.equals('foo'));
        System.assertEquals(false, bulkUpdateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = new OASBulkUpdateRequest();
        OASBulkUpdateRequest bulkUpdateRequest3;

        System.assertEquals(false, bulkUpdateRequest1.equals(bulkUpdateRequest3));
        System.assertEquals(false, bulkUpdateRequest2.equals(bulkUpdateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = new OASBulkUpdateRequest();

        System.assertEquals(bulkUpdateRequest1.hashCode(), bulkUpdateRequest1.hashCode());
        System.assertEquals(bulkUpdateRequest2.hashCode(), bulkUpdateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBulkUpdateRequest bulkUpdateRequest1 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest2 = OASBulkUpdateRequest.getExample();
        OASBulkUpdateRequest bulkUpdateRequest3 = new OASBulkUpdateRequest();
        OASBulkUpdateRequest bulkUpdateRequest4 = new OASBulkUpdateRequest();

        System.assert(bulkUpdateRequest1.equals(bulkUpdateRequest2));
        System.assert(bulkUpdateRequest3.equals(bulkUpdateRequest4));
        System.assertEquals(bulkUpdateRequest1.hashCode(), bulkUpdateRequest2.hashCode());
        System.assertEquals(bulkUpdateRequest3.hashCode(), bulkUpdateRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBulkUpdateRequest bulkUpdateRequest = new OASBulkUpdateRequest();
        Map<String, String> propertymappings = bulkUpdateRequest.getPropertyMappings();
        System.assertEquals('addTags', propertymappings.get('add_tags'));
        System.assertEquals('removeTags', propertymappings.get('remove_tags'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBulkUpdateRequest bulkUpdateRequest = new OASBulkUpdateRequest();
        System.assertEquals(new List<String>(), bulkUpdateRequest.addTags);
        System.assertEquals(new List<String>(), bulkUpdateRequest.removeTags);
        System.assertEquals(new List<String>(), bulkUpdateRequest.links);
        System.assertEquals(null, bulkUpdateRequest.action);
        System.assertEquals(null, bulkUpdateRequest.archive);
    }
}