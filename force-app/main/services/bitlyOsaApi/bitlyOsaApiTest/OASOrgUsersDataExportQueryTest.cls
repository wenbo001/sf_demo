@isTest
private class OASOrgUsersDataExportQueryTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = orgUsersDataExportQuery1;
        OASOrgUsersDataExportQuery orgUsersDataExportQuery3 = new OASOrgUsersDataExportQuery();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery4 = orgUsersDataExportQuery3;

        System.assert(orgUsersDataExportQuery1.equals(orgUsersDataExportQuery2));
        System.assert(orgUsersDataExportQuery2.equals(orgUsersDataExportQuery1));
        System.assert(orgUsersDataExportQuery1.equals(orgUsersDataExportQuery1));
        System.assert(orgUsersDataExportQuery3.equals(orgUsersDataExportQuery4));
        System.assert(orgUsersDataExportQuery4.equals(orgUsersDataExportQuery3));
        System.assert(orgUsersDataExportQuery3.equals(orgUsersDataExportQuery3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery3 = new OASOrgUsersDataExportQuery();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery4 = new OASOrgUsersDataExportQuery();

        System.assert(orgUsersDataExportQuery1.equals(orgUsersDataExportQuery2));
        System.assert(orgUsersDataExportQuery2.equals(orgUsersDataExportQuery1));
        System.assert(orgUsersDataExportQuery3.equals(orgUsersDataExportQuery4));
        System.assert(orgUsersDataExportQuery4.equals(orgUsersDataExportQuery3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = new OASOrgUsersDataExportQuery();

        System.assertEquals(false, orgUsersDataExportQuery1.equals('foo'));
        System.assertEquals(false, orgUsersDataExportQuery2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = new OASOrgUsersDataExportQuery();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery3;

        System.assertEquals(false, orgUsersDataExportQuery1.equals(orgUsersDataExportQuery3));
        System.assertEquals(false, orgUsersDataExportQuery2.equals(orgUsersDataExportQuery3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = new OASOrgUsersDataExportQuery();

        System.assertEquals(orgUsersDataExportQuery1.hashCode(), orgUsersDataExportQuery1.hashCode());
        System.assertEquals(orgUsersDataExportQuery2.hashCode(), orgUsersDataExportQuery2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery1 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery2 = OASOrgUsersDataExportQuery.getExample();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery3 = new OASOrgUsersDataExportQuery();
        OASOrgUsersDataExportQuery orgUsersDataExportQuery4 = new OASOrgUsersDataExportQuery();

        System.assert(orgUsersDataExportQuery1.equals(orgUsersDataExportQuery2));
        System.assert(orgUsersDataExportQuery3.equals(orgUsersDataExportQuery4));
        System.assertEquals(orgUsersDataExportQuery1.hashCode(), orgUsersDataExportQuery2.hashCode());
        System.assertEquals(orgUsersDataExportQuery3.hashCode(), orgUsersDataExportQuery4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrgUsersDataExportQuery orgUsersDataExportQuery = new OASOrgUsersDataExportQuery();
        System.assertEquals(new List<String>(), orgUsersDataExportQuery.emails);
    }
}