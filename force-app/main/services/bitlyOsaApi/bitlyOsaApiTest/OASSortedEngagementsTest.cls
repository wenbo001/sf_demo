@isTest
private class OASSortedEngagementsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = sortedEngagements1;
        OASSortedEngagements sortedEngagements3 = new OASSortedEngagements();
        OASSortedEngagements sortedEngagements4 = sortedEngagements3;

        System.assert(sortedEngagements1.equals(sortedEngagements2));
        System.assert(sortedEngagements2.equals(sortedEngagements1));
        System.assert(sortedEngagements1.equals(sortedEngagements1));
        System.assert(sortedEngagements3.equals(sortedEngagements4));
        System.assert(sortedEngagements4.equals(sortedEngagements3));
        System.assert(sortedEngagements3.equals(sortedEngagements3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements3 = new OASSortedEngagements();
        OASSortedEngagements sortedEngagements4 = new OASSortedEngagements();

        System.assert(sortedEngagements1.equals(sortedEngagements2));
        System.assert(sortedEngagements2.equals(sortedEngagements1));
        System.assert(sortedEngagements3.equals(sortedEngagements4));
        System.assert(sortedEngagements4.equals(sortedEngagements3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = new OASSortedEngagements();

        System.assertEquals(false, sortedEngagements1.equals('foo'));
        System.assertEquals(false, sortedEngagements2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = new OASSortedEngagements();
        OASSortedEngagements sortedEngagements3;

        System.assertEquals(false, sortedEngagements1.equals(sortedEngagements3));
        System.assertEquals(false, sortedEngagements2.equals(sortedEngagements3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = new OASSortedEngagements();

        System.assertEquals(sortedEngagements1.hashCode(), sortedEngagements1.hashCode());
        System.assertEquals(sortedEngagements2.hashCode(), sortedEngagements2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSortedEngagements sortedEngagements1 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements2 = OASSortedEngagements.getExample();
        OASSortedEngagements sortedEngagements3 = new OASSortedEngagements();
        OASSortedEngagements sortedEngagements4 = new OASSortedEngagements();

        System.assert(sortedEngagements1.equals(sortedEngagements2));
        System.assert(sortedEngagements3.equals(sortedEngagements4));
        System.assertEquals(sortedEngagements1.hashCode(), sortedEngagements2.hashCode());
        System.assertEquals(sortedEngagements3.hashCode(), sortedEngagements4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSortedEngagements sortedEngagements = new OASSortedEngagements();
        Map<String, String> propertymappings = sortedEngagements.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('sortedEngagements', propertymappings.get('sorted_engagements'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSortedEngagements sortedEngagements = new OASSortedEngagements();
        System.assertEquals(new List<OASEngagementForSort>(), sortedEngagements.sortedEngagements);
        System.assertEquals(null, sortedEngagements.unitReference);
        System.assertEquals(null, sortedEngagements.unit);
        System.assertEquals(null, sortedEngagements.units);
    }
}