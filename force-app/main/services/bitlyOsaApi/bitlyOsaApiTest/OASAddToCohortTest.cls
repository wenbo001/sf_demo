@isTest
private class OASAddToCohortTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = addToCohort1;
        OASAddToCohort addToCohort3 = new OASAddToCohort();
        OASAddToCohort addToCohort4 = addToCohort3;

        System.assert(addToCohort1.equals(addToCohort2));
        System.assert(addToCohort2.equals(addToCohort1));
        System.assert(addToCohort1.equals(addToCohort1));
        System.assert(addToCohort3.equals(addToCohort4));
        System.assert(addToCohort4.equals(addToCohort3));
        System.assert(addToCohort3.equals(addToCohort3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort3 = new OASAddToCohort();
        OASAddToCohort addToCohort4 = new OASAddToCohort();

        System.assert(addToCohort1.equals(addToCohort2));
        System.assert(addToCohort2.equals(addToCohort1));
        System.assert(addToCohort3.equals(addToCohort4));
        System.assert(addToCohort4.equals(addToCohort3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = new OASAddToCohort();

        System.assertEquals(false, addToCohort1.equals('foo'));
        System.assertEquals(false, addToCohort2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = new OASAddToCohort();
        OASAddToCohort addToCohort3;

        System.assertEquals(false, addToCohort1.equals(addToCohort3));
        System.assertEquals(false, addToCohort2.equals(addToCohort3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = new OASAddToCohort();

        System.assertEquals(addToCohort1.hashCode(), addToCohort1.hashCode());
        System.assertEquals(addToCohort2.hashCode(), addToCohort2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddToCohort addToCohort1 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort2 = OASAddToCohort.getExample();
        OASAddToCohort addToCohort3 = new OASAddToCohort();
        OASAddToCohort addToCohort4 = new OASAddToCohort();

        System.assert(addToCohort1.equals(addToCohort2));
        System.assert(addToCohort3.equals(addToCohort4));
        System.assertEquals(addToCohort1.hashCode(), addToCohort2.hashCode());
        System.assertEquals(addToCohort3.hashCode(), addToCohort4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddToCohort addToCohort = new OASAddToCohort();
        Map<String, String> propertymappings = addToCohort.getPropertyMappings();
        System.assertEquals('entityType', propertymappings.get('entity_type'));
    }
}