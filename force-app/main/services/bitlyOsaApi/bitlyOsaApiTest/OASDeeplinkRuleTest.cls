@isTest
private class OASDeeplinkRuleTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = deeplinkRule1;
        OASDeeplinkRule deeplinkRule3 = new OASDeeplinkRule();
        OASDeeplinkRule deeplinkRule4 = deeplinkRule3;

        System.assert(deeplinkRule1.equals(deeplinkRule2));
        System.assert(deeplinkRule2.equals(deeplinkRule1));
        System.assert(deeplinkRule1.equals(deeplinkRule1));
        System.assert(deeplinkRule3.equals(deeplinkRule4));
        System.assert(deeplinkRule4.equals(deeplinkRule3));
        System.assert(deeplinkRule3.equals(deeplinkRule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule3 = new OASDeeplinkRule();
        OASDeeplinkRule deeplinkRule4 = new OASDeeplinkRule();

        System.assert(deeplinkRule1.equals(deeplinkRule2));
        System.assert(deeplinkRule2.equals(deeplinkRule1));
        System.assert(deeplinkRule3.equals(deeplinkRule4));
        System.assert(deeplinkRule4.equals(deeplinkRule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = new OASDeeplinkRule();

        System.assertEquals(false, deeplinkRule1.equals('foo'));
        System.assertEquals(false, deeplinkRule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = new OASDeeplinkRule();
        OASDeeplinkRule deeplinkRule3;

        System.assertEquals(false, deeplinkRule1.equals(deeplinkRule3));
        System.assertEquals(false, deeplinkRule2.equals(deeplinkRule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = new OASDeeplinkRule();

        System.assertEquals(deeplinkRule1.hashCode(), deeplinkRule1.hashCode());
        System.assertEquals(deeplinkRule2.hashCode(), deeplinkRule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkRule deeplinkRule1 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule2 = OASDeeplinkRule.getExample();
        OASDeeplinkRule deeplinkRule3 = new OASDeeplinkRule();
        OASDeeplinkRule deeplinkRule4 = new OASDeeplinkRule();

        System.assert(deeplinkRule1.equals(deeplinkRule2));
        System.assert(deeplinkRule3.equals(deeplinkRule4));
        System.assertEquals(deeplinkRule1.hashCode(), deeplinkRule2.hashCode());
        System.assertEquals(deeplinkRule3.hashCode(), deeplinkRule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeeplinkRule deeplinkRule = new OASDeeplinkRule();
        Map<String, String> propertymappings = deeplinkRule.getPropertyMappings();
        System.assertEquals('appUriPath', propertymappings.get('app_uri_path'));
        System.assertEquals('installUrl', propertymappings.get('install_url'));
        System.assertEquals('appGuid', propertymappings.get('app_guid'));
        System.assertEquals('installType', propertymappings.get('install_type'));
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
    }
}