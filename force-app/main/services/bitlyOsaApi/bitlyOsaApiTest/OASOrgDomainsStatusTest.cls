@isTest
private class OASOrgDomainsStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = orgDomainsStatus1;
        OASOrgDomainsStatus orgDomainsStatus3 = new OASOrgDomainsStatus();
        OASOrgDomainsStatus orgDomainsStatus4 = orgDomainsStatus3;

        System.assert(orgDomainsStatus1.equals(orgDomainsStatus2));
        System.assert(orgDomainsStatus2.equals(orgDomainsStatus1));
        System.assert(orgDomainsStatus1.equals(orgDomainsStatus1));
        System.assert(orgDomainsStatus3.equals(orgDomainsStatus4));
        System.assert(orgDomainsStatus4.equals(orgDomainsStatus3));
        System.assert(orgDomainsStatus3.equals(orgDomainsStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus3 = new OASOrgDomainsStatus();
        OASOrgDomainsStatus orgDomainsStatus4 = new OASOrgDomainsStatus();

        System.assert(orgDomainsStatus1.equals(orgDomainsStatus2));
        System.assert(orgDomainsStatus2.equals(orgDomainsStatus1));
        System.assert(orgDomainsStatus3.equals(orgDomainsStatus4));
        System.assert(orgDomainsStatus4.equals(orgDomainsStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = new OASOrgDomainsStatus();

        System.assertEquals(false, orgDomainsStatus1.equals('foo'));
        System.assertEquals(false, orgDomainsStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = new OASOrgDomainsStatus();
        OASOrgDomainsStatus orgDomainsStatus3;

        System.assertEquals(false, orgDomainsStatus1.equals(orgDomainsStatus3));
        System.assertEquals(false, orgDomainsStatus2.equals(orgDomainsStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = new OASOrgDomainsStatus();

        System.assertEquals(orgDomainsStatus1.hashCode(), orgDomainsStatus1.hashCode());
        System.assertEquals(orgDomainsStatus2.hashCode(), orgDomainsStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgDomainsStatus orgDomainsStatus1 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus2 = OASOrgDomainsStatus.getExample();
        OASOrgDomainsStatus orgDomainsStatus3 = new OASOrgDomainsStatus();
        OASOrgDomainsStatus orgDomainsStatus4 = new OASOrgDomainsStatus();

        System.assert(orgDomainsStatus1.equals(orgDomainsStatus2));
        System.assert(orgDomainsStatus3.equals(orgDomainsStatus4));
        System.assertEquals(orgDomainsStatus1.hashCode(), orgDomainsStatus2.hashCode());
        System.assertEquals(orgDomainsStatus3.hashCode(), orgDomainsStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgDomainsStatus orgDomainsStatus = new OASOrgDomainsStatus();
        Map<String, String> propertymappings = orgDomainsStatus.getPropertyMappings();
        System.assertEquals('orgDomainsStatus', propertymappings.get('org_domains_status'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrgDomainsStatus orgDomainsStatus = new OASOrgDomainsStatus();
        System.assertEquals(new List<OASOrgDomainStatus>(), orgDomainsStatus.orgDomainsStatus);
    }
}