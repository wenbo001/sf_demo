@isTest
private class OASCustomDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = customDomains1;
        OASCustomDomains customDomains3 = new OASCustomDomains();
        OASCustomDomains customDomains4 = customDomains3;

        System.assert(customDomains1.equals(customDomains2));
        System.assert(customDomains2.equals(customDomains1));
        System.assert(customDomains1.equals(customDomains1));
        System.assert(customDomains3.equals(customDomains4));
        System.assert(customDomains4.equals(customDomains3));
        System.assert(customDomains3.equals(customDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = OASCustomDomains.getExample();
        OASCustomDomains customDomains3 = new OASCustomDomains();
        OASCustomDomains customDomains4 = new OASCustomDomains();

        System.assert(customDomains1.equals(customDomains2));
        System.assert(customDomains2.equals(customDomains1));
        System.assert(customDomains3.equals(customDomains4));
        System.assert(customDomains4.equals(customDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = new OASCustomDomains();

        System.assertEquals(false, customDomains1.equals('foo'));
        System.assertEquals(false, customDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = new OASCustomDomains();
        OASCustomDomains customDomains3;

        System.assertEquals(false, customDomains1.equals(customDomains3));
        System.assertEquals(false, customDomains2.equals(customDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = new OASCustomDomains();

        System.assertEquals(customDomains1.hashCode(), customDomains1.hashCode());
        System.assertEquals(customDomains2.hashCode(), customDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomDomains customDomains1 = OASCustomDomains.getExample();
        OASCustomDomains customDomains2 = OASCustomDomains.getExample();
        OASCustomDomains customDomains3 = new OASCustomDomains();
        OASCustomDomains customDomains4 = new OASCustomDomains();

        System.assert(customDomains1.equals(customDomains2));
        System.assert(customDomains3.equals(customDomains4));
        System.assertEquals(customDomains1.hashCode(), customDomains2.hashCode());
        System.assertEquals(customDomains3.hashCode(), customDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomDomains customDomains = new OASCustomDomains();
        Map<String, String> propertymappings = customDomains.getPropertyMappings();
        System.assertEquals('customDomains', propertymappings.get('custom_domains'));
        System.assertEquals('upgradeRequired', propertymappings.get('upgrade_required'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCustomDomains customDomains = new OASCustomDomains();
        System.assertEquals(new List<OASCustomDomainBody>(), customDomains.customDomains);
        System.assertEquals(null, customDomains.upgradeRequired);
    }
}