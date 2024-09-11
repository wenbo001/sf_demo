@isTest
private class OASOrgEmailBodyTest {
    @isTest
    private static void equalsSameInstance() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = orgEmailBody1;
        OASOrgEmailBody orgEmailBody3 = new OASOrgEmailBody();
        OASOrgEmailBody orgEmailBody4 = orgEmailBody3;

        System.assert(orgEmailBody1.equals(orgEmailBody2));
        System.assert(orgEmailBody2.equals(orgEmailBody1));
        System.assert(orgEmailBody1.equals(orgEmailBody1));
        System.assert(orgEmailBody3.equals(orgEmailBody4));
        System.assert(orgEmailBody4.equals(orgEmailBody3));
        System.assert(orgEmailBody3.equals(orgEmailBody3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody3 = new OASOrgEmailBody();
        OASOrgEmailBody orgEmailBody4 = new OASOrgEmailBody();

        System.assert(orgEmailBody1.equals(orgEmailBody2));
        System.assert(orgEmailBody2.equals(orgEmailBody1));
        System.assert(orgEmailBody3.equals(orgEmailBody4));
        System.assert(orgEmailBody4.equals(orgEmailBody3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = new OASOrgEmailBody();

        System.assertEquals(false, orgEmailBody1.equals('foo'));
        System.assertEquals(false, orgEmailBody2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = new OASOrgEmailBody();
        OASOrgEmailBody orgEmailBody3;

        System.assertEquals(false, orgEmailBody1.equals(orgEmailBody3));
        System.assertEquals(false, orgEmailBody2.equals(orgEmailBody3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = new OASOrgEmailBody();

        System.assertEquals(orgEmailBody1.hashCode(), orgEmailBody1.hashCode());
        System.assertEquals(orgEmailBody2.hashCode(), orgEmailBody2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASOrgEmailBody orgEmailBody1 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody2 = OASOrgEmailBody.getExample();
        OASOrgEmailBody orgEmailBody3 = new OASOrgEmailBody();
        OASOrgEmailBody orgEmailBody4 = new OASOrgEmailBody();

        System.assert(orgEmailBody1.equals(orgEmailBody2));
        System.assert(orgEmailBody3.equals(orgEmailBody4));
        System.assertEquals(orgEmailBody1.hashCode(), orgEmailBody2.hashCode());
        System.assertEquals(orgEmailBody3.hashCode(), orgEmailBody4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASOrgEmailBody orgEmailBody = new OASOrgEmailBody();
        Map<String, String> propertymappings = orgEmailBody.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}