@isTest
private class OASLinksReportRequestResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = linksReportRequestResponse1;
        OASLinksReportRequestResponse linksReportRequestResponse3 = new OASLinksReportRequestResponse();
        OASLinksReportRequestResponse linksReportRequestResponse4 = linksReportRequestResponse3;

        System.assert(linksReportRequestResponse1.equals(linksReportRequestResponse2));
        System.assert(linksReportRequestResponse2.equals(linksReportRequestResponse1));
        System.assert(linksReportRequestResponse1.equals(linksReportRequestResponse1));
        System.assert(linksReportRequestResponse3.equals(linksReportRequestResponse4));
        System.assert(linksReportRequestResponse4.equals(linksReportRequestResponse3));
        System.assert(linksReportRequestResponse3.equals(linksReportRequestResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse3 = new OASLinksReportRequestResponse();
        OASLinksReportRequestResponse linksReportRequestResponse4 = new OASLinksReportRequestResponse();

        System.assert(linksReportRequestResponse1.equals(linksReportRequestResponse2));
        System.assert(linksReportRequestResponse2.equals(linksReportRequestResponse1));
        System.assert(linksReportRequestResponse3.equals(linksReportRequestResponse4));
        System.assert(linksReportRequestResponse4.equals(linksReportRequestResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = new OASLinksReportRequestResponse();

        System.assertEquals(false, linksReportRequestResponse1.equals('foo'));
        System.assertEquals(false, linksReportRequestResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = new OASLinksReportRequestResponse();
        OASLinksReportRequestResponse linksReportRequestResponse3;

        System.assertEquals(false, linksReportRequestResponse1.equals(linksReportRequestResponse3));
        System.assertEquals(false, linksReportRequestResponse2.equals(linksReportRequestResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = new OASLinksReportRequestResponse();

        System.assertEquals(linksReportRequestResponse1.hashCode(), linksReportRequestResponse1.hashCode());
        System.assertEquals(linksReportRequestResponse2.hashCode(), linksReportRequestResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLinksReportRequestResponse linksReportRequestResponse1 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse2 = OASLinksReportRequestResponse.getExample();
        OASLinksReportRequestResponse linksReportRequestResponse3 = new OASLinksReportRequestResponse();
        OASLinksReportRequestResponse linksReportRequestResponse4 = new OASLinksReportRequestResponse();

        System.assert(linksReportRequestResponse1.equals(linksReportRequestResponse2));
        System.assert(linksReportRequestResponse3.equals(linksReportRequestResponse4));
        System.assertEquals(linksReportRequestResponse1.hashCode(), linksReportRequestResponse2.hashCode());
        System.assertEquals(linksReportRequestResponse3.hashCode(), linksReportRequestResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLinksReportRequestResponse linksReportRequestResponse = new OASLinksReportRequestResponse();
        Map<String, String> propertymappings = linksReportRequestResponse.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLinksReportRequestResponse linksReportRequestResponse = new OASLinksReportRequestResponse();
        System.assertEquals(new List<OASLinksReportRequestResponseRowsInn>(), linksReportRequestResponse.rows);
        System.assertEquals(null, linksReportRequestResponse.brandGuid);
    }
}