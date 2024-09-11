@isTest
private class OASChartVisualizationTest {
    @isTest
    private static void equalsSameInstance() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = chartVisualization1;
        OASChartVisualization chartVisualization3 = new OASChartVisualization();
        OASChartVisualization chartVisualization4 = chartVisualization3;

        System.assert(chartVisualization1.equals(chartVisualization2));
        System.assert(chartVisualization2.equals(chartVisualization1));
        System.assert(chartVisualization1.equals(chartVisualization1));
        System.assert(chartVisualization3.equals(chartVisualization4));
        System.assert(chartVisualization4.equals(chartVisualization3));
        System.assert(chartVisualization3.equals(chartVisualization3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization3 = new OASChartVisualization();
        OASChartVisualization chartVisualization4 = new OASChartVisualization();

        System.assert(chartVisualization1.equals(chartVisualization2));
        System.assert(chartVisualization2.equals(chartVisualization1));
        System.assert(chartVisualization3.equals(chartVisualization4));
        System.assert(chartVisualization4.equals(chartVisualization3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = new OASChartVisualization();

        System.assertEquals(false, chartVisualization1.equals('foo'));
        System.assertEquals(false, chartVisualization2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = new OASChartVisualization();
        OASChartVisualization chartVisualization3;

        System.assertEquals(false, chartVisualization1.equals(chartVisualization3));
        System.assertEquals(false, chartVisualization2.equals(chartVisualization3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = new OASChartVisualization();

        System.assertEquals(chartVisualization1.hashCode(), chartVisualization1.hashCode());
        System.assertEquals(chartVisualization2.hashCode(), chartVisualization2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASChartVisualization chartVisualization1 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization2 = OASChartVisualization.getExample();
        OASChartVisualization chartVisualization3 = new OASChartVisualization();
        OASChartVisualization chartVisualization4 = new OASChartVisualization();

        System.assert(chartVisualization1.equals(chartVisualization2));
        System.assert(chartVisualization3.equals(chartVisualization4));
        System.assertEquals(chartVisualization1.hashCode(), chartVisualization2.hashCode());
        System.assertEquals(chartVisualization3.hashCode(), chartVisualization4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASChartVisualization chartVisualization = new OASChartVisualization();
        Map<String, String> propertymappings = chartVisualization.getPropertyMappings();
        System.assertEquals('timeComparisonDetails', propertymappings.get('time_comparison_details'));
    }
}