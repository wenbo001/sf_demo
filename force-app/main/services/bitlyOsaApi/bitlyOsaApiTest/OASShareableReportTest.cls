@isTest
private class OASShareableReportTest {
    @isTest
    private static void equalsSameInstance() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = shareableReport1;
        OASShareableReport shareableReport3 = new OASShareableReport();
        OASShareableReport shareableReport4 = shareableReport3;

        System.assert(shareableReport1.equals(shareableReport2));
        System.assert(shareableReport2.equals(shareableReport1));
        System.assert(shareableReport1.equals(shareableReport1));
        System.assert(shareableReport3.equals(shareableReport4));
        System.assert(shareableReport4.equals(shareableReport3));
        System.assert(shareableReport3.equals(shareableReport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = OASShareableReport.getExample();
        OASShareableReport shareableReport3 = new OASShareableReport();
        OASShareableReport shareableReport4 = new OASShareableReport();

        System.assert(shareableReport1.equals(shareableReport2));
        System.assert(shareableReport2.equals(shareableReport1));
        System.assert(shareableReport3.equals(shareableReport4));
        System.assert(shareableReport4.equals(shareableReport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = new OASShareableReport();

        System.assertEquals(false, shareableReport1.equals('foo'));
        System.assertEquals(false, shareableReport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = new OASShareableReport();
        OASShareableReport shareableReport3;

        System.assertEquals(false, shareableReport1.equals(shareableReport3));
        System.assertEquals(false, shareableReport2.equals(shareableReport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = new OASShareableReport();

        System.assertEquals(shareableReport1.hashCode(), shareableReport1.hashCode());
        System.assertEquals(shareableReport2.hashCode(), shareableReport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASShareableReport shareableReport1 = OASShareableReport.getExample();
        OASShareableReport shareableReport2 = OASShareableReport.getExample();
        OASShareableReport shareableReport3 = new OASShareableReport();
        OASShareableReport shareableReport4 = new OASShareableReport();

        System.assert(shareableReport1.equals(shareableReport2));
        System.assert(shareableReport3.equals(shareableReport4));
        System.assertEquals(shareableReport1.hashCode(), shareableReport2.hashCode());
        System.assertEquals(shareableReport3.hashCode(), shareableReport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASShareableReport shareableReport = new OASShareableReport();
        Map<String, String> propertymappings = shareableReport.getPropertyMappings();
        System.assertEquals('shareableReport', propertymappings.get('shareable_report'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}