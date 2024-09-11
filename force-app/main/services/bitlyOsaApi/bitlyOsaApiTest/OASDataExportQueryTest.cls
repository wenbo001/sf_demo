@isTest
private class OASDataExportQueryTest {
    @isTest
    private static void equalsSameInstance() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = dataExportQuery1;
        OASDataExportQuery dataExportQuery3 = new OASDataExportQuery();
        OASDataExportQuery dataExportQuery4 = dataExportQuery3;

        System.assert(dataExportQuery1.equals(dataExportQuery2));
        System.assert(dataExportQuery2.equals(dataExportQuery1));
        System.assert(dataExportQuery1.equals(dataExportQuery1));
        System.assert(dataExportQuery3.equals(dataExportQuery4));
        System.assert(dataExportQuery4.equals(dataExportQuery3));
        System.assert(dataExportQuery3.equals(dataExportQuery3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery3 = new OASDataExportQuery();
        OASDataExportQuery dataExportQuery4 = new OASDataExportQuery();

        System.assert(dataExportQuery1.equals(dataExportQuery2));
        System.assert(dataExportQuery2.equals(dataExportQuery1));
        System.assert(dataExportQuery3.equals(dataExportQuery4));
        System.assert(dataExportQuery4.equals(dataExportQuery3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = new OASDataExportQuery();

        System.assertEquals(false, dataExportQuery1.equals('foo'));
        System.assertEquals(false, dataExportQuery2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = new OASDataExportQuery();
        OASDataExportQuery dataExportQuery3;

        System.assertEquals(false, dataExportQuery1.equals(dataExportQuery3));
        System.assertEquals(false, dataExportQuery2.equals(dataExportQuery3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = new OASDataExportQuery();

        System.assertEquals(dataExportQuery1.hashCode(), dataExportQuery1.hashCode());
        System.assertEquals(dataExportQuery2.hashCode(), dataExportQuery2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDataExportQuery dataExportQuery1 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery2 = OASDataExportQuery.getExample();
        OASDataExportQuery dataExportQuery3 = new OASDataExportQuery();
        OASDataExportQuery dataExportQuery4 = new OASDataExportQuery();

        System.assert(dataExportQuery1.equals(dataExportQuery2));
        System.assert(dataExportQuery3.equals(dataExportQuery4));
        System.assertEquals(dataExportQuery1.hashCode(), dataExportQuery2.hashCode());
        System.assertEquals(dataExportQuery3.hashCode(), dataExportQuery4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDataExportQuery dataExportQuery = new OASDataExportQuery();
        Map<String, String> propertymappings = dataExportQuery.getPropertyMappings();
        System.assertEquals('reportType', propertymappings.get('report_type'));
        System.assertEquals('createdBefore', propertymappings.get('created_before'));
        System.assertEquals('createdAfter', propertymappings.get('created_after'));
        System.assertEquals('modifiedAfter', propertymappings.get('modified_after'));
        System.assertEquals('linkDeeplinks', propertymappings.get('link_deeplinks'));
        System.assertEquals('customBitlink', propertymappings.get('custom_bitlink'));
        System.assertEquals('campaignIds', propertymappings.get('campaign_ids'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('includeMaxHistory', propertymappings.get('include_max_history'));
        System.assertEquals('maxHistoryMinimumCount', propertymappings.get('max_history_minimum_count'));
        System.assertEquals('metricsColumns', propertymappings.get('metrics_columns'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDataExportQuery dataExportQuery = new OASDataExportQuery();
        System.assertEquals(new List<String>(), dataExportQuery.emails);
        System.assertEquals(new List<String>(), dataExportQuery.tags);
        System.assertEquals(new List<String>(), dataExportQuery.campaignIds);
        System.assertEquals(new List<OASMetricsColumn>(), dataExportQuery.metricsColumns);
        System.assertEquals(null, dataExportQuery.reportType);
        System.assertEquals(null, dataExportQuery.createdBefore);
        System.assertEquals(null, dataExportQuery.createdAfter);
        System.assertEquals(null, dataExportQuery.modifiedAfter);
        System.assertEquals(null, dataExportQuery.query);
        System.assertEquals(null, dataExportQuery.keyword);
        System.assertEquals(null, dataExportQuery.archived);
        System.assertEquals(null, dataExportQuery.linkDeeplinks);
        System.assertEquals(null, dataExportQuery.customBitlink);
        System.assertEquals(null, dataExportQuery.unit);
        System.assertEquals(null, dataExportQuery.units);
        System.assertEquals(null, dataExportQuery.unitReference);
        System.assertEquals(null, dataExportQuery.includeMaxHistory);
        System.assertEquals(null, dataExportQuery.maxHistoryMinimumCount);
    }
}