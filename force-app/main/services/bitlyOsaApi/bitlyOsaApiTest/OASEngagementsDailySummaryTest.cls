@isTest
private class OASEngagementsDailySummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = engagementsDailySummary1;
        OASEngagementsDailySummary engagementsDailySummary3 = new OASEngagementsDailySummary();
        OASEngagementsDailySummary engagementsDailySummary4 = engagementsDailySummary3;

        System.assert(engagementsDailySummary1.equals(engagementsDailySummary2));
        System.assert(engagementsDailySummary2.equals(engagementsDailySummary1));
        System.assert(engagementsDailySummary1.equals(engagementsDailySummary1));
        System.assert(engagementsDailySummary3.equals(engagementsDailySummary4));
        System.assert(engagementsDailySummary4.equals(engagementsDailySummary3));
        System.assert(engagementsDailySummary3.equals(engagementsDailySummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary3 = new OASEngagementsDailySummary();
        OASEngagementsDailySummary engagementsDailySummary4 = new OASEngagementsDailySummary();

        System.assert(engagementsDailySummary1.equals(engagementsDailySummary2));
        System.assert(engagementsDailySummary2.equals(engagementsDailySummary1));
        System.assert(engagementsDailySummary3.equals(engagementsDailySummary4));
        System.assert(engagementsDailySummary4.equals(engagementsDailySummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = new OASEngagementsDailySummary();

        System.assertEquals(false, engagementsDailySummary1.equals('foo'));
        System.assertEquals(false, engagementsDailySummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = new OASEngagementsDailySummary();
        OASEngagementsDailySummary engagementsDailySummary3;

        System.assertEquals(false, engagementsDailySummary1.equals(engagementsDailySummary3));
        System.assertEquals(false, engagementsDailySummary2.equals(engagementsDailySummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = new OASEngagementsDailySummary();

        System.assertEquals(engagementsDailySummary1.hashCode(), engagementsDailySummary1.hashCode());
        System.assertEquals(engagementsDailySummary2.hashCode(), engagementsDailySummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEngagementsDailySummary engagementsDailySummary1 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary2 = OASEngagementsDailySummary.getExample();
        OASEngagementsDailySummary engagementsDailySummary3 = new OASEngagementsDailySummary();
        OASEngagementsDailySummary engagementsDailySummary4 = new OASEngagementsDailySummary();

        System.assert(engagementsDailySummary1.equals(engagementsDailySummary2));
        System.assert(engagementsDailySummary3.equals(engagementsDailySummary4));
        System.assertEquals(engagementsDailySummary1.hashCode(), engagementsDailySummary2.hashCode());
        System.assertEquals(engagementsDailySummary3.hashCode(), engagementsDailySummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEngagementsDailySummary engagementsDailySummary = new OASEngagementsDailySummary();
        Map<String, String> propertymappings = engagementsDailySummary.getPropertyMappings();
        System.assertEquals('refDate', propertymappings.get('ref_date'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEngagementsDailySummary engagementsDailySummary = new OASEngagementsDailySummary();
        System.assertEquals(new List<OASEngagementMetrics>(), engagementsDailySummary.engagements);
        System.assertEquals(null, engagementsDailySummary.refDate);
        System.assertEquals(null, engagementsDailySummary.days);
    }
}