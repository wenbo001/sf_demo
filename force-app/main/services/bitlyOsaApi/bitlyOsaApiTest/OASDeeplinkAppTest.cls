@isTest
private class OASDeeplinkAppTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = deeplinkApp1;
        OASDeeplinkApp deeplinkApp3 = new OASDeeplinkApp();
        OASDeeplinkApp deeplinkApp4 = deeplinkApp3;

        System.assert(deeplinkApp1.equals(deeplinkApp2));
        System.assert(deeplinkApp2.equals(deeplinkApp1));
        System.assert(deeplinkApp1.equals(deeplinkApp1));
        System.assert(deeplinkApp3.equals(deeplinkApp4));
        System.assert(deeplinkApp4.equals(deeplinkApp3));
        System.assert(deeplinkApp3.equals(deeplinkApp3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp3 = new OASDeeplinkApp();
        OASDeeplinkApp deeplinkApp4 = new OASDeeplinkApp();

        System.assert(deeplinkApp1.equals(deeplinkApp2));
        System.assert(deeplinkApp2.equals(deeplinkApp1));
        System.assert(deeplinkApp3.equals(deeplinkApp4));
        System.assert(deeplinkApp4.equals(deeplinkApp3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = new OASDeeplinkApp();

        System.assertEquals(false, deeplinkApp1.equals('foo'));
        System.assertEquals(false, deeplinkApp2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = new OASDeeplinkApp();
        OASDeeplinkApp deeplinkApp3;

        System.assertEquals(false, deeplinkApp1.equals(deeplinkApp3));
        System.assertEquals(false, deeplinkApp2.equals(deeplinkApp3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = new OASDeeplinkApp();

        System.assertEquals(deeplinkApp1.hashCode(), deeplinkApp1.hashCode());
        System.assertEquals(deeplinkApp2.hashCode(), deeplinkApp2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkApp deeplinkApp1 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp2 = OASDeeplinkApp.getExample();
        OASDeeplinkApp deeplinkApp3 = new OASDeeplinkApp();
        OASDeeplinkApp deeplinkApp4 = new OASDeeplinkApp();

        System.assert(deeplinkApp1.equals(deeplinkApp2));
        System.assert(deeplinkApp3.equals(deeplinkApp4));
        System.assertEquals(deeplinkApp1.hashCode(), deeplinkApp2.hashCode());
        System.assertEquals(deeplinkApp3.hashCode(), deeplinkApp4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeeplinkApp deeplinkApp = new OASDeeplinkApp();
        Map<String, String> propertymappings = deeplinkApp.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('thirdPartyAppId', propertymappings.get('third_party_app_id'));
        System.assertEquals('iconUrl', propertymappings.get('icon_url'));
        System.assertEquals('installUrl', propertymappings.get('install_url'));
        System.assertEquals('modifiedTs', propertymappings.get('modified_ts'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('legacyAppId', propertymappings.get('legacy_app_id'));
        System.assertEquals('appleAppEntitlementId', propertymappings.get('apple_app_entitlement_id'));
        System.assertEquals('androidSha256', propertymappings.get('android_sha256'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeeplinkApp deeplinkApp = new OASDeeplinkApp();
        System.assertEquals(new List<String>(), deeplinkApp.androidSha256);
        System.assertEquals(null, deeplinkApp.guid);
        System.assertEquals(null, deeplinkApp.organizationGuid);
        System.assertEquals(null, deeplinkApp.thirdPartyAppId);
        System.assertEquals(null, deeplinkApp.scheme);
        System.assertEquals(null, deeplinkApp.name);
        System.assertEquals(null, deeplinkApp.iconUrl);
        System.assertEquals(null, deeplinkApp.installUrl);
        System.assertEquals(null, deeplinkApp.os);
        System.assertEquals(null, deeplinkApp.modifiedTs);
        System.assertEquals(null, deeplinkApp.createdTs);
        System.assertEquals(null, deeplinkApp.legacyAppId);
        System.assertEquals(null, deeplinkApp.appleAppEntitlementId);
    }
}