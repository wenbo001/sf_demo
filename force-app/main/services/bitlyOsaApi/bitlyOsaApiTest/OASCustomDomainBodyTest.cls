@isTest
private class OASCustomDomainBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = customDomainBody1;
        OASCustomDomainBody customDomainBody3 = new OASCustomDomainBody();
        OASCustomDomainBody customDomainBody4 = customDomainBody3;

        System.assert(customDomainBody1.equals(customDomainBody2));
        System.assert(customDomainBody2.equals(customDomainBody1));
        System.assert(customDomainBody1.equals(customDomainBody1));
        System.assert(customDomainBody3.equals(customDomainBody4));
        System.assert(customDomainBody4.equals(customDomainBody3));
        System.assert(customDomainBody3.equals(customDomainBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody3 = new OASCustomDomainBody();
        OASCustomDomainBody customDomainBody4 = new OASCustomDomainBody();

        System.assert(customDomainBody1.equals(customDomainBody2));
        System.assert(customDomainBody2.equals(customDomainBody1));
        System.assert(customDomainBody3.equals(customDomainBody4));
        System.assert(customDomainBody4.equals(customDomainBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = new OASCustomDomainBody();

        System.assertEquals(false, customDomainBody1.equals('foo'));
        System.assertEquals(false, customDomainBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = new OASCustomDomainBody();
        OASCustomDomainBody customDomainBody3;

        System.assertEquals(false, customDomainBody1.equals(customDomainBody3));
        System.assertEquals(false, customDomainBody2.equals(customDomainBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = new OASCustomDomainBody();

        System.assertEquals(customDomainBody1.hashCode(), customDomainBody1.hashCode());
        System.assertEquals(customDomainBody2.hashCode(), customDomainBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomDomainBody customDomainBody1 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody2 = OASCustomDomainBody.getExample();
        OASCustomDomainBody customDomainBody3 = new OASCustomDomainBody();
        OASCustomDomainBody customDomainBody4 = new OASCustomDomainBody();

        System.assert(customDomainBody1.equals(customDomainBody2));
        System.assert(customDomainBody3.equals(customDomainBody4));
        System.assertEquals(customDomainBody1.hashCode(), customDomainBody2.hashCode());
        System.assertEquals(customDomainBody3.hashCode(), customDomainBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomDomainBody customDomainBody = new OASCustomDomainBody();
        Map<String, String> propertymappings = customDomainBody.getPropertyMappings();
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('groupGuids', propertymappings.get('group_guids'));
        System.assertEquals('sslConfigurationError', propertymappings.get('ssl_configuration_error'));
        System.assertEquals('configurationLastCheckTs', propertymappings.get('configuration_last_check_ts'));
        System.assertEquals('rootRedirect', propertymappings.get('root_redirect'));
        System.assertEquals('httpsBitlinks', propertymappings.get('https_bitlinks'));
        System.assertEquals('sslAutoconfigureError', propertymappings.get('ssl_autoconfigure_error'));
        System.assertEquals('httpsEnabled', propertymappings.get('https_enabled'));
        System.assertEquals('hstsEnabled', propertymappings.get('hsts_enabled'));
        System.assertEquals('wildcardRedirect', propertymappings.get('wildcard_redirect'));
        System.assertEquals('validationStatus', propertymappings.get('validation_status'));
        System.assertEquals('validationError', propertymappings.get('validation_error'));
        System.assertEquals('deeplinkApps', propertymappings.get('deeplink_apps'));
        System.assertEquals('upgradeInsecureRequests', propertymappings.get('upgrade_insecure_requests'));
        System.assertEquals('sslCert', propertymappings.get('ssl_cert'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomDomainBody customDomainBody = new OASCustomDomainBody();
        System.assertEquals(new List<String>(), customDomainBody.groupGuids);
        System.assertEquals(new List<OASMinimalDeeplinkApp>(), customDomainBody.deeplinkApps);
        System.assertEquals(null, customDomainBody.customDomain);
        System.assertEquals(null, customDomainBody.isActive);
        System.assertEquals(null, customDomainBody.sslConfigurationError);
        System.assertEquals(null, customDomainBody.configurationLastCheckTs);
        System.assertEquals(null, customDomainBody.rootRedirect);
        System.assertEquals(null, customDomainBody.httpsBitlinks);
        System.assertEquals(null, customDomainBody.sslAutoconfigureError);
        System.assertEquals(null, customDomainBody.httpsEnabled);
        System.assertEquals(null, customDomainBody.hstsEnabled);
        System.assertEquals(null, customDomainBody.created);
        System.assertEquals(null, customDomainBody.wildcardRedirect);
        System.assertEquals(null, customDomainBody.validationStatus);
        System.assertEquals(null, customDomainBody.validationError);
        System.assertEquals(null, customDomainBody.upgradeInsecureRequests);
        System.assertEquals(null, customDomainBody.sslCert);
    }
}