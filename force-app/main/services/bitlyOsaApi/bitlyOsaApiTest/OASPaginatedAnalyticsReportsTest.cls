@isTest
private class OASPaginatedAnalyticsReportsTest {
    @isTest
    private static void equalsSameInstance() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = paginatedAnalyticsReports1;
        OASPaginatedAnalyticsReports paginatedAnalyticsReports3 = new OASPaginatedAnalyticsReports();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports4 = paginatedAnalyticsReports3;

        System.assert(paginatedAnalyticsReports1.equals(paginatedAnalyticsReports2));
        System.assert(paginatedAnalyticsReports2.equals(paginatedAnalyticsReports1));
        System.assert(paginatedAnalyticsReports1.equals(paginatedAnalyticsReports1));
        System.assert(paginatedAnalyticsReports3.equals(paginatedAnalyticsReports4));
        System.assert(paginatedAnalyticsReports4.equals(paginatedAnalyticsReports3));
        System.assert(paginatedAnalyticsReports3.equals(paginatedAnalyticsReports3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports3 = new OASPaginatedAnalyticsReports();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports4 = new OASPaginatedAnalyticsReports();

        System.assert(paginatedAnalyticsReports1.equals(paginatedAnalyticsReports2));
        System.assert(paginatedAnalyticsReports2.equals(paginatedAnalyticsReports1));
        System.assert(paginatedAnalyticsReports3.equals(paginatedAnalyticsReports4));
        System.assert(paginatedAnalyticsReports4.equals(paginatedAnalyticsReports3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = new OASPaginatedAnalyticsReports();

        System.assertEquals(false, paginatedAnalyticsReports1.equals('foo'));
        System.assertEquals(false, paginatedAnalyticsReports2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = new OASPaginatedAnalyticsReports();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports3;

        System.assertEquals(false, paginatedAnalyticsReports1.equals(paginatedAnalyticsReports3));
        System.assertEquals(false, paginatedAnalyticsReports2.equals(paginatedAnalyticsReports3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = new OASPaginatedAnalyticsReports();

        System.assertEquals(paginatedAnalyticsReports1.hashCode(), paginatedAnalyticsReports1.hashCode());
        System.assertEquals(paginatedAnalyticsReports2.hashCode(), paginatedAnalyticsReports2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports1 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports2 = OASPaginatedAnalyticsReports.getExample();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports3 = new OASPaginatedAnalyticsReports();
        OASPaginatedAnalyticsReports paginatedAnalyticsReports4 = new OASPaginatedAnalyticsReports();

        System.assert(paginatedAnalyticsReports1.equals(paginatedAnalyticsReports2));
        System.assert(paginatedAnalyticsReports3.equals(paginatedAnalyticsReports4));
        System.assertEquals(paginatedAnalyticsReports1.hashCode(), paginatedAnalyticsReports2.hashCode());
        System.assertEquals(paginatedAnalyticsReports3.hashCode(), paginatedAnalyticsReports4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports = new OASPaginatedAnalyticsReports();
        Map<String, String> propertymappings = paginatedAnalyticsReports.getPropertyMappings();
        System.assertEquals('totalFound', propertymappings.get('total_found'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPaginatedAnalyticsReports paginatedAnalyticsReports = new OASPaginatedAnalyticsReports();
        System.assertEquals(new List<OASAnalyticsReport>(), paginatedAnalyticsReports.reports);
        System.assertEquals(null, paginatedAnalyticsReports.page);
        System.assertEquals(null, paginatedAnalyticsReports.size);
        System.assertEquals(null, paginatedAnalyticsReports.totalFound);
    }
}