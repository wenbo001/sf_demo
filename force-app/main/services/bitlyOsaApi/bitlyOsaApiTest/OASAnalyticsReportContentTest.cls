@isTest
private class OASAnalyticsReportContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = analyticsReportContent1;
        OASAnalyticsReportContent analyticsReportContent3 = new OASAnalyticsReportContent();
        OASAnalyticsReportContent analyticsReportContent4 = analyticsReportContent3;

        System.assert(analyticsReportContent1.equals(analyticsReportContent2));
        System.assert(analyticsReportContent2.equals(analyticsReportContent1));
        System.assert(analyticsReportContent1.equals(analyticsReportContent1));
        System.assert(analyticsReportContent3.equals(analyticsReportContent4));
        System.assert(analyticsReportContent4.equals(analyticsReportContent3));
        System.assert(analyticsReportContent3.equals(analyticsReportContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent3 = new OASAnalyticsReportContent();
        OASAnalyticsReportContent analyticsReportContent4 = new OASAnalyticsReportContent();

        System.assert(analyticsReportContent1.equals(analyticsReportContent2));
        System.assert(analyticsReportContent2.equals(analyticsReportContent1));
        System.assert(analyticsReportContent3.equals(analyticsReportContent4));
        System.assert(analyticsReportContent4.equals(analyticsReportContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = new OASAnalyticsReportContent();

        System.assertEquals(false, analyticsReportContent1.equals('foo'));
        System.assertEquals(false, analyticsReportContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = new OASAnalyticsReportContent();
        OASAnalyticsReportContent analyticsReportContent3;

        System.assertEquals(false, analyticsReportContent1.equals(analyticsReportContent3));
        System.assertEquals(false, analyticsReportContent2.equals(analyticsReportContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = new OASAnalyticsReportContent();

        System.assertEquals(analyticsReportContent1.hashCode(), analyticsReportContent1.hashCode());
        System.assertEquals(analyticsReportContent2.hashCode(), analyticsReportContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnalyticsReportContent analyticsReportContent1 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent2 = OASAnalyticsReportContent.getExample();
        OASAnalyticsReportContent analyticsReportContent3 = new OASAnalyticsReportContent();
        OASAnalyticsReportContent analyticsReportContent4 = new OASAnalyticsReportContent();

        System.assert(analyticsReportContent1.equals(analyticsReportContent2));
        System.assert(analyticsReportContent3.equals(analyticsReportContent4));
        System.assertEquals(analyticsReportContent1.hashCode(), analyticsReportContent2.hashCode());
        System.assertEquals(analyticsReportContent3.hashCode(), analyticsReportContent4.hashCode());
    }
}