@isTest
private class OASUserTest {
    @isTest
    private static void equalsSameInstance() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = user1;
        OASUser user3 = new OASUser();
        OASUser user4 = user3;

        System.assert(user1.equals(user2));
        System.assert(user2.equals(user1));
        System.assert(user1.equals(user1));
        System.assert(user3.equals(user4));
        System.assert(user4.equals(user3));
        System.assert(user3.equals(user3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = OASUser.getExample();
        OASUser user3 = new OASUser();
        OASUser user4 = new OASUser();

        System.assert(user1.equals(user2));
        System.assert(user2.equals(user1));
        System.assert(user3.equals(user4));
        System.assert(user4.equals(user3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = new OASUser();

        System.assertEquals(false, user1.equals('foo'));
        System.assertEquals(false, user2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = new OASUser();
        OASUser user3;

        System.assertEquals(false, user1.equals(user3));
        System.assertEquals(false, user2.equals(user3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = new OASUser();

        System.assertEquals(user1.hashCode(), user1.hashCode());
        System.assertEquals(user2.hashCode(), user2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUser user1 = OASUser.getExample();
        OASUser user2 = OASUser.getExample();
        OASUser user3 = new OASUser();
        OASUser user4 = new OASUser();

        System.assert(user1.equals(user2));
        System.assert(user3.equals(user4));
        System.assertEquals(user1.hashCode(), user2.hashCode());
        System.assertEquals(user3.hashCode(), user4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUser user = new OASUser();
        Map<String, String> propertymappings = user.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isSsoUser', propertymappings.get('is_sso_user'));
        System.assertEquals('is2faEnabled', propertymappings.get('is_2fa_enabled'));
        System.assertEquals('defaultGroupGuid', propertymappings.get('default_group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUser user = new OASUser();
        System.assertEquals(new List<OASEmail>(), user.emails);
        System.assertEquals(null, user.login);
        System.assertEquals(null, user.name);
        System.assertEquals(null, user.isActive);
        System.assertEquals(null, user.created);
        System.assertEquals(null, user.modified);
        System.assertEquals(null, user.isSsoUser);
        System.assertEquals(null, user.is2faEnabled);
        System.assertEquals(null, user.defaultGroupGuid);
    }
}