@isTest
private class OASTimeComparisonDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = timeComparisonDetails1;
        OASTimeComparisonDetails timeComparisonDetails3 = new OASTimeComparisonDetails();
        OASTimeComparisonDetails timeComparisonDetails4 = timeComparisonDetails3;

        System.assert(timeComparisonDetails1.equals(timeComparisonDetails2));
        System.assert(timeComparisonDetails2.equals(timeComparisonDetails1));
        System.assert(timeComparisonDetails1.equals(timeComparisonDetails1));
        System.assert(timeComparisonDetails3.equals(timeComparisonDetails4));
        System.assert(timeComparisonDetails4.equals(timeComparisonDetails3));
        System.assert(timeComparisonDetails3.equals(timeComparisonDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails3 = new OASTimeComparisonDetails();
        OASTimeComparisonDetails timeComparisonDetails4 = new OASTimeComparisonDetails();

        System.assert(timeComparisonDetails1.equals(timeComparisonDetails2));
        System.assert(timeComparisonDetails2.equals(timeComparisonDetails1));
        System.assert(timeComparisonDetails3.equals(timeComparisonDetails4));
        System.assert(timeComparisonDetails4.equals(timeComparisonDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = new OASTimeComparisonDetails();

        System.assertEquals(false, timeComparisonDetails1.equals('foo'));
        System.assertEquals(false, timeComparisonDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = new OASTimeComparisonDetails();
        OASTimeComparisonDetails timeComparisonDetails3;

        System.assertEquals(false, timeComparisonDetails1.equals(timeComparisonDetails3));
        System.assertEquals(false, timeComparisonDetails2.equals(timeComparisonDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = new OASTimeComparisonDetails();

        System.assertEquals(timeComparisonDetails1.hashCode(), timeComparisonDetails1.hashCode());
        System.assertEquals(timeComparisonDetails2.hashCode(), timeComparisonDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimeComparisonDetails timeComparisonDetails1 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails2 = OASTimeComparisonDetails.getExample();
        OASTimeComparisonDetails timeComparisonDetails3 = new OASTimeComparisonDetails();
        OASTimeComparisonDetails timeComparisonDetails4 = new OASTimeComparisonDetails();

        System.assert(timeComparisonDetails1.equals(timeComparisonDetails2));
        System.assert(timeComparisonDetails3.equals(timeComparisonDetails4));
        System.assertEquals(timeComparisonDetails1.hashCode(), timeComparisonDetails2.hashCode());
        System.assertEquals(timeComparisonDetails3.hashCode(), timeComparisonDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTimeComparisonDetails timeComparisonDetails = new OASTimeComparisonDetails();
        Map<String, String> propertymappings = timeComparisonDetails.getPropertyMappings();
        System.assertEquals('comparisonStart', propertymappings.get('comparison_start'));
        System.assertEquals('comparisonEnd', propertymappings.get('comparison_end'));
    }
}