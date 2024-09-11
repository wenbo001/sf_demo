@isTest
private class OASUserInternalTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = userInternal1;
        OASUserInternal userInternal3 = new OASUserInternal();
        OASUserInternal userInternal4 = userInternal3;

        System.assert(userInternal1.equals(userInternal2));
        System.assert(userInternal2.equals(userInternal1));
        System.assert(userInternal1.equals(userInternal1));
        System.assert(userInternal3.equals(userInternal4));
        System.assert(userInternal4.equals(userInternal3));
        System.assert(userInternal3.equals(userInternal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = OASUserInternal.getExample();
        OASUserInternal userInternal3 = new OASUserInternal();
        OASUserInternal userInternal4 = new OASUserInternal();

        System.assert(userInternal1.equals(userInternal2));
        System.assert(userInternal2.equals(userInternal1));
        System.assert(userInternal3.equals(userInternal4));
        System.assert(userInternal4.equals(userInternal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = new OASUserInternal();

        System.assertEquals(false, userInternal1.equals('foo'));
        System.assertEquals(false, userInternal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = new OASUserInternal();
        OASUserInternal userInternal3;

        System.assertEquals(false, userInternal1.equals(userInternal3));
        System.assertEquals(false, userInternal2.equals(userInternal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = new OASUserInternal();

        System.assertEquals(userInternal1.hashCode(), userInternal1.hashCode());
        System.assertEquals(userInternal2.hashCode(), userInternal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserInternal userInternal1 = OASUserInternal.getExample();
        OASUserInternal userInternal2 = OASUserInternal.getExample();
        OASUserInternal userInternal3 = new OASUserInternal();
        OASUserInternal userInternal4 = new OASUserInternal();

        System.assert(userInternal1.equals(userInternal2));
        System.assert(userInternal3.equals(userInternal4));
        System.assertEquals(userInternal1.hashCode(), userInternal2.hashCode());
        System.assertEquals(userInternal3.hashCode(), userInternal4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserInternal userInternal = new OASUserInternal();
        Map<String, String> propertymappings = userInternal.getPropertyMappings();
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('isSsoUser', propertymappings.get('is_sso_user'));
        System.assertEquals('is2faEnabled', propertymappings.get('is_2fa_enabled'));
        System.assertEquals('defaultGroupGuid', propertymappings.get('default_group_guid'));
        System.assertEquals('roleName', propertymappings.get('role_name'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUserInternal userInternal = new OASUserInternal();
        System.assertEquals(new List<OASEmail>(), userInternal.emails);
        System.assertEquals(null, userInternal.login);
        System.assertEquals(null, userInternal.name);
        System.assertEquals(null, userInternal.isActive);
        System.assertEquals(null, userInternal.created);
        System.assertEquals(null, userInternal.modified);
        System.assertEquals(null, userInternal.isSsoUser);
        System.assertEquals(null, userInternal.is2faEnabled);
        System.assertEquals(null, userInternal.defaultGroupGuid);
        System.assertEquals(null, userInternal.roleName);
    }
}