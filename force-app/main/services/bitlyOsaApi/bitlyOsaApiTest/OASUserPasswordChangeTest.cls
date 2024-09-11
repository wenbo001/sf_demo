@isTest
private class OASUserPasswordChangeTest {
    @isTest
    private static void equalsSameInstance() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = userPasswordChange1;
        OASUserPasswordChange userPasswordChange3 = new OASUserPasswordChange();
        OASUserPasswordChange userPasswordChange4 = userPasswordChange3;

        System.assert(userPasswordChange1.equals(userPasswordChange2));
        System.assert(userPasswordChange2.equals(userPasswordChange1));
        System.assert(userPasswordChange1.equals(userPasswordChange1));
        System.assert(userPasswordChange3.equals(userPasswordChange4));
        System.assert(userPasswordChange4.equals(userPasswordChange3));
        System.assert(userPasswordChange3.equals(userPasswordChange3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange3 = new OASUserPasswordChange();
        OASUserPasswordChange userPasswordChange4 = new OASUserPasswordChange();

        System.assert(userPasswordChange1.equals(userPasswordChange2));
        System.assert(userPasswordChange2.equals(userPasswordChange1));
        System.assert(userPasswordChange3.equals(userPasswordChange4));
        System.assert(userPasswordChange4.equals(userPasswordChange3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = new OASUserPasswordChange();

        System.assertEquals(false, userPasswordChange1.equals('foo'));
        System.assertEquals(false, userPasswordChange2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = new OASUserPasswordChange();
        OASUserPasswordChange userPasswordChange3;

        System.assertEquals(false, userPasswordChange1.equals(userPasswordChange3));
        System.assertEquals(false, userPasswordChange2.equals(userPasswordChange3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = new OASUserPasswordChange();

        System.assertEquals(userPasswordChange1.hashCode(), userPasswordChange1.hashCode());
        System.assertEquals(userPasswordChange2.hashCode(), userPasswordChange2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUserPasswordChange userPasswordChange1 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange2 = OASUserPasswordChange.getExample();
        OASUserPasswordChange userPasswordChange3 = new OASUserPasswordChange();
        OASUserPasswordChange userPasswordChange4 = new OASUserPasswordChange();

        System.assert(userPasswordChange1.equals(userPasswordChange2));
        System.assert(userPasswordChange3.equals(userPasswordChange4));
        System.assertEquals(userPasswordChange1.hashCode(), userPasswordChange2.hashCode());
        System.assertEquals(userPasswordChange3.hashCode(), userPasswordChange4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUserPasswordChange userPasswordChange = new OASUserPasswordChange();
        Map<String, String> propertymappings = userPasswordChange.getPropertyMappings();
        System.assertEquals('originalPassword', propertymappings.get('original_password'));
        System.assertEquals('newPassword', propertymappings.get('new_password'));
    }
}