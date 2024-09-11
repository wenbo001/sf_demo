@isTest
private class OASEmailTest {
    @isTest
    private static void equalsSameInstance() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = email1;
        OASEmail email3 = new OASEmail();
        OASEmail email4 = email3;

        System.assert(email1.equals(email2));
        System.assert(email2.equals(email1));
        System.assert(email1.equals(email1));
        System.assert(email3.equals(email4));
        System.assert(email4.equals(email3));
        System.assert(email3.equals(email3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = OASEmail.getExample();
        OASEmail email3 = new OASEmail();
        OASEmail email4 = new OASEmail();

        System.assert(email1.equals(email2));
        System.assert(email2.equals(email1));
        System.assert(email3.equals(email4));
        System.assert(email4.equals(email3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = new OASEmail();

        System.assertEquals(false, email1.equals('foo'));
        System.assertEquals(false, email2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = new OASEmail();
        OASEmail email3;

        System.assertEquals(false, email1.equals(email3));
        System.assertEquals(false, email2.equals(email3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = new OASEmail();

        System.assertEquals(email1.hashCode(), email1.hashCode());
        System.assertEquals(email2.hashCode(), email2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEmail email1 = OASEmail.getExample();
        OASEmail email2 = OASEmail.getExample();
        OASEmail email3 = new OASEmail();
        OASEmail email4 = new OASEmail();

        System.assert(email1.equals(email2));
        System.assert(email3.equals(email4));
        System.assertEquals(email1.hashCode(), email2.hashCode());
        System.assertEquals(email3.hashCode(), email4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEmail email = new OASEmail();
        Map<String, String> propertymappings = email.getPropertyMappings();
        System.assertEquals('isPrimary', propertymappings.get('is_primary'));
        System.assertEquals('isVerified', propertymappings.get('is_verified'));
    }
}