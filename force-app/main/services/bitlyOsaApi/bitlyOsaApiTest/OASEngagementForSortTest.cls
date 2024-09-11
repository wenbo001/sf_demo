@isTest
private class OASEngagementForSortTest {
    @isTest
    private static void equalsSameInstance() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = engagementForSort1;
        OASEngagementForSort engagementForSort3 = new OASEngagementForSort();
        OASEngagementForSort engagementForSort4 = engagementForSort3;

        System.assert(engagementForSort1.equals(engagementForSort2));
        System.assert(engagementForSort2.equals(engagementForSort1));
        System.assert(engagementForSort1.equals(engagementForSort1));
        System.assert(engagementForSort3.equals(engagementForSort4));
        System.assert(engagementForSort4.equals(engagementForSort3));
        System.assert(engagementForSort3.equals(engagementForSort3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort3 = new OASEngagementForSort();
        OASEngagementForSort engagementForSort4 = new OASEngagementForSort();

        System.assert(engagementForSort1.equals(engagementForSort2));
        System.assert(engagementForSort2.equals(engagementForSort1));
        System.assert(engagementForSort3.equals(engagementForSort4));
        System.assert(engagementForSort4.equals(engagementForSort3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = new OASEngagementForSort();

        System.assertEquals(false, engagementForSort1.equals('foo'));
        System.assertEquals(false, engagementForSort2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = new OASEngagementForSort();
        OASEngagementForSort engagementForSort3;

        System.assertEquals(false, engagementForSort1.equals(engagementForSort3));
        System.assertEquals(false, engagementForSort2.equals(engagementForSort3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = new OASEngagementForSort();

        System.assertEquals(engagementForSort1.hashCode(), engagementForSort1.hashCode());
        System.assertEquals(engagementForSort2.hashCode(), engagementForSort2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEngagementForSort engagementForSort1 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort2 = OASEngagementForSort.getExample();
        OASEngagementForSort engagementForSort3 = new OASEngagementForSort();
        OASEngagementForSort engagementForSort4 = new OASEngagementForSort();

        System.assert(engagementForSort1.equals(engagementForSort2));
        System.assert(engagementForSort3.equals(engagementForSort4));
        System.assertEquals(engagementForSort1.hashCode(), engagementForSort2.hashCode());
        System.assertEquals(engagementForSort3.hashCode(), engagementForSort4.hashCode());
    }
}