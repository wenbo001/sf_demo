@isTest
private class OASEngagementsTest {
    @isTest
    private static void equalsSameInstance() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = engagements1;
        OASEngagements engagements3 = new OASEngagements();
        OASEngagements engagements4 = engagements3;

        System.assert(engagements1.equals(engagements2));
        System.assert(engagements2.equals(engagements1));
        System.assert(engagements1.equals(engagements1));
        System.assert(engagements3.equals(engagements4));
        System.assert(engagements4.equals(engagements3));
        System.assert(engagements3.equals(engagements3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = OASEngagements.getExample();
        OASEngagements engagements3 = new OASEngagements();
        OASEngagements engagements4 = new OASEngagements();

        System.assert(engagements1.equals(engagements2));
        System.assert(engagements2.equals(engagements1));
        System.assert(engagements3.equals(engagements4));
        System.assert(engagements4.equals(engagements3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = new OASEngagements();

        System.assertEquals(false, engagements1.equals('foo'));
        System.assertEquals(false, engagements2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = new OASEngagements();
        OASEngagements engagements3;

        System.assertEquals(false, engagements1.equals(engagements3));
        System.assertEquals(false, engagements2.equals(engagements3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = new OASEngagements();

        System.assertEquals(engagements1.hashCode(), engagements1.hashCode());
        System.assertEquals(engagements2.hashCode(), engagements2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEngagements engagements1 = OASEngagements.getExample();
        OASEngagements engagements2 = OASEngagements.getExample();
        OASEngagements engagements3 = new OASEngagements();
        OASEngagements engagements4 = new OASEngagements();

        System.assert(engagements1.equals(engagements2));
        System.assert(engagements3.equals(engagements4));
        System.assertEquals(engagements1.hashCode(), engagements2.hashCode());
        System.assertEquals(engagements3.hashCode(), engagements4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEngagements engagements = new OASEngagements();
        Map<String, String> propertymappings = engagements.getPropertyMappings();
        System.assertEquals('engagementCount', propertymappings.get('engagement_count'));
        System.assertEquals('r_date', propertymappings.get('date'));
    }
}