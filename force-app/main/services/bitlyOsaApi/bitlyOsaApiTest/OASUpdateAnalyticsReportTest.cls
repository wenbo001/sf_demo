@isTest
private class OASUpdateAnalyticsReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = updateAnalyticsReport1;
        OASUpdateAnalyticsReport updateAnalyticsReport3 = new OASUpdateAnalyticsReport();
        OASUpdateAnalyticsReport updateAnalyticsReport4 = updateAnalyticsReport3;

        System.assert(updateAnalyticsReport1.equals(updateAnalyticsReport2));
        System.assert(updateAnalyticsReport2.equals(updateAnalyticsReport1));
        System.assert(updateAnalyticsReport1.equals(updateAnalyticsReport1));
        System.assert(updateAnalyticsReport3.equals(updateAnalyticsReport4));
        System.assert(updateAnalyticsReport4.equals(updateAnalyticsReport3));
        System.assert(updateAnalyticsReport3.equals(updateAnalyticsReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport3 = new OASUpdateAnalyticsReport();
        OASUpdateAnalyticsReport updateAnalyticsReport4 = new OASUpdateAnalyticsReport();

        System.assert(updateAnalyticsReport1.equals(updateAnalyticsReport2));
        System.assert(updateAnalyticsReport2.equals(updateAnalyticsReport1));
        System.assert(updateAnalyticsReport3.equals(updateAnalyticsReport4));
        System.assert(updateAnalyticsReport4.equals(updateAnalyticsReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = new OASUpdateAnalyticsReport();

        System.assertEquals(false, updateAnalyticsReport1.equals('foo'));
        System.assertEquals(false, updateAnalyticsReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = new OASUpdateAnalyticsReport();
        OASUpdateAnalyticsReport updateAnalyticsReport3;

        System.assertEquals(false, updateAnalyticsReport1.equals(updateAnalyticsReport3));
        System.assertEquals(false, updateAnalyticsReport2.equals(updateAnalyticsReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = new OASUpdateAnalyticsReport();

        System.assertEquals(updateAnalyticsReport1.hashCode(), updateAnalyticsReport1.hashCode());
        System.assertEquals(updateAnalyticsReport2.hashCode(), updateAnalyticsReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateAnalyticsReport updateAnalyticsReport1 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport2 = OASUpdateAnalyticsReport.getExample();
        OASUpdateAnalyticsReport updateAnalyticsReport3 = new OASUpdateAnalyticsReport();
        OASUpdateAnalyticsReport updateAnalyticsReport4 = new OASUpdateAnalyticsReport();

        System.assert(updateAnalyticsReport1.equals(updateAnalyticsReport2));
        System.assert(updateAnalyticsReport3.equals(updateAnalyticsReport4));
        System.assertEquals(updateAnalyticsReport1.hashCode(), updateAnalyticsReport2.hashCode());
        System.assertEquals(updateAnalyticsReport3.hashCode(), updateAnalyticsReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateAnalyticsReport updateAnalyticsReport = new OASUpdateAnalyticsReport();
        Map<String, String> propertymappings = updateAnalyticsReport.getPropertyMappings();
        System.assertEquals('reportSettings', propertymappings.get('report_settings'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}