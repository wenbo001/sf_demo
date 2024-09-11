@isTest
private class OASDomainValidateTest {
    @isTest
    private static void equalsSameInstance() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = domainValidate1;
        OASDomainValidate domainValidate3 = new OASDomainValidate();
        OASDomainValidate domainValidate4 = domainValidate3;

        System.assert(domainValidate1.equals(domainValidate2));
        System.assert(domainValidate2.equals(domainValidate1));
        System.assert(domainValidate1.equals(domainValidate1));
        System.assert(domainValidate3.equals(domainValidate4));
        System.assert(domainValidate4.equals(domainValidate3));
        System.assert(domainValidate3.equals(domainValidate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate3 = new OASDomainValidate();
        OASDomainValidate domainValidate4 = new OASDomainValidate();

        System.assert(domainValidate1.equals(domainValidate2));
        System.assert(domainValidate2.equals(domainValidate1));
        System.assert(domainValidate3.equals(domainValidate4));
        System.assert(domainValidate4.equals(domainValidate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = new OASDomainValidate();

        System.assertEquals(false, domainValidate1.equals('foo'));
        System.assertEquals(false, domainValidate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = new OASDomainValidate();
        OASDomainValidate domainValidate3;

        System.assertEquals(false, domainValidate1.equals(domainValidate3));
        System.assertEquals(false, domainValidate2.equals(domainValidate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = new OASDomainValidate();

        System.assertEquals(domainValidate1.hashCode(), domainValidate1.hashCode());
        System.assertEquals(domainValidate2.hashCode(), domainValidate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDomainValidate domainValidate1 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate2 = OASDomainValidate.getExample();
        OASDomainValidate domainValidate3 = new OASDomainValidate();
        OASDomainValidate domainValidate4 = new OASDomainValidate();

        System.assert(domainValidate1.equals(domainValidate2));
        System.assert(domainValidate3.equals(domainValidate4));
        System.assertEquals(domainValidate1.hashCode(), domainValidate2.hashCode());
        System.assertEquals(domainValidate3.hashCode(), domainValidate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDomainValidate domainValidate = new OASDomainValidate();
        Map<String, String> propertymappings = domainValidate.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('customDomain', propertymappings.get('custom_domain'));
        System.assertEquals('groupGuids', propertymappings.get('group_guids'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDomainValidate domainValidate = new OASDomainValidate();
        System.assertEquals(new List<String>(), domainValidate.groupGuids);
        System.assertEquals(null, domainValidate.organizationGuid);
        System.assertEquals(null, domainValidate.customDomain);
        System.assertEquals(null, domainValidate.domain);
        System.assertEquals(null, domainValidate.subdomain);
        System.assertEquals(null, domainValidate.prevalidate);
    }
}