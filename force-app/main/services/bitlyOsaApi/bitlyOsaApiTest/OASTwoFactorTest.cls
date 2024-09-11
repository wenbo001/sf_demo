@isTest
private class OASTwoFactorTest {
    @isTest
    private static void equalsSameInstance() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = twoFactor1;
        OASTwoFactor twoFactor3 = new OASTwoFactor();
        OASTwoFactor twoFactor4 = twoFactor3;

        System.assert(twoFactor1.equals(twoFactor2));
        System.assert(twoFactor2.equals(twoFactor1));
        System.assert(twoFactor1.equals(twoFactor1));
        System.assert(twoFactor3.equals(twoFactor4));
        System.assert(twoFactor4.equals(twoFactor3));
        System.assert(twoFactor3.equals(twoFactor3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor3 = new OASTwoFactor();
        OASTwoFactor twoFactor4 = new OASTwoFactor();

        System.assert(twoFactor1.equals(twoFactor2));
        System.assert(twoFactor2.equals(twoFactor1));
        System.assert(twoFactor3.equals(twoFactor4));
        System.assert(twoFactor4.equals(twoFactor3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = new OASTwoFactor();

        System.assertEquals(false, twoFactor1.equals('foo'));
        System.assertEquals(false, twoFactor2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = new OASTwoFactor();
        OASTwoFactor twoFactor3;

        System.assertEquals(false, twoFactor1.equals(twoFactor3));
        System.assertEquals(false, twoFactor2.equals(twoFactor3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = new OASTwoFactor();

        System.assertEquals(twoFactor1.hashCode(), twoFactor1.hashCode());
        System.assertEquals(twoFactor2.hashCode(), twoFactor2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTwoFactor twoFactor1 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor2 = OASTwoFactor.getExample();
        OASTwoFactor twoFactor3 = new OASTwoFactor();
        OASTwoFactor twoFactor4 = new OASTwoFactor();

        System.assert(twoFactor1.equals(twoFactor2));
        System.assert(twoFactor3.equals(twoFactor4));
        System.assertEquals(twoFactor1.hashCode(), twoFactor2.hashCode());
        System.assertEquals(twoFactor3.hashCode(), twoFactor4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTwoFactor twoFactor = new OASTwoFactor();
        Map<String, String> propertymappings = twoFactor.getPropertyMappings();
        System.assertEquals('countryCode', propertymappings.get('country_code'));
        System.assertEquals('phoneNumber', propertymappings.get('phone_number'));
    }
}