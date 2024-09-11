@isTest
private class OASFieldErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = fieldError1;
        OASFieldError fieldError3 = new OASFieldError();
        OASFieldError fieldError4 = fieldError3;

        System.assert(fieldError1.equals(fieldError2));
        System.assert(fieldError2.equals(fieldError1));
        System.assert(fieldError1.equals(fieldError1));
        System.assert(fieldError3.equals(fieldError4));
        System.assert(fieldError4.equals(fieldError3));
        System.assert(fieldError3.equals(fieldError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = OASFieldError.getExample();
        OASFieldError fieldError3 = new OASFieldError();
        OASFieldError fieldError4 = new OASFieldError();

        System.assert(fieldError1.equals(fieldError2));
        System.assert(fieldError2.equals(fieldError1));
        System.assert(fieldError3.equals(fieldError4));
        System.assert(fieldError4.equals(fieldError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = new OASFieldError();

        System.assertEquals(false, fieldError1.equals('foo'));
        System.assertEquals(false, fieldError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = new OASFieldError();
        OASFieldError fieldError3;

        System.assertEquals(false, fieldError1.equals(fieldError3));
        System.assertEquals(false, fieldError2.equals(fieldError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = new OASFieldError();

        System.assertEquals(fieldError1.hashCode(), fieldError1.hashCode());
        System.assertEquals(fieldError2.hashCode(), fieldError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFieldError fieldError1 = OASFieldError.getExample();
        OASFieldError fieldError2 = OASFieldError.getExample();
        OASFieldError fieldError3 = new OASFieldError();
        OASFieldError fieldError4 = new OASFieldError();

        System.assert(fieldError1.equals(fieldError2));
        System.assert(fieldError3.equals(fieldError4));
        System.assertEquals(fieldError1.hashCode(), fieldError2.hashCode());
        System.assertEquals(fieldError3.hashCode(), fieldError4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFieldError fieldError = new OASFieldError();
        Map<String, String> propertymappings = fieldError.getPropertyMappings();
        System.assertEquals('errorCode', propertymappings.get('error_code'));
    }
}