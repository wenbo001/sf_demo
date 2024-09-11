@isTest
private class OASLinksReportRequestBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = linksReportRequestBody1;
        OASLinksReportRequestBody linksReportRequestBody3 = new OASLinksReportRequestBody();
        OASLinksReportRequestBody linksReportRequestBody4 = linksReportRequestBody3;

        System.assert(linksReportRequestBody1.equals(linksReportRequestBody2));
        System.assert(linksReportRequestBody2.equals(linksReportRequestBody1));
        System.assert(linksReportRequestBody1.equals(linksReportRequestBody1));
        System.assert(linksReportRequestBody3.equals(linksReportRequestBody4));
        System.assert(linksReportRequestBody4.equals(linksReportRequestBody3));
        System.assert(linksReportRequestBody3.equals(linksReportRequestBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody3 = new OASLinksReportRequestBody();
        OASLinksReportRequestBody linksReportRequestBody4 = new OASLinksReportRequestBody();

        System.assert(linksReportRequestBody1.equals(linksReportRequestBody2));
        System.assert(linksReportRequestBody2.equals(linksReportRequestBody1));
        System.assert(linksReportRequestBody3.equals(linksReportRequestBody4));
        System.assert(linksReportRequestBody4.equals(linksReportRequestBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = new OASLinksReportRequestBody();

        System.assertEquals(false, linksReportRequestBody1.equals('foo'));
        System.assertEquals(false, linksReportRequestBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = new OASLinksReportRequestBody();
        OASLinksReportRequestBody linksReportRequestBody3;

        System.assertEquals(false, linksReportRequestBody1.equals(linksReportRequestBody3));
        System.assertEquals(false, linksReportRequestBody2.equals(linksReportRequestBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = new OASLinksReportRequestBody();

        System.assertEquals(linksReportRequestBody1.hashCode(), linksReportRequestBody1.hashCode());
        System.assertEquals(linksReportRequestBody2.hashCode(), linksReportRequestBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLinksReportRequestBody linksReportRequestBody1 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody2 = OASLinksReportRequestBody.getExample();
        OASLinksReportRequestBody linksReportRequestBody3 = new OASLinksReportRequestBody();
        OASLinksReportRequestBody linksReportRequestBody4 = new OASLinksReportRequestBody();

        System.assert(linksReportRequestBody1.equals(linksReportRequestBody2));
        System.assert(linksReportRequestBody3.equals(linksReportRequestBody4));
        System.assertEquals(linksReportRequestBody1.hashCode(), linksReportRequestBody2.hashCode());
        System.assertEquals(linksReportRequestBody3.hashCode(), linksReportRequestBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLinksReportRequestBody linksReportRequestBody = new OASLinksReportRequestBody();
        Map<String, String> propertymappings = linksReportRequestBody.getPropertyMappings();
        System.assertEquals('includeMaxHistory', propertymappings.get('include_max_history'));
        System.assertEquals('includeMaxTimePeriod', propertymappings.get('include_max_time_period'));
        System.assertEquals('bitlinkIds', propertymappings.get('bitlink_ids'));
        System.assertEquals('timePeriods', propertymappings.get('time_periods'));
        System.assertEquals('metricsColumns', propertymappings.get('metrics_columns'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLinksReportRequestBody linksReportRequestBody = new OASLinksReportRequestBody();
        System.assertEquals(new List<String>(), linksReportRequestBody.bitlinkIds);
        System.assertEquals(new List<OASTimePeriod>(), linksReportRequestBody.timePeriods);
        System.assertEquals(new List<OASMetricsColumn>(), linksReportRequestBody.metricsColumns);
        System.assertEquals(null, linksReportRequestBody.includeMaxHistory);
        System.assertEquals(null, linksReportRequestBody.includeMaxTimePeriod);
    }
}