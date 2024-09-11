@isTest
private class OASKeepSitesRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = keepSitesRequest1;
        OASKeepSitesRequest keepSitesRequest3 = new OASKeepSitesRequest();
        OASKeepSitesRequest keepSitesRequest4 = keepSitesRequest3;

        System.assert(keepSitesRequest1.equals(keepSitesRequest2));
        System.assert(keepSitesRequest2.equals(keepSitesRequest1));
        System.assert(keepSitesRequest1.equals(keepSitesRequest1));
        System.assert(keepSitesRequest3.equals(keepSitesRequest4));
        System.assert(keepSitesRequest4.equals(keepSitesRequest3));
        System.assert(keepSitesRequest3.equals(keepSitesRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest3 = new OASKeepSitesRequest();
        OASKeepSitesRequest keepSitesRequest4 = new OASKeepSitesRequest();

        System.assert(keepSitesRequest1.equals(keepSitesRequest2));
        System.assert(keepSitesRequest2.equals(keepSitesRequest1));
        System.assert(keepSitesRequest3.equals(keepSitesRequest4));
        System.assert(keepSitesRequest4.equals(keepSitesRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = new OASKeepSitesRequest();

        System.assertEquals(false, keepSitesRequest1.equals('foo'));
        System.assertEquals(false, keepSitesRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = new OASKeepSitesRequest();
        OASKeepSitesRequest keepSitesRequest3;

        System.assertEquals(false, keepSitesRequest1.equals(keepSitesRequest3));
        System.assertEquals(false, keepSitesRequest2.equals(keepSitesRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = new OASKeepSitesRequest();

        System.assertEquals(keepSitesRequest1.hashCode(), keepSitesRequest1.hashCode());
        System.assertEquals(keepSitesRequest2.hashCode(), keepSitesRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASKeepSitesRequest keepSitesRequest1 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest2 = OASKeepSitesRequest.getExample();
        OASKeepSitesRequest keepSitesRequest3 = new OASKeepSitesRequest();
        OASKeepSitesRequest keepSitesRequest4 = new OASKeepSitesRequest();

        System.assert(keepSitesRequest1.equals(keepSitesRequest2));
        System.assert(keepSitesRequest3.equals(keepSitesRequest4));
        System.assertEquals(keepSitesRequest1.hashCode(), keepSitesRequest2.hashCode());
        System.assertEquals(keepSitesRequest3.hashCode(), keepSitesRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASKeepSitesRequest keepSitesRequest = new OASKeepSitesRequest();
        Map<String, String> propertymappings = keepSitesRequest.getPropertyMappings();
        System.assertEquals('keepSites', propertymappings.get('keep_sites'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASKeepSitesRequest keepSitesRequest = new OASKeepSitesRequest();
        System.assertEquals(new List<String>(), keepSitesRequest.keepSites);
    }
}