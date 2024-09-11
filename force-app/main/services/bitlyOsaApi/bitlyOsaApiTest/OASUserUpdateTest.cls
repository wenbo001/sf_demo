@isTest
private class OASUserUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = userUpdate1;
        OASUserUpdate userUpdate3 = new OASUserUpdate();
        OASUserUpdate userUpdate4 = userUpdate3;

        System.assert(userUpdate1.equals(userUpdate2));
        System.assert(userUpdate2.equals(userUpdate1));
        System.assert(userUpdate1.equals(userUpdate1));
        System.assert(userUpdate3.equals(userUpdate4));
        System.assert(userUpdate4.equals(userUpdate3));
        System.assert(userUpdate3.equals(userUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate3 = new OASUserUpdate();
        OASUserUpdate userUpdate4 = new OASUserUpdate();

        System.assert(userUpdate1.equals(userUpdate2));
        System.assert(userUpdate2.equals(userUpdate1));
        System.assert(userUpdate3.equals(userUpdate4));
        System.assert(userUpdate4.equals(userUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = new OASUserUpdate();

        System.assertEquals(false, userUpdate1.equals('foo'));
        System.assertEquals(false, userUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = new OASUserUpdate();
        OASUserUpdate userUpdate3;

        System.assertEquals(false, userUpdate1.equals(userUpdate3));
        System.assertEquals(false, userUpdate2.equals(userUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = new OASUserUpdate();

        System.assertEquals(userUpdate1.hashCode(), userUpdate1.hashCode());
        System.assertEquals(userUpdate2.hashCode(), userUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserUpdate userUpdate1 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate2 = OASUserUpdate.getExample();
        OASUserUpdate userUpdate3 = new OASUserUpdate();
        OASUserUpdate userUpdate4 = new OASUserUpdate();

        System.assert(userUpdate1.equals(userUpdate2));
        System.assert(userUpdate3.equals(userUpdate4));
        System.assertEquals(userUpdate1.hashCode(), userUpdate2.hashCode());
        System.assertEquals(userUpdate3.hashCode(), userUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserUpdate userUpdate = new OASUserUpdate();
        Map<String, String> propertymappings = userUpdate.getPropertyMappings();
        System.assertEquals('defaultGroupGuid', propertymappings.get('default_group_guid'));
    }
}