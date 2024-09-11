@isTest
private class OASAnalyticsReportsTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = analyticsReports1;
        OASAnalyticsReports analyticsReports3 = new OASAnalyticsReports();
        OASAnalyticsReports analyticsReports4 = analyticsReports3;

        System.assert(analyticsReports1.equals(analyticsReports2));
        System.assert(analyticsReports2.equals(analyticsReports1));
        System.assert(analyticsReports1.equals(analyticsReports1));
        System.assert(analyticsReports3.equals(analyticsReports4));
        System.assert(analyticsReports4.equals(analyticsReports3));
        System.assert(analyticsReports3.equals(analyticsReports3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports3 = new OASAnalyticsReports();
        OASAnalyticsReports analyticsReports4 = new OASAnalyticsReports();

        System.assert(analyticsReports1.equals(analyticsReports2));
        System.assert(analyticsReports2.equals(analyticsReports1));
        System.assert(analyticsReports3.equals(analyticsReports4));
        System.assert(analyticsReports4.equals(analyticsReports3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = new OASAnalyticsReports();

        System.assertEquals(false, analyticsReports1.equals('foo'));
        System.assertEquals(false, analyticsReports2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = new OASAnalyticsReports();
        OASAnalyticsReports analyticsReports3;

        System.assertEquals(false, analyticsReports1.equals(analyticsReports3));
        System.assertEquals(false, analyticsReports2.equals(analyticsReports3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = new OASAnalyticsReports();

        System.assertEquals(analyticsReports1.hashCode(), analyticsReports1.hashCode());
        System.assertEquals(analyticsReports2.hashCode(), analyticsReports2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnalyticsReports analyticsReports1 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports2 = OASAnalyticsReports.getExample();
        OASAnalyticsReports analyticsReports3 = new OASAnalyticsReports();
        OASAnalyticsReports analyticsReports4 = new OASAnalyticsReports();

        System.assert(analyticsReports1.equals(analyticsReports2));
        System.assert(analyticsReports3.equals(analyticsReports4));
        System.assertEquals(analyticsReports1.hashCode(), analyticsReports2.hashCode());
        System.assertEquals(analyticsReports3.hashCode(), analyticsReports4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAnalyticsReports analyticsReports = new OASAnalyticsReports();
        System.assertEquals(new List<OASAnalyticsReport>(), analyticsReports.reports);
    }
}