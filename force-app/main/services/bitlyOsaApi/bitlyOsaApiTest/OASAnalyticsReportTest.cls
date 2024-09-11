@isTest
private class OASAnalyticsReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = analyticsReport1;
        OASAnalyticsReport analyticsReport3 = new OASAnalyticsReport();
        OASAnalyticsReport analyticsReport4 = analyticsReport3;

        System.assert(analyticsReport1.equals(analyticsReport2));
        System.assert(analyticsReport2.equals(analyticsReport1));
        System.assert(analyticsReport1.equals(analyticsReport1));
        System.assert(analyticsReport3.equals(analyticsReport4));
        System.assert(analyticsReport4.equals(analyticsReport3));
        System.assert(analyticsReport3.equals(analyticsReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport3 = new OASAnalyticsReport();
        OASAnalyticsReport analyticsReport4 = new OASAnalyticsReport();

        System.assert(analyticsReport1.equals(analyticsReport2));
        System.assert(analyticsReport2.equals(analyticsReport1));
        System.assert(analyticsReport3.equals(analyticsReport4));
        System.assert(analyticsReport4.equals(analyticsReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = new OASAnalyticsReport();

        System.assertEquals(false, analyticsReport1.equals('foo'));
        System.assertEquals(false, analyticsReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = new OASAnalyticsReport();
        OASAnalyticsReport analyticsReport3;

        System.assertEquals(false, analyticsReport1.equals(analyticsReport3));
        System.assertEquals(false, analyticsReport2.equals(analyticsReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = new OASAnalyticsReport();

        System.assertEquals(analyticsReport1.hashCode(), analyticsReport1.hashCode());
        System.assertEquals(analyticsReport2.hashCode(), analyticsReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAnalyticsReport analyticsReport1 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport2 = OASAnalyticsReport.getExample();
        OASAnalyticsReport analyticsReport3 = new OASAnalyticsReport();
        OASAnalyticsReport analyticsReport4 = new OASAnalyticsReport();

        System.assert(analyticsReport1.equals(analyticsReport2));
        System.assert(analyticsReport3.equals(analyticsReport4));
        System.assertEquals(analyticsReport1.hashCode(), analyticsReport2.hashCode());
        System.assertEquals(analyticsReport3.hashCode(), analyticsReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAnalyticsReport analyticsReport = new OASAnalyticsReport();
        Map<String, String> propertymappings = analyticsReport.getPropertyMappings();
        System.assertEquals('reportGuid', propertymappings.get('report_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('lastModifiedBy', propertymappings.get('last_modified_by'));
        System.assertEquals('userFullName', propertymappings.get('user_full_name'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}