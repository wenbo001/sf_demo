@isTest
private class OASOrgTierHistoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = orgTierHistory1;
        OASOrgTierHistory orgTierHistory3 = new OASOrgTierHistory();
        OASOrgTierHistory orgTierHistory4 = orgTierHistory3;

        System.assert(orgTierHistory1.equals(orgTierHistory2));
        System.assert(orgTierHistory2.equals(orgTierHistory1));
        System.assert(orgTierHistory1.equals(orgTierHistory1));
        System.assert(orgTierHistory3.equals(orgTierHistory4));
        System.assert(orgTierHistory4.equals(orgTierHistory3));
        System.assert(orgTierHistory3.equals(orgTierHistory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory3 = new OASOrgTierHistory();
        OASOrgTierHistory orgTierHistory4 = new OASOrgTierHistory();

        System.assert(orgTierHistory1.equals(orgTierHistory2));
        System.assert(orgTierHistory2.equals(orgTierHistory1));
        System.assert(orgTierHistory3.equals(orgTierHistory4));
        System.assert(orgTierHistory4.equals(orgTierHistory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = new OASOrgTierHistory();

        System.assertEquals(false, orgTierHistory1.equals('foo'));
        System.assertEquals(false, orgTierHistory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = new OASOrgTierHistory();
        OASOrgTierHistory orgTierHistory3;

        System.assertEquals(false, orgTierHistory1.equals(orgTierHistory3));
        System.assertEquals(false, orgTierHistory2.equals(orgTierHistory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = new OASOrgTierHistory();

        System.assertEquals(orgTierHistory1.hashCode(), orgTierHistory1.hashCode());
        System.assertEquals(orgTierHistory2.hashCode(), orgTierHistory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgTierHistory orgTierHistory1 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory2 = OASOrgTierHistory.getExample();
        OASOrgTierHistory orgTierHistory3 = new OASOrgTierHistory();
        OASOrgTierHistory orgTierHistory4 = new OASOrgTierHistory();

        System.assert(orgTierHistory1.equals(orgTierHistory2));
        System.assert(orgTierHistory3.equals(orgTierHistory4));
        System.assertEquals(orgTierHistory1.hashCode(), orgTierHistory2.hashCode());
        System.assertEquals(orgTierHistory3.hashCode(), orgTierHistory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgTierHistory orgTierHistory = new OASOrgTierHistory();
        Map<String, String> propertymappings = orgTierHistory.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('tierName', propertymappings.get('tier_name'));
        System.assertEquals('tierChangeDate', propertymappings.get('tier_change_date'));
    }
}