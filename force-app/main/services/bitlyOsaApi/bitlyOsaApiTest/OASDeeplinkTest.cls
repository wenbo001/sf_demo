@isTest
private class OASDeeplinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = deeplink1;
        OASDeeplink deeplink3 = new OASDeeplink();
        OASDeeplink deeplink4 = deeplink3;

        System.assert(deeplink1.equals(deeplink2));
        System.assert(deeplink2.equals(deeplink1));
        System.assert(deeplink1.equals(deeplink1));
        System.assert(deeplink3.equals(deeplink4));
        System.assert(deeplink4.equals(deeplink3));
        System.assert(deeplink3.equals(deeplink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = OASDeeplink.getExample();
        OASDeeplink deeplink3 = new OASDeeplink();
        OASDeeplink deeplink4 = new OASDeeplink();

        System.assert(deeplink1.equals(deeplink2));
        System.assert(deeplink2.equals(deeplink1));
        System.assert(deeplink3.equals(deeplink4));
        System.assert(deeplink4.equals(deeplink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = new OASDeeplink();

        System.assertEquals(false, deeplink1.equals('foo'));
        System.assertEquals(false, deeplink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = new OASDeeplink();
        OASDeeplink deeplink3;

        System.assertEquals(false, deeplink1.equals(deeplink3));
        System.assertEquals(false, deeplink2.equals(deeplink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = new OASDeeplink();

        System.assertEquals(deeplink1.hashCode(), deeplink1.hashCode());
        System.assertEquals(deeplink2.hashCode(), deeplink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplink deeplink1 = OASDeeplink.getExample();
        OASDeeplink deeplink2 = OASDeeplink.getExample();
        OASDeeplink deeplink3 = new OASDeeplink();
        OASDeeplink deeplink4 = new OASDeeplink();

        System.assert(deeplink1.equals(deeplink2));
        System.assert(deeplink3.equals(deeplink4));
        System.assertEquals(deeplink1.hashCode(), deeplink2.hashCode());
        System.assertEquals(deeplink3.hashCode(), deeplink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeeplink deeplink = new OASDeeplink();
        Map<String, String> propertymappings = deeplink.getPropertyMappings();
        System.assertEquals('appId', propertymappings.get('app_id'));
        System.assertEquals('appUriPath', propertymappings.get('app_uri_path'));
        System.assertEquals('installUrl', propertymappings.get('install_url'));
        System.assertEquals('installType', propertymappings.get('install_type'));
    }
}