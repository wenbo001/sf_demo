@isTest
private class OASOrgDomainStatusTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = orgDomainStatus1;
        OASOrgDomainStatus orgDomainStatus3 = new OASOrgDomainStatus();
        OASOrgDomainStatus orgDomainStatus4 = orgDomainStatus3;

        System.assert(orgDomainStatus1.equals(orgDomainStatus2));
        System.assert(orgDomainStatus2.equals(orgDomainStatus1));
        System.assert(orgDomainStatus1.equals(orgDomainStatus1));
        System.assert(orgDomainStatus3.equals(orgDomainStatus4));
        System.assert(orgDomainStatus4.equals(orgDomainStatus3));
        System.assert(orgDomainStatus3.equals(orgDomainStatus3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus3 = new OASOrgDomainStatus();
        OASOrgDomainStatus orgDomainStatus4 = new OASOrgDomainStatus();

        System.assert(orgDomainStatus1.equals(orgDomainStatus2));
        System.assert(orgDomainStatus2.equals(orgDomainStatus1));
        System.assert(orgDomainStatus3.equals(orgDomainStatus4));
        System.assert(orgDomainStatus4.equals(orgDomainStatus3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = new OASOrgDomainStatus();

        System.assertEquals(false, orgDomainStatus1.equals('foo'));
        System.assertEquals(false, orgDomainStatus2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = new OASOrgDomainStatus();
        OASOrgDomainStatus orgDomainStatus3;

        System.assertEquals(false, orgDomainStatus1.equals(orgDomainStatus3));
        System.assertEquals(false, orgDomainStatus2.equals(orgDomainStatus3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = new OASOrgDomainStatus();

        System.assertEquals(orgDomainStatus1.hashCode(), orgDomainStatus1.hashCode());
        System.assertEquals(orgDomainStatus2.hashCode(), orgDomainStatus2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgDomainStatus orgDomainStatus1 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus2 = OASOrgDomainStatus.getExample();
        OASOrgDomainStatus orgDomainStatus3 = new OASOrgDomainStatus();
        OASOrgDomainStatus orgDomainStatus4 = new OASOrgDomainStatus();

        System.assert(orgDomainStatus1.equals(orgDomainStatus2));
        System.assert(orgDomainStatus3.equals(orgDomainStatus4));
        System.assertEquals(orgDomainStatus1.hashCode(), orgDomainStatus2.hashCode());
        System.assertEquals(orgDomainStatus3.hashCode(), orgDomainStatus4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgDomainStatus orgDomainStatus = new OASOrgDomainStatus();
        Map<String, String> propertymappings = orgDomainStatus.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isVerified', propertymappings.get('is_verified'));
    }
}