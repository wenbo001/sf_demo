@isTest
private class OASTwoFactorCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = twoFactorCode1;
        OASTwoFactorCode twoFactorCode3 = new OASTwoFactorCode();
        OASTwoFactorCode twoFactorCode4 = twoFactorCode3;

        System.assert(twoFactorCode1.equals(twoFactorCode2));
        System.assert(twoFactorCode2.equals(twoFactorCode1));
        System.assert(twoFactorCode1.equals(twoFactorCode1));
        System.assert(twoFactorCode3.equals(twoFactorCode4));
        System.assert(twoFactorCode4.equals(twoFactorCode3));
        System.assert(twoFactorCode3.equals(twoFactorCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode3 = new OASTwoFactorCode();
        OASTwoFactorCode twoFactorCode4 = new OASTwoFactorCode();

        System.assert(twoFactorCode1.equals(twoFactorCode2));
        System.assert(twoFactorCode2.equals(twoFactorCode1));
        System.assert(twoFactorCode3.equals(twoFactorCode4));
        System.assert(twoFactorCode4.equals(twoFactorCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = new OASTwoFactorCode();

        System.assertEquals(false, twoFactorCode1.equals('foo'));
        System.assertEquals(false, twoFactorCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = new OASTwoFactorCode();
        OASTwoFactorCode twoFactorCode3;

        System.assertEquals(false, twoFactorCode1.equals(twoFactorCode3));
        System.assertEquals(false, twoFactorCode2.equals(twoFactorCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = new OASTwoFactorCode();

        System.assertEquals(twoFactorCode1.hashCode(), twoFactorCode1.hashCode());
        System.assertEquals(twoFactorCode2.hashCode(), twoFactorCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTwoFactorCode twoFactorCode1 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode2 = OASTwoFactorCode.getExample();
        OASTwoFactorCode twoFactorCode3 = new OASTwoFactorCode();
        OASTwoFactorCode twoFactorCode4 = new OASTwoFactorCode();

        System.assert(twoFactorCode1.equals(twoFactorCode2));
        System.assert(twoFactorCode3.equals(twoFactorCode4));
        System.assertEquals(twoFactorCode1.hashCode(), twoFactorCode2.hashCode());
        System.assertEquals(twoFactorCode3.hashCode(), twoFactorCode4.hashCode());
    }
}