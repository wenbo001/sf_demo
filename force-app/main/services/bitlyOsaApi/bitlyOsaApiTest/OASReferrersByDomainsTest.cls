@isTest
private class OASReferrersByDomainsTest {
    @isTest
    private static void equalsSameInstance() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = referrersByDomains1;
        OASReferrersByDomains referrersByDomains3 = new OASReferrersByDomains();
        OASReferrersByDomains referrersByDomains4 = referrersByDomains3;

        System.assert(referrersByDomains1.equals(referrersByDomains2));
        System.assert(referrersByDomains2.equals(referrersByDomains1));
        System.assert(referrersByDomains1.equals(referrersByDomains1));
        System.assert(referrersByDomains3.equals(referrersByDomains4));
        System.assert(referrersByDomains4.equals(referrersByDomains3));
        System.assert(referrersByDomains3.equals(referrersByDomains3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains3 = new OASReferrersByDomains();
        OASReferrersByDomains referrersByDomains4 = new OASReferrersByDomains();

        System.assert(referrersByDomains1.equals(referrersByDomains2));
        System.assert(referrersByDomains2.equals(referrersByDomains1));
        System.assert(referrersByDomains3.equals(referrersByDomains4));
        System.assert(referrersByDomains4.equals(referrersByDomains3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = new OASReferrersByDomains();

        System.assertEquals(false, referrersByDomains1.equals('foo'));
        System.assertEquals(false, referrersByDomains2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = new OASReferrersByDomains();
        OASReferrersByDomains referrersByDomains3;

        System.assertEquals(false, referrersByDomains1.equals(referrersByDomains3));
        System.assertEquals(false, referrersByDomains2.equals(referrersByDomains3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = new OASReferrersByDomains();

        System.assertEquals(referrersByDomains1.hashCode(), referrersByDomains1.hashCode());
        System.assertEquals(referrersByDomains2.hashCode(), referrersByDomains2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReferrersByDomains referrersByDomains1 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains2 = OASReferrersByDomains.getExample();
        OASReferrersByDomains referrersByDomains3 = new OASReferrersByDomains();
        OASReferrersByDomains referrersByDomains4 = new OASReferrersByDomains();

        System.assert(referrersByDomains1.equals(referrersByDomains2));
        System.assert(referrersByDomains3.equals(referrersByDomains4));
        System.assertEquals(referrersByDomains1.hashCode(), referrersByDomains2.hashCode());
        System.assertEquals(referrersByDomains3.hashCode(), referrersByDomains4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASReferrersByDomains referrersByDomains = new OASReferrersByDomains();
        Map<String, String> propertymappings = referrersByDomains.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('referrersByDomain', propertymappings.get('referrers_by_domain'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReferrersByDomains referrersByDomains = new OASReferrersByDomains();
        System.assertEquals(new List<OASReferrersByDomain>(), referrersByDomains.referrersByDomain);
        System.assertEquals(null, referrersByDomains.unit);
        System.assertEquals(null, referrersByDomains.units);
        System.assertEquals(null, referrersByDomains.facet);
        System.assertEquals(null, referrersByDomains.unitReference);
    }
}