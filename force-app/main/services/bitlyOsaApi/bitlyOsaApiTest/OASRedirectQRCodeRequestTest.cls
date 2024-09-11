@isTest
private class OASRedirectQRCodeRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = redirectQRCodeRequest1;
        OASRedirectQRCodeRequest redirectQRCodeRequest3 = new OASRedirectQRCodeRequest();
        OASRedirectQRCodeRequest redirectQRCodeRequest4 = redirectQRCodeRequest3;

        System.assert(redirectQRCodeRequest1.equals(redirectQRCodeRequest2));
        System.assert(redirectQRCodeRequest2.equals(redirectQRCodeRequest1));
        System.assert(redirectQRCodeRequest1.equals(redirectQRCodeRequest1));
        System.assert(redirectQRCodeRequest3.equals(redirectQRCodeRequest4));
        System.assert(redirectQRCodeRequest4.equals(redirectQRCodeRequest3));
        System.assert(redirectQRCodeRequest3.equals(redirectQRCodeRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest3 = new OASRedirectQRCodeRequest();
        OASRedirectQRCodeRequest redirectQRCodeRequest4 = new OASRedirectQRCodeRequest();

        System.assert(redirectQRCodeRequest1.equals(redirectQRCodeRequest2));
        System.assert(redirectQRCodeRequest2.equals(redirectQRCodeRequest1));
        System.assert(redirectQRCodeRequest3.equals(redirectQRCodeRequest4));
        System.assert(redirectQRCodeRequest4.equals(redirectQRCodeRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = new OASRedirectQRCodeRequest();

        System.assertEquals(false, redirectQRCodeRequest1.equals('foo'));
        System.assertEquals(false, redirectQRCodeRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = new OASRedirectQRCodeRequest();
        OASRedirectQRCodeRequest redirectQRCodeRequest3;

        System.assertEquals(false, redirectQRCodeRequest1.equals(redirectQRCodeRequest3));
        System.assertEquals(false, redirectQRCodeRequest2.equals(redirectQRCodeRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = new OASRedirectQRCodeRequest();

        System.assertEquals(redirectQRCodeRequest1.hashCode(), redirectQRCodeRequest1.hashCode());
        System.assertEquals(redirectQRCodeRequest2.hashCode(), redirectQRCodeRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRedirectQRCodeRequest redirectQRCodeRequest1 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest2 = OASRedirectQRCodeRequest.getExample();
        OASRedirectQRCodeRequest redirectQRCodeRequest3 = new OASRedirectQRCodeRequest();
        OASRedirectQRCodeRequest redirectQRCodeRequest4 = new OASRedirectQRCodeRequest();

        System.assert(redirectQRCodeRequest1.equals(redirectQRCodeRequest2));
        System.assert(redirectQRCodeRequest3.equals(redirectQRCodeRequest4));
        System.assertEquals(redirectQRCodeRequest1.hashCode(), redirectQRCodeRequest2.hashCode());
        System.assertEquals(redirectQRCodeRequest3.hashCode(), redirectQRCodeRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRedirectQRCodeRequest redirectQRCodeRequest = new OASRedirectQRCodeRequest();
        Map<String, String> propertymappings = redirectQRCodeRequest.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
    }
}