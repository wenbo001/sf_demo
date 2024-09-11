@isTest
private class OASTwoFactorVerifyTest {
    @isTest
    private static void equalsSameInstance() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = twoFactorVerify1;
        OASTwoFactorVerify twoFactorVerify3 = new OASTwoFactorVerify();
        OASTwoFactorVerify twoFactorVerify4 = twoFactorVerify3;

        System.assert(twoFactorVerify1.equals(twoFactorVerify2));
        System.assert(twoFactorVerify2.equals(twoFactorVerify1));
        System.assert(twoFactorVerify1.equals(twoFactorVerify1));
        System.assert(twoFactorVerify3.equals(twoFactorVerify4));
        System.assert(twoFactorVerify4.equals(twoFactorVerify3));
        System.assert(twoFactorVerify3.equals(twoFactorVerify3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify3 = new OASTwoFactorVerify();
        OASTwoFactorVerify twoFactorVerify4 = new OASTwoFactorVerify();

        System.assert(twoFactorVerify1.equals(twoFactorVerify2));
        System.assert(twoFactorVerify2.equals(twoFactorVerify1));
        System.assert(twoFactorVerify3.equals(twoFactorVerify4));
        System.assert(twoFactorVerify4.equals(twoFactorVerify3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = new OASTwoFactorVerify();

        System.assertEquals(false, twoFactorVerify1.equals('foo'));
        System.assertEquals(false, twoFactorVerify2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = new OASTwoFactorVerify();
        OASTwoFactorVerify twoFactorVerify3;

        System.assertEquals(false, twoFactorVerify1.equals(twoFactorVerify3));
        System.assertEquals(false, twoFactorVerify2.equals(twoFactorVerify3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = new OASTwoFactorVerify();

        System.assertEquals(twoFactorVerify1.hashCode(), twoFactorVerify1.hashCode());
        System.assertEquals(twoFactorVerify2.hashCode(), twoFactorVerify2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTwoFactorVerify twoFactorVerify1 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify2 = OASTwoFactorVerify.getExample();
        OASTwoFactorVerify twoFactorVerify3 = new OASTwoFactorVerify();
        OASTwoFactorVerify twoFactorVerify4 = new OASTwoFactorVerify();

        System.assert(twoFactorVerify1.equals(twoFactorVerify2));
        System.assert(twoFactorVerify3.equals(twoFactorVerify4));
        System.assertEquals(twoFactorVerify1.hashCode(), twoFactorVerify2.hashCode());
        System.assertEquals(twoFactorVerify3.hashCode(), twoFactorVerify4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTwoFactorVerify twoFactorVerify = new OASTwoFactorVerify();
        Map<String, String> propertymappings = twoFactorVerify.getPropertyMappings();
        System.assertEquals('isValid', propertymappings.get('is_valid'));
        System.assertEquals('isExpired', propertymappings.get('is_expired'));
    }
}