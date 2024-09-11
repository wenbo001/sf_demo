@isTest
private class OASOrgEmailTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = orgEmail1;
        OASOrgEmail orgEmail3 = new OASOrgEmail();
        OASOrgEmail orgEmail4 = orgEmail3;

        System.assert(orgEmail1.equals(orgEmail2));
        System.assert(orgEmail2.equals(orgEmail1));
        System.assert(orgEmail1.equals(orgEmail1));
        System.assert(orgEmail3.equals(orgEmail4));
        System.assert(orgEmail4.equals(orgEmail3));
        System.assert(orgEmail3.equals(orgEmail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail3 = new OASOrgEmail();
        OASOrgEmail orgEmail4 = new OASOrgEmail();

        System.assert(orgEmail1.equals(orgEmail2));
        System.assert(orgEmail2.equals(orgEmail1));
        System.assert(orgEmail3.equals(orgEmail4));
        System.assert(orgEmail4.equals(orgEmail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = new OASOrgEmail();

        System.assertEquals(false, orgEmail1.equals('foo'));
        System.assertEquals(false, orgEmail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = new OASOrgEmail();
        OASOrgEmail orgEmail3;

        System.assertEquals(false, orgEmail1.equals(orgEmail3));
        System.assertEquals(false, orgEmail2.equals(orgEmail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = new OASOrgEmail();

        System.assertEquals(orgEmail1.hashCode(), orgEmail1.hashCode());
        System.assertEquals(orgEmail2.hashCode(), orgEmail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgEmail orgEmail1 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail2 = OASOrgEmail.getExample();
        OASOrgEmail orgEmail3 = new OASOrgEmail();
        OASOrgEmail orgEmail4 = new OASOrgEmail();

        System.assert(orgEmail1.equals(orgEmail2));
        System.assert(orgEmail3.equals(orgEmail4));
        System.assertEquals(orgEmail1.hashCode(), orgEmail2.hashCode());
        System.assertEquals(orgEmail3.hashCode(), orgEmail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgEmail orgEmail = new OASOrgEmail();
        Map<String, String> propertymappings = orgEmail.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
    }
}