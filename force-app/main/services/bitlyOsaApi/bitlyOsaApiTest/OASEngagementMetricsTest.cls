@isTest
private class OASEngagementMetricsTest {
    @isTest
    private static void equalsSameInstance() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = engagementMetrics1;
        OASEngagementMetrics engagementMetrics3 = new OASEngagementMetrics();
        OASEngagementMetrics engagementMetrics4 = engagementMetrics3;

        System.assert(engagementMetrics1.equals(engagementMetrics2));
        System.assert(engagementMetrics2.equals(engagementMetrics1));
        System.assert(engagementMetrics1.equals(engagementMetrics1));
        System.assert(engagementMetrics3.equals(engagementMetrics4));
        System.assert(engagementMetrics4.equals(engagementMetrics3));
        System.assert(engagementMetrics3.equals(engagementMetrics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics3 = new OASEngagementMetrics();
        OASEngagementMetrics engagementMetrics4 = new OASEngagementMetrics();

        System.assert(engagementMetrics1.equals(engagementMetrics2));
        System.assert(engagementMetrics2.equals(engagementMetrics1));
        System.assert(engagementMetrics3.equals(engagementMetrics4));
        System.assert(engagementMetrics4.equals(engagementMetrics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = new OASEngagementMetrics();

        System.assertEquals(false, engagementMetrics1.equals('foo'));
        System.assertEquals(false, engagementMetrics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = new OASEngagementMetrics();
        OASEngagementMetrics engagementMetrics3;

        System.assertEquals(false, engagementMetrics1.equals(engagementMetrics3));
        System.assertEquals(false, engagementMetrics2.equals(engagementMetrics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = new OASEngagementMetrics();

        System.assertEquals(engagementMetrics1.hashCode(), engagementMetrics1.hashCode());
        System.assertEquals(engagementMetrics2.hashCode(), engagementMetrics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEngagementMetrics engagementMetrics1 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics2 = OASEngagementMetrics.getExample();
        OASEngagementMetrics engagementMetrics3 = new OASEngagementMetrics();
        OASEngagementMetrics engagementMetrics4 = new OASEngagementMetrics();

        System.assert(engagementMetrics1.equals(engagementMetrics2));
        System.assert(engagementMetrics3.equals(engagementMetrics4));
        System.assertEquals(engagementMetrics1.hashCode(), engagementMetrics2.hashCode());
        System.assertEquals(engagementMetrics3.hashCode(), engagementMetrics4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEngagementMetrics engagementMetrics = new OASEngagementMetrics();
        Map<String, String> propertymappings = engagementMetrics.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
        System.assertEquals('buttonClicks', propertymappings.get('button_clicks'));
    }
}