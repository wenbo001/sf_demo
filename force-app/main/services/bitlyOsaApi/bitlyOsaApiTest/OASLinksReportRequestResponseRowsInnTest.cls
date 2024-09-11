@isTest
private class OASLinksReportRequestResponseRowsInnTest {
    @isTest
    private static void equalsSameInstance() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = linksReportRequestResponseRowsInner1;
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner3 = new OASLinksReportRequestResponseRowsInn();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner4 = linksReportRequestResponseRowsInner3;

        System.assert(linksReportRequestResponseRowsInner1.equals(linksReportRequestResponseRowsInner2));
        System.assert(linksReportRequestResponseRowsInner2.equals(linksReportRequestResponseRowsInner1));
        System.assert(linksReportRequestResponseRowsInner1.equals(linksReportRequestResponseRowsInner1));
        System.assert(linksReportRequestResponseRowsInner3.equals(linksReportRequestResponseRowsInner4));
        System.assert(linksReportRequestResponseRowsInner4.equals(linksReportRequestResponseRowsInner3));
        System.assert(linksReportRequestResponseRowsInner3.equals(linksReportRequestResponseRowsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner3 = new OASLinksReportRequestResponseRowsInn();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner4 = new OASLinksReportRequestResponseRowsInn();

        System.assert(linksReportRequestResponseRowsInner1.equals(linksReportRequestResponseRowsInner2));
        System.assert(linksReportRequestResponseRowsInner2.equals(linksReportRequestResponseRowsInner1));
        System.assert(linksReportRequestResponseRowsInner3.equals(linksReportRequestResponseRowsInner4));
        System.assert(linksReportRequestResponseRowsInner4.equals(linksReportRequestResponseRowsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = new OASLinksReportRequestResponseRowsInn();

        System.assertEquals(false, linksReportRequestResponseRowsInner1.equals('foo'));
        System.assertEquals(false, linksReportRequestResponseRowsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = new OASLinksReportRequestResponseRowsInn();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner3;

        System.assertEquals(false, linksReportRequestResponseRowsInner1.equals(linksReportRequestResponseRowsInner3));
        System.assertEquals(false, linksReportRequestResponseRowsInner2.equals(linksReportRequestResponseRowsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = new OASLinksReportRequestResponseRowsInn();

        System.assertEquals(linksReportRequestResponseRowsInner1.hashCode(), linksReportRequestResponseRowsInner1.hashCode());
        System.assertEquals(linksReportRequestResponseRowsInner2.hashCode(), linksReportRequestResponseRowsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner1 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner2 = OASLinksReportRequestResponseRowsInn.getExample();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner3 = new OASLinksReportRequestResponseRowsInn();
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner4 = new OASLinksReportRequestResponseRowsInn();

        System.assert(linksReportRequestResponseRowsInner1.equals(linksReportRequestResponseRowsInner2));
        System.assert(linksReportRequestResponseRowsInner3.equals(linksReportRequestResponseRowsInner4));
        System.assertEquals(linksReportRequestResponseRowsInner1.hashCode(), linksReportRequestResponseRowsInner2.hashCode());
        System.assertEquals(linksReportRequestResponseRowsInner3.hashCode(), linksReportRequestResponseRowsInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner = new OASLinksReportRequestResponseRowsInn();
        Map<String, String> propertymappings = linksReportRequestResponseRowsInner.getPropertyMappings();
        System.assertEquals('customBitlink', propertymappings.get('custom_bitlink'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLinksReportRequestResponseRowsInn linksReportRequestResponseRowsInner = new OASLinksReportRequestResponseRowsInn();
        System.assertEquals(new List<OASLinksReportRequestResponseRowsInn>(), linksReportRequestResponseRowsInner.metrics);
        System.assertEquals(null, linksReportRequestResponseRowsInner.bitlink);
        System.assertEquals(null, linksReportRequestResponseRowsInner.customBitlink);
        System.assertEquals(null, linksReportRequestResponseRowsInner.created);
        System.assertEquals(null, linksReportRequestResponseRowsInner.title);
        System.assertEquals(null, linksReportRequestResponseRowsInner.longUrl);
        System.assertEquals(null, linksReportRequestResponseRowsInner.status);
    }
}