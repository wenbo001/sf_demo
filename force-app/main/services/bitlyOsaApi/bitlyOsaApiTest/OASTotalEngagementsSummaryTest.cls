@isTest
private class OASTotalEngagementsSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = totalEngagementsSummary1;
        OASTotalEngagementsSummary totalEngagementsSummary3 = new OASTotalEngagementsSummary();
        OASTotalEngagementsSummary totalEngagementsSummary4 = totalEngagementsSummary3;

        System.assert(totalEngagementsSummary1.equals(totalEngagementsSummary2));
        System.assert(totalEngagementsSummary2.equals(totalEngagementsSummary1));
        System.assert(totalEngagementsSummary1.equals(totalEngagementsSummary1));
        System.assert(totalEngagementsSummary3.equals(totalEngagementsSummary4));
        System.assert(totalEngagementsSummary4.equals(totalEngagementsSummary3));
        System.assert(totalEngagementsSummary3.equals(totalEngagementsSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary3 = new OASTotalEngagementsSummary();
        OASTotalEngagementsSummary totalEngagementsSummary4 = new OASTotalEngagementsSummary();

        System.assert(totalEngagementsSummary1.equals(totalEngagementsSummary2));
        System.assert(totalEngagementsSummary2.equals(totalEngagementsSummary1));
        System.assert(totalEngagementsSummary3.equals(totalEngagementsSummary4));
        System.assert(totalEngagementsSummary4.equals(totalEngagementsSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = new OASTotalEngagementsSummary();

        System.assertEquals(false, totalEngagementsSummary1.equals('foo'));
        System.assertEquals(false, totalEngagementsSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = new OASTotalEngagementsSummary();
        OASTotalEngagementsSummary totalEngagementsSummary3;

        System.assertEquals(false, totalEngagementsSummary1.equals(totalEngagementsSummary3));
        System.assertEquals(false, totalEngagementsSummary2.equals(totalEngagementsSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = new OASTotalEngagementsSummary();

        System.assertEquals(totalEngagementsSummary1.hashCode(), totalEngagementsSummary1.hashCode());
        System.assertEquals(totalEngagementsSummary2.hashCode(), totalEngagementsSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTotalEngagementsSummary totalEngagementsSummary1 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary2 = OASTotalEngagementsSummary.getExample();
        OASTotalEngagementsSummary totalEngagementsSummary3 = new OASTotalEngagementsSummary();
        OASTotalEngagementsSummary totalEngagementsSummary4 = new OASTotalEngagementsSummary();

        System.assert(totalEngagementsSummary1.equals(totalEngagementsSummary2));
        System.assert(totalEngagementsSummary3.equals(totalEngagementsSummary4));
        System.assertEquals(totalEngagementsSummary1.hashCode(), totalEngagementsSummary2.hashCode());
        System.assertEquals(totalEngagementsSummary3.hashCode(), totalEngagementsSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTotalEngagementsSummary totalEngagementsSummary = new OASTotalEngagementsSummary();
        Map<String, String> propertymappings = totalEngagementsSummary.getPropertyMappings();
        System.assertEquals('totalEngagements', propertymappings.get('total_engagements'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}