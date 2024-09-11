@isTest
private class OASCustomDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = customDomain1;
        OASCustomDomain customDomain3 = new OASCustomDomain();
        OASCustomDomain customDomain4 = customDomain3;

        System.assert(customDomain1.equals(customDomain2));
        System.assert(customDomain2.equals(customDomain1));
        System.assert(customDomain1.equals(customDomain1));
        System.assert(customDomain3.equals(customDomain4));
        System.assert(customDomain4.equals(customDomain3));
        System.assert(customDomain3.equals(customDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = OASCustomDomain.getExample();
        OASCustomDomain customDomain3 = new OASCustomDomain();
        OASCustomDomain customDomain4 = new OASCustomDomain();

        System.assert(customDomain1.equals(customDomain2));
        System.assert(customDomain2.equals(customDomain1));
        System.assert(customDomain3.equals(customDomain4));
        System.assert(customDomain4.equals(customDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = new OASCustomDomain();

        System.assertEquals(false, customDomain1.equals('foo'));
        System.assertEquals(false, customDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = new OASCustomDomain();
        OASCustomDomain customDomain3;

        System.assertEquals(false, customDomain1.equals(customDomain3));
        System.assertEquals(false, customDomain2.equals(customDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = new OASCustomDomain();

        System.assertEquals(customDomain1.hashCode(), customDomain1.hashCode());
        System.assertEquals(customDomain2.hashCode(), customDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomDomain customDomain1 = OASCustomDomain.getExample();
        OASCustomDomain customDomain2 = OASCustomDomain.getExample();
        OASCustomDomain customDomain3 = new OASCustomDomain();
        OASCustomDomain customDomain4 = new OASCustomDomain();

        System.assert(customDomain1.equals(customDomain2));
        System.assert(customDomain3.equals(customDomain4));
        System.assertEquals(customDomain1.hashCode(), customDomain2.hashCode());
        System.assertEquals(customDomain3.hashCode(), customDomain4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomDomain customDomain = new OASCustomDomain();
        Map<String, String> propertymappings = customDomain.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
    }
}