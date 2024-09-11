@isTest
private class OASDeactivateUserTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = deactivateUser1;
        OASDeactivateUser deactivateUser3 = new OASDeactivateUser();
        OASDeactivateUser deactivateUser4 = deactivateUser3;

        System.assert(deactivateUser1.equals(deactivateUser2));
        System.assert(deactivateUser2.equals(deactivateUser1));
        System.assert(deactivateUser1.equals(deactivateUser1));
        System.assert(deactivateUser3.equals(deactivateUser4));
        System.assert(deactivateUser4.equals(deactivateUser3));
        System.assert(deactivateUser3.equals(deactivateUser3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser3 = new OASDeactivateUser();
        OASDeactivateUser deactivateUser4 = new OASDeactivateUser();

        System.assert(deactivateUser1.equals(deactivateUser2));
        System.assert(deactivateUser2.equals(deactivateUser1));
        System.assert(deactivateUser3.equals(deactivateUser4));
        System.assert(deactivateUser4.equals(deactivateUser3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = new OASDeactivateUser();

        System.assertEquals(false, deactivateUser1.equals('foo'));
        System.assertEquals(false, deactivateUser2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = new OASDeactivateUser();
        OASDeactivateUser deactivateUser3;

        System.assertEquals(false, deactivateUser1.equals(deactivateUser3));
        System.assertEquals(false, deactivateUser2.equals(deactivateUser3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = new OASDeactivateUser();

        System.assertEquals(deactivateUser1.hashCode(), deactivateUser1.hashCode());
        System.assertEquals(deactivateUser2.hashCode(), deactivateUser2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeactivateUser deactivateUser1 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser2 = OASDeactivateUser.getExample();
        OASDeactivateUser deactivateUser3 = new OASDeactivateUser();
        OASDeactivateUser deactivateUser4 = new OASDeactivateUser();

        System.assert(deactivateUser1.equals(deactivateUser2));
        System.assert(deactivateUser3.equals(deactivateUser4));
        System.assertEquals(deactivateUser1.hashCode(), deactivateUser2.hashCode());
        System.assertEquals(deactivateUser3.hashCode(), deactivateUser4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeactivateUser deactivateUser = new OASDeactivateUser();
        Map<String, String> propertymappings = deactivateUser.getPropertyMappings();
        System.assertEquals('confirmText', propertymappings.get('confirm_text'));
    }
}