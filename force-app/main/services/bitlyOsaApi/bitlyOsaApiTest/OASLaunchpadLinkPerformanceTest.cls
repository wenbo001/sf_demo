@isTest
private class OASLaunchpadLinkPerformanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = launchpadLinkPerformance1;
        OASLaunchpadLinkPerformance launchpadLinkPerformance3 = new OASLaunchpadLinkPerformance();
        OASLaunchpadLinkPerformance launchpadLinkPerformance4 = launchpadLinkPerformance3;

        System.assert(launchpadLinkPerformance1.equals(launchpadLinkPerformance2));
        System.assert(launchpadLinkPerformance2.equals(launchpadLinkPerformance1));
        System.assert(launchpadLinkPerformance1.equals(launchpadLinkPerformance1));
        System.assert(launchpadLinkPerformance3.equals(launchpadLinkPerformance4));
        System.assert(launchpadLinkPerformance4.equals(launchpadLinkPerformance3));
        System.assert(launchpadLinkPerformance3.equals(launchpadLinkPerformance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance3 = new OASLaunchpadLinkPerformance();
        OASLaunchpadLinkPerformance launchpadLinkPerformance4 = new OASLaunchpadLinkPerformance();

        System.assert(launchpadLinkPerformance1.equals(launchpadLinkPerformance2));
        System.assert(launchpadLinkPerformance2.equals(launchpadLinkPerformance1));
        System.assert(launchpadLinkPerformance3.equals(launchpadLinkPerformance4));
        System.assert(launchpadLinkPerformance4.equals(launchpadLinkPerformance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = new OASLaunchpadLinkPerformance();

        System.assertEquals(false, launchpadLinkPerformance1.equals('foo'));
        System.assertEquals(false, launchpadLinkPerformance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = new OASLaunchpadLinkPerformance();
        OASLaunchpadLinkPerformance launchpadLinkPerformance3;

        System.assertEquals(false, launchpadLinkPerformance1.equals(launchpadLinkPerformance3));
        System.assertEquals(false, launchpadLinkPerformance2.equals(launchpadLinkPerformance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = new OASLaunchpadLinkPerformance();

        System.assertEquals(launchpadLinkPerformance1.hashCode(), launchpadLinkPerformance1.hashCode());
        System.assertEquals(launchpadLinkPerformance2.hashCode(), launchpadLinkPerformance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance1 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance2 = OASLaunchpadLinkPerformance.getExample();
        OASLaunchpadLinkPerformance launchpadLinkPerformance3 = new OASLaunchpadLinkPerformance();
        OASLaunchpadLinkPerformance launchpadLinkPerformance4 = new OASLaunchpadLinkPerformance();

        System.assert(launchpadLinkPerformance1.equals(launchpadLinkPerformance2));
        System.assert(launchpadLinkPerformance3.equals(launchpadLinkPerformance4));
        System.assertEquals(launchpadLinkPerformance1.hashCode(), launchpadLinkPerformance2.hashCode());
        System.assertEquals(launchpadLinkPerformance3.hashCode(), launchpadLinkPerformance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance = new OASLaunchpadLinkPerformance();
        Map<String, String> propertymappings = launchpadLinkPerformance.getPropertyMappings();
        System.assertEquals('linkClicks', propertymappings.get('link_clicks'));
        System.assertEquals('performanceStart', propertymappings.get('performance_start'));
        System.assertEquals('performanceEnd', propertymappings.get('performance_end'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLaunchpadLinkPerformance launchpadLinkPerformance = new OASLaunchpadLinkPerformance();
        System.assertEquals(new List<OASLaunchpadClicks>(), launchpadLinkPerformance.linkClicks);
        System.assertEquals(null, launchpadLinkPerformance.total);
        System.assertEquals(null, launchpadLinkPerformance.performanceStart);
        System.assertEquals(null, launchpadLinkPerformance.performanceEnd);
        System.assertEquals(null, launchpadLinkPerformance.units);
        System.assertEquals(null, launchpadLinkPerformance.unit);
        System.assertEquals(null, launchpadLinkPerformance.unitReference);
        System.assertEquals(null, launchpadLinkPerformance.page);
    }
}