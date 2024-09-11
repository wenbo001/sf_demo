@isTest
private class OASEngagementTest {
    @isTest
    private static void equalsSameInstance() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = engagement1;
        OASEngagement engagement3 = new OASEngagement();
        OASEngagement engagement4 = engagement3;

        System.assert(engagement1.equals(engagement2));
        System.assert(engagement2.equals(engagement1));
        System.assert(engagement1.equals(engagement1));
        System.assert(engagement3.equals(engagement4));
        System.assert(engagement4.equals(engagement3));
        System.assert(engagement3.equals(engagement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = OASEngagement.getExample();
        OASEngagement engagement3 = new OASEngagement();
        OASEngagement engagement4 = new OASEngagement();

        System.assert(engagement1.equals(engagement2));
        System.assert(engagement2.equals(engagement1));
        System.assert(engagement3.equals(engagement4));
        System.assert(engagement4.equals(engagement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = new OASEngagement();

        System.assertEquals(false, engagement1.equals('foo'));
        System.assertEquals(false, engagement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = new OASEngagement();
        OASEngagement engagement3;

        System.assertEquals(false, engagement1.equals(engagement3));
        System.assertEquals(false, engagement2.equals(engagement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = new OASEngagement();

        System.assertEquals(engagement1.hashCode(), engagement1.hashCode());
        System.assertEquals(engagement2.hashCode(), engagement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEngagement engagement1 = OASEngagement.getExample();
        OASEngagement engagement2 = OASEngagement.getExample();
        OASEngagement engagement3 = new OASEngagement();
        OASEngagement engagement4 = new OASEngagement();

        System.assert(engagement1.equals(engagement2));
        System.assert(engagement3.equals(engagement4));
        System.assertEquals(engagement1.hashCode(), engagement2.hashCode());
        System.assertEquals(engagement3.hashCode(), engagement4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEngagement engagement = new OASEngagement();
        Map<String, String> propertymappings = engagement.getPropertyMappings();
        System.assertEquals('libButtonClicks', propertymappings.get('lib_button_clicks'));
    }
}