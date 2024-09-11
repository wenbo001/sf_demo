@isTest
private class OASProductUtilizationResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = productUtilizationResponse1;
        OASProductUtilizationResponse productUtilizationResponse3 = new OASProductUtilizationResponse();
        OASProductUtilizationResponse productUtilizationResponse4 = productUtilizationResponse3;

        System.assert(productUtilizationResponse1.equals(productUtilizationResponse2));
        System.assert(productUtilizationResponse2.equals(productUtilizationResponse1));
        System.assert(productUtilizationResponse1.equals(productUtilizationResponse1));
        System.assert(productUtilizationResponse3.equals(productUtilizationResponse4));
        System.assert(productUtilizationResponse4.equals(productUtilizationResponse3));
        System.assert(productUtilizationResponse3.equals(productUtilizationResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse3 = new OASProductUtilizationResponse();
        OASProductUtilizationResponse productUtilizationResponse4 = new OASProductUtilizationResponse();

        System.assert(productUtilizationResponse1.equals(productUtilizationResponse2));
        System.assert(productUtilizationResponse2.equals(productUtilizationResponse1));
        System.assert(productUtilizationResponse3.equals(productUtilizationResponse4));
        System.assert(productUtilizationResponse4.equals(productUtilizationResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = new OASProductUtilizationResponse();

        System.assertEquals(false, productUtilizationResponse1.equals('foo'));
        System.assertEquals(false, productUtilizationResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = new OASProductUtilizationResponse();
        OASProductUtilizationResponse productUtilizationResponse3;

        System.assertEquals(false, productUtilizationResponse1.equals(productUtilizationResponse3));
        System.assertEquals(false, productUtilizationResponse2.equals(productUtilizationResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = new OASProductUtilizationResponse();

        System.assertEquals(productUtilizationResponse1.hashCode(), productUtilizationResponse1.hashCode());
        System.assertEquals(productUtilizationResponse2.hashCode(), productUtilizationResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASProductUtilizationResponse productUtilizationResponse1 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse2 = OASProductUtilizationResponse.getExample();
        OASProductUtilizationResponse productUtilizationResponse3 = new OASProductUtilizationResponse();
        OASProductUtilizationResponse productUtilizationResponse4 = new OASProductUtilizationResponse();

        System.assert(productUtilizationResponse1.equals(productUtilizationResponse2));
        System.assert(productUtilizationResponse3.equals(productUtilizationResponse4));
        System.assertEquals(productUtilizationResponse1.hashCode(), productUtilizationResponse2.hashCode());
        System.assertEquals(productUtilizationResponse3.hashCode(), productUtilizationResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASProductUtilizationResponse productUtilizationResponse = new OASProductUtilizationResponse();
        Map<String, String> propertymappings = productUtilizationResponse.getPropertyMappings();
        System.assertEquals('linkCreated', propertymappings.get('link_created'));
        System.assertEquals('qrCodeCreated', propertymappings.get('qr_code_created'));
        System.assertEquals('libCreated', propertymappings.get('lib_created'));
        System.assertEquals('analyticsDashboardCreated', propertymappings.get('analytics_dashboard_created'));
    }
}