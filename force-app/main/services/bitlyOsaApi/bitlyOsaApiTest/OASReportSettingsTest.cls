@isTest
private class OASReportSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = reportSettings1;
        OASReportSettings reportSettings3 = new OASReportSettings();
        OASReportSettings reportSettings4 = reportSettings3;

        System.assert(reportSettings1.equals(reportSettings2));
        System.assert(reportSettings2.equals(reportSettings1));
        System.assert(reportSettings1.equals(reportSettings1));
        System.assert(reportSettings3.equals(reportSettings4));
        System.assert(reportSettings4.equals(reportSettings3));
        System.assert(reportSettings3.equals(reportSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = OASReportSettings.getExample();
        OASReportSettings reportSettings3 = new OASReportSettings();
        OASReportSettings reportSettings4 = new OASReportSettings();

        System.assert(reportSettings1.equals(reportSettings2));
        System.assert(reportSettings2.equals(reportSettings1));
        System.assert(reportSettings3.equals(reportSettings4));
        System.assert(reportSettings4.equals(reportSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = new OASReportSettings();

        System.assertEquals(false, reportSettings1.equals('foo'));
        System.assertEquals(false, reportSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = new OASReportSettings();
        OASReportSettings reportSettings3;

        System.assertEquals(false, reportSettings1.equals(reportSettings3));
        System.assertEquals(false, reportSettings2.equals(reportSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = new OASReportSettings();

        System.assertEquals(reportSettings1.hashCode(), reportSettings1.hashCode());
        System.assertEquals(reportSettings2.hashCode(), reportSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReportSettings reportSettings1 = OASReportSettings.getExample();
        OASReportSettings reportSettings2 = OASReportSettings.getExample();
        OASReportSettings reportSettings3 = new OASReportSettings();
        OASReportSettings reportSettings4 = new OASReportSettings();

        System.assert(reportSettings1.equals(reportSettings2));
        System.assert(reportSettings3.equals(reportSettings4));
        System.assertEquals(reportSettings1.hashCode(), reportSettings2.hashCode());
        System.assertEquals(reportSettings3.hashCode(), reportSettings4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASReportSettings reportSettings = new OASReportSettings();
        Map<String, String> propertymappings = reportSettings.getPropertyMappings();
        System.assertEquals('presetTimeRange', propertymappings.get('preset_time_range'));
        System.assertEquals('reportStart', propertymappings.get('report_start'));
        System.assertEquals('reportEnd', propertymappings.get('report_end'));
        System.assertEquals('allowEdits', propertymappings.get('allow_edits'));
        System.assertEquals('associatedModules', propertymappings.get('associated_modules'));
        System.assertEquals('reportContent', propertymappings.get('report_content'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReportSettings reportSettings = new OASReportSettings();
        System.assertEquals(new List<OASModule>(), reportSettings.associatedModules);
        System.assertEquals(null, reportSettings.presetTimeRange);
        System.assertEquals(null, reportSettings.reportStart);
        System.assertEquals(null, reportSettings.reportEnd);
        System.assertEquals(null, reportSettings.allowEdits);
        System.assertEquals(null, reportSettings.filters);
        System.assertEquals(null, reportSettings.reportContent);
    }
}