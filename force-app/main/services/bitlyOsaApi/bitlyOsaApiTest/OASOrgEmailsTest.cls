@isTest
private class OASOrgEmailsTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = orgEmails1;
        OASOrgEmails orgEmails3 = new OASOrgEmails();
        OASOrgEmails orgEmails4 = orgEmails3;

        System.assert(orgEmails1.equals(orgEmails2));
        System.assert(orgEmails2.equals(orgEmails1));
        System.assert(orgEmails1.equals(orgEmails1));
        System.assert(orgEmails3.equals(orgEmails4));
        System.assert(orgEmails4.equals(orgEmails3));
        System.assert(orgEmails3.equals(orgEmails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails3 = new OASOrgEmails();
        OASOrgEmails orgEmails4 = new OASOrgEmails();

        System.assert(orgEmails1.equals(orgEmails2));
        System.assert(orgEmails2.equals(orgEmails1));
        System.assert(orgEmails3.equals(orgEmails4));
        System.assert(orgEmails4.equals(orgEmails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = new OASOrgEmails();

        System.assertEquals(false, orgEmails1.equals('foo'));
        System.assertEquals(false, orgEmails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = new OASOrgEmails();
        OASOrgEmails orgEmails3;

        System.assertEquals(false, orgEmails1.equals(orgEmails3));
        System.assertEquals(false, orgEmails2.equals(orgEmails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = new OASOrgEmails();

        System.assertEquals(orgEmails1.hashCode(), orgEmails1.hashCode());
        System.assertEquals(orgEmails2.hashCode(), orgEmails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgEmails orgEmails1 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails2 = OASOrgEmails.getExample();
        OASOrgEmails orgEmails3 = new OASOrgEmails();
        OASOrgEmails orgEmails4 = new OASOrgEmails();

        System.assert(orgEmails1.equals(orgEmails2));
        System.assert(orgEmails3.equals(orgEmails4));
        System.assertEquals(orgEmails1.hashCode(), orgEmails2.hashCode());
        System.assertEquals(orgEmails3.hashCode(), orgEmails4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASOrgEmails orgEmails = new OASOrgEmails();
        System.assertEquals(new List<OASOrgEmail>(), orgEmails.emails);
    }
}