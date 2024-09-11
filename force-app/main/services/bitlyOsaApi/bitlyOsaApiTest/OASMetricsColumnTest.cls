@isTest
private class OASMetricsColumnTest {
    @isTest
    private static void equalsSameInstance() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = metricsColumn1;
        OASMetricsColumn metricsColumn3 = new OASMetricsColumn();
        OASMetricsColumn metricsColumn4 = metricsColumn3;

        System.assert(metricsColumn1.equals(metricsColumn2));
        System.assert(metricsColumn2.equals(metricsColumn1));
        System.assert(metricsColumn1.equals(metricsColumn1));
        System.assert(metricsColumn3.equals(metricsColumn4));
        System.assert(metricsColumn4.equals(metricsColumn3));
        System.assert(metricsColumn3.equals(metricsColumn3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn3 = new OASMetricsColumn();
        OASMetricsColumn metricsColumn4 = new OASMetricsColumn();

        System.assert(metricsColumn1.equals(metricsColumn2));
        System.assert(metricsColumn2.equals(metricsColumn1));
        System.assert(metricsColumn3.equals(metricsColumn4));
        System.assert(metricsColumn4.equals(metricsColumn3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = new OASMetricsColumn();

        System.assertEquals(false, metricsColumn1.equals('foo'));
        System.assertEquals(false, metricsColumn2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = new OASMetricsColumn();
        OASMetricsColumn metricsColumn3;

        System.assertEquals(false, metricsColumn1.equals(metricsColumn3));
        System.assertEquals(false, metricsColumn2.equals(metricsColumn3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = new OASMetricsColumn();

        System.assertEquals(metricsColumn1.hashCode(), metricsColumn1.hashCode());
        System.assertEquals(metricsColumn2.hashCode(), metricsColumn2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMetricsColumn metricsColumn1 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn2 = OASMetricsColumn.getExample();
        OASMetricsColumn metricsColumn3 = new OASMetricsColumn();
        OASMetricsColumn metricsColumn4 = new OASMetricsColumn();

        System.assert(metricsColumn1.equals(metricsColumn2));
        System.assert(metricsColumn3.equals(metricsColumn4));
        System.assertEquals(metricsColumn1.hashCode(), metricsColumn2.hashCode());
        System.assertEquals(metricsColumn3.hashCode(), metricsColumn4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASMetricsColumn metricsColumn = new OASMetricsColumn();
        Map<String, String> propertymappings = metricsColumn.getPropertyMappings();
        System.assertEquals('unixFrom', propertymappings.get('unix_from'));
        System.assertEquals('unixTo', propertymappings.get('unix_to'));
        System.assertEquals('csvHeaderPrefix', propertymappings.get('csv_header_prefix'));
        System.assertEquals('minimumCount', propertymappings.get('minimum_count'));
    }
}