@isTest
private class OASReportFiltersTest {
    @isTest
    private static void equalsSameInstance() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = reportFilters1;
        OASReportFilters reportFilters3 = new OASReportFilters();
        OASReportFilters reportFilters4 = reportFilters3;

        System.assert(reportFilters1.equals(reportFilters2));
        System.assert(reportFilters2.equals(reportFilters1));
        System.assert(reportFilters1.equals(reportFilters1));
        System.assert(reportFilters3.equals(reportFilters4));
        System.assert(reportFilters4.equals(reportFilters3));
        System.assert(reportFilters3.equals(reportFilters3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = OASReportFilters.getExample();
        OASReportFilters reportFilters3 = new OASReportFilters();
        OASReportFilters reportFilters4 = new OASReportFilters();

        System.assert(reportFilters1.equals(reportFilters2));
        System.assert(reportFilters2.equals(reportFilters1));
        System.assert(reportFilters3.equals(reportFilters4));
        System.assert(reportFilters4.equals(reportFilters3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = new OASReportFilters();

        System.assertEquals(false, reportFilters1.equals('foo'));
        System.assertEquals(false, reportFilters2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = new OASReportFilters();
        OASReportFilters reportFilters3;

        System.assertEquals(false, reportFilters1.equals(reportFilters3));
        System.assertEquals(false, reportFilters2.equals(reportFilters3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = new OASReportFilters();

        System.assertEquals(reportFilters1.hashCode(), reportFilters1.hashCode());
        System.assertEquals(reportFilters2.hashCode(), reportFilters2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReportFilters reportFilters1 = OASReportFilters.getExample();
        OASReportFilters reportFilters2 = OASReportFilters.getExample();
        OASReportFilters reportFilters3 = new OASReportFilters();
        OASReportFilters reportFilters4 = new OASReportFilters();

        System.assert(reportFilters1.equals(reportFilters2));
        System.assert(reportFilters3.equals(reportFilters4));
        System.assertEquals(reportFilters1.hashCode(), reportFilters2.hashCode());
        System.assertEquals(reportFilters3.hashCode(), reportFilters4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReportFilters reportFilters = new OASReportFilters();
        System.assertEquals(new List<String>(), reportFilters.bitlinks);
    }
}