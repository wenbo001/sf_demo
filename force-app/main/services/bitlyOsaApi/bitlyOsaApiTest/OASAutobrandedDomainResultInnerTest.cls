@isTest
private class OASAutobrandedDomainResultInnerTest {
    @isTest
    private static void equalsSameInstance() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = autobrandedDomainResultInner1;
        OASAutobrandedDomainResultInner autobrandedDomainResultInner3 = new OASAutobrandedDomainResultInner();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner4 = autobrandedDomainResultInner3;

        System.assert(autobrandedDomainResultInner1.equals(autobrandedDomainResultInner2));
        System.assert(autobrandedDomainResultInner2.equals(autobrandedDomainResultInner1));
        System.assert(autobrandedDomainResultInner1.equals(autobrandedDomainResultInner1));
        System.assert(autobrandedDomainResultInner3.equals(autobrandedDomainResultInner4));
        System.assert(autobrandedDomainResultInner4.equals(autobrandedDomainResultInner3));
        System.assert(autobrandedDomainResultInner3.equals(autobrandedDomainResultInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner3 = new OASAutobrandedDomainResultInner();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner4 = new OASAutobrandedDomainResultInner();

        System.assert(autobrandedDomainResultInner1.equals(autobrandedDomainResultInner2));
        System.assert(autobrandedDomainResultInner2.equals(autobrandedDomainResultInner1));
        System.assert(autobrandedDomainResultInner3.equals(autobrandedDomainResultInner4));
        System.assert(autobrandedDomainResultInner4.equals(autobrandedDomainResultInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = new OASAutobrandedDomainResultInner();

        System.assertEquals(false, autobrandedDomainResultInner1.equals('foo'));
        System.assertEquals(false, autobrandedDomainResultInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = new OASAutobrandedDomainResultInner();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner3;

        System.assertEquals(false, autobrandedDomainResultInner1.equals(autobrandedDomainResultInner3));
        System.assertEquals(false, autobrandedDomainResultInner2.equals(autobrandedDomainResultInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = new OASAutobrandedDomainResultInner();

        System.assertEquals(autobrandedDomainResultInner1.hashCode(), autobrandedDomainResultInner1.hashCode());
        System.assertEquals(autobrandedDomainResultInner2.hashCode(), autobrandedDomainResultInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner1 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner2 = OASAutobrandedDomainResultInner.getExample();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner3 = new OASAutobrandedDomainResultInner();
        OASAutobrandedDomainResultInner autobrandedDomainResultInner4 = new OASAutobrandedDomainResultInner();

        System.assert(autobrandedDomainResultInner1.equals(autobrandedDomainResultInner2));
        System.assert(autobrandedDomainResultInner3.equals(autobrandedDomainResultInner4));
        System.assertEquals(autobrandedDomainResultInner1.hashCode(), autobrandedDomainResultInner2.hashCode());
        System.assertEquals(autobrandedDomainResultInner3.hashCode(), autobrandedDomainResultInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAutobrandedDomainResultInner autobrandedDomainResultInner = new OASAutobrandedDomainResultInner();
        Map<String, String> propertymappings = autobrandedDomainResultInner.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('autobrandedDomain', propertymappings.get('autobranded_domain'));
    }
}