@isTest
private class OASSSOSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = ssOSettings1;
        OASSSOSettings ssOSettings3 = new OASSSOSettings();
        OASSSOSettings ssOSettings4 = ssOSettings3;

        System.assert(ssOSettings1.equals(ssOSettings2));
        System.assert(ssOSettings2.equals(ssOSettings1));
        System.assert(ssOSettings1.equals(ssOSettings1));
        System.assert(ssOSettings3.equals(ssOSettings4));
        System.assert(ssOSettings4.equals(ssOSettings3));
        System.assert(ssOSettings3.equals(ssOSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings3 = new OASSSOSettings();
        OASSSOSettings ssOSettings4 = new OASSSOSettings();

        System.assert(ssOSettings1.equals(ssOSettings2));
        System.assert(ssOSettings2.equals(ssOSettings1));
        System.assert(ssOSettings3.equals(ssOSettings4));
        System.assert(ssOSettings4.equals(ssOSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = new OASSSOSettings();

        System.assertEquals(false, ssOSettings1.equals('foo'));
        System.assertEquals(false, ssOSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = new OASSSOSettings();
        OASSSOSettings ssOSettings3;

        System.assertEquals(false, ssOSettings1.equals(ssOSettings3));
        System.assertEquals(false, ssOSettings2.equals(ssOSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = new OASSSOSettings();

        System.assertEquals(ssOSettings1.hashCode(), ssOSettings1.hashCode());
        System.assertEquals(ssOSettings2.hashCode(), ssOSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSSOSettings ssOSettings1 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings2 = OASSSOSettings.getExample();
        OASSSOSettings ssOSettings3 = new OASSSOSettings();
        OASSSOSettings ssOSettings4 = new OASSSOSettings();

        System.assert(ssOSettings1.equals(ssOSettings2));
        System.assert(ssOSettings3.equals(ssOSettings4));
        System.assertEquals(ssOSettings1.hashCode(), ssOSettings2.hashCode());
        System.assertEquals(ssOSettings3.hashCode(), ssOSettings4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSSOSettings ssOSettings = new OASSSOSettings();
        Map<String, String> propertymappings = ssOSettings.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('identityProvider', propertymappings.get('identity_provider'));
        System.assertEquals('issuerUrl', propertymappings.get('issuer_url'));
        System.assertEquals('urlSlug', propertymappings.get('url_slug'));
        System.assertEquals('idpUrl', propertymappings.get('idp_url'));
        System.assertEquals('samlEndpoint', propertymappings.get('saml_endpoint'));
        System.assertEquals('sloEndpoint', propertymappings.get('slo_endpoint'));
        System.assertEquals('defaultGroupGuid', propertymappings.get('default_group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSSOSettings ssOSettings = new OASSSOSettings();
        System.assertEquals(new List<String>(), ssOSettings.domains);
        System.assertEquals(null, ssOSettings.organizationGuid);
        System.assertEquals(null, ssOSettings.identityProvider);
        System.assertEquals(null, ssOSettings.issuerUrl);
        System.assertEquals(null, ssOSettings.urlSlug);
        System.assertEquals(null, ssOSettings.idpUrl);
        System.assertEquals(null, ssOSettings.samlEndpoint);
        System.assertEquals(null, ssOSettings.certificate);
        System.assertEquals(null, ssOSettings.sloEndpoint);
        System.assertEquals(null, ssOSettings.defaultGroupGuid);
    }
}