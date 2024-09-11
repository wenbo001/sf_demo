@isTest
private class OASTimePeriodTest {
    @isTest
    private static void equalsSameInstance() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = timePeriod1;
        OASTimePeriod timePeriod3 = new OASTimePeriod();
        OASTimePeriod timePeriod4 = timePeriod3;

        System.assert(timePeriod1.equals(timePeriod2));
        System.assert(timePeriod2.equals(timePeriod1));
        System.assert(timePeriod1.equals(timePeriod1));
        System.assert(timePeriod3.equals(timePeriod4));
        System.assert(timePeriod4.equals(timePeriod3));
        System.assert(timePeriod3.equals(timePeriod3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod3 = new OASTimePeriod();
        OASTimePeriod timePeriod4 = new OASTimePeriod();

        System.assert(timePeriod1.equals(timePeriod2));
        System.assert(timePeriod2.equals(timePeriod1));
        System.assert(timePeriod3.equals(timePeriod4));
        System.assert(timePeriod4.equals(timePeriod3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = new OASTimePeriod();

        System.assertEquals(false, timePeriod1.equals('foo'));
        System.assertEquals(false, timePeriod2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = new OASTimePeriod();
        OASTimePeriod timePeriod3;

        System.assertEquals(false, timePeriod1.equals(timePeriod3));
        System.assertEquals(false, timePeriod2.equals(timePeriod3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = new OASTimePeriod();

        System.assertEquals(timePeriod1.hashCode(), timePeriod1.hashCode());
        System.assertEquals(timePeriod2.hashCode(), timePeriod2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTimePeriod timePeriod1 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod2 = OASTimePeriod.getExample();
        OASTimePeriod timePeriod3 = new OASTimePeriod();
        OASTimePeriod timePeriod4 = new OASTimePeriod();

        System.assert(timePeriod1.equals(timePeriod2));
        System.assert(timePeriod3.equals(timePeriod4));
        System.assertEquals(timePeriod1.hashCode(), timePeriod2.hashCode());
        System.assertEquals(timePeriod3.hashCode(), timePeriod4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTimePeriod timePeriod = new OASTimePeriod();
        Map<String, String> propertymappings = timePeriod.getPropertyMappings();
        System.assertEquals('r_from', propertymappings.get('from'));
        System.assertEquals('csvHeaderPrefix', propertymappings.get('csv_header_prefix'));
        System.assertEquals('minimumCount', propertymappings.get('minimum_count'));
    }
}