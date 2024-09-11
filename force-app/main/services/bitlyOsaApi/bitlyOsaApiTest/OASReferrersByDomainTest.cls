@isTest
private class OASReferrersByDomainTest {
    @isTest
    private static void equalsSameInstance() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = referrersByDomain1;
        OASReferrersByDomain referrersByDomain3 = new OASReferrersByDomain();
        OASReferrersByDomain referrersByDomain4 = referrersByDomain3;

        System.assert(referrersByDomain1.equals(referrersByDomain2));
        System.assert(referrersByDomain2.equals(referrersByDomain1));
        System.assert(referrersByDomain1.equals(referrersByDomain1));
        System.assert(referrersByDomain3.equals(referrersByDomain4));
        System.assert(referrersByDomain4.equals(referrersByDomain3));
        System.assert(referrersByDomain3.equals(referrersByDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain3 = new OASReferrersByDomain();
        OASReferrersByDomain referrersByDomain4 = new OASReferrersByDomain();

        System.assert(referrersByDomain1.equals(referrersByDomain2));
        System.assert(referrersByDomain2.equals(referrersByDomain1));
        System.assert(referrersByDomain3.equals(referrersByDomain4));
        System.assert(referrersByDomain4.equals(referrersByDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = new OASReferrersByDomain();

        System.assertEquals(false, referrersByDomain1.equals('foo'));
        System.assertEquals(false, referrersByDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = new OASReferrersByDomain();
        OASReferrersByDomain referrersByDomain3;

        System.assertEquals(false, referrersByDomain1.equals(referrersByDomain3));
        System.assertEquals(false, referrersByDomain2.equals(referrersByDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = new OASReferrersByDomain();

        System.assertEquals(referrersByDomain1.hashCode(), referrersByDomain1.hashCode());
        System.assertEquals(referrersByDomain2.hashCode(), referrersByDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASReferrersByDomain referrersByDomain1 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain2 = OASReferrersByDomain.getExample();
        OASReferrersByDomain referrersByDomain3 = new OASReferrersByDomain();
        OASReferrersByDomain referrersByDomain4 = new OASReferrersByDomain();

        System.assert(referrersByDomain1.equals(referrersByDomain2));
        System.assert(referrersByDomain3.equals(referrersByDomain4));
        System.assertEquals(referrersByDomain1.hashCode(), referrersByDomain2.hashCode());
        System.assertEquals(referrersByDomain3.hashCode(), referrersByDomain4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASReferrersByDomain referrersByDomain = new OASReferrersByDomain();
        System.assertEquals(new List<OASMetric>(), referrersByDomain.referrers);
        System.assertEquals(null, referrersByDomain.network);
    }
}