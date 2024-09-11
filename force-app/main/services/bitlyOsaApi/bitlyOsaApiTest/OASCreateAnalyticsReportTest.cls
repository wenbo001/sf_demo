@isTest
private class OASCreateAnalyticsReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = createAnalyticsReport1;
        OASCreateAnalyticsReport createAnalyticsReport3 = new OASCreateAnalyticsReport();
        OASCreateAnalyticsReport createAnalyticsReport4 = createAnalyticsReport3;

        System.assert(createAnalyticsReport1.equals(createAnalyticsReport2));
        System.assert(createAnalyticsReport2.equals(createAnalyticsReport1));
        System.assert(createAnalyticsReport1.equals(createAnalyticsReport1));
        System.assert(createAnalyticsReport3.equals(createAnalyticsReport4));
        System.assert(createAnalyticsReport4.equals(createAnalyticsReport3));
        System.assert(createAnalyticsReport3.equals(createAnalyticsReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport3 = new OASCreateAnalyticsReport();
        OASCreateAnalyticsReport createAnalyticsReport4 = new OASCreateAnalyticsReport();

        System.assert(createAnalyticsReport1.equals(createAnalyticsReport2));
        System.assert(createAnalyticsReport2.equals(createAnalyticsReport1));
        System.assert(createAnalyticsReport3.equals(createAnalyticsReport4));
        System.assert(createAnalyticsReport4.equals(createAnalyticsReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = new OASCreateAnalyticsReport();

        System.assertEquals(false, createAnalyticsReport1.equals('foo'));
        System.assertEquals(false, createAnalyticsReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = new OASCreateAnalyticsReport();
        OASCreateAnalyticsReport createAnalyticsReport3;

        System.assertEquals(false, createAnalyticsReport1.equals(createAnalyticsReport3));
        System.assertEquals(false, createAnalyticsReport2.equals(createAnalyticsReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = new OASCreateAnalyticsReport();

        System.assertEquals(createAnalyticsReport1.hashCode(), createAnalyticsReport1.hashCode());
        System.assertEquals(createAnalyticsReport2.hashCode(), createAnalyticsReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateAnalyticsReport createAnalyticsReport1 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport2 = OASCreateAnalyticsReport.getExample();
        OASCreateAnalyticsReport createAnalyticsReport3 = new OASCreateAnalyticsReport();
        OASCreateAnalyticsReport createAnalyticsReport4 = new OASCreateAnalyticsReport();

        System.assert(createAnalyticsReport1.equals(createAnalyticsReport2));
        System.assert(createAnalyticsReport3.equals(createAnalyticsReport4));
        System.assertEquals(createAnalyticsReport1.hashCode(), createAnalyticsReport2.hashCode());
        System.assertEquals(createAnalyticsReport3.hashCode(), createAnalyticsReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateAnalyticsReport createAnalyticsReport = new OASCreateAnalyticsReport();
        Map<String, String> propertymappings = createAnalyticsReport.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('reportSettings', propertymappings.get('report_settings'));
    }
}