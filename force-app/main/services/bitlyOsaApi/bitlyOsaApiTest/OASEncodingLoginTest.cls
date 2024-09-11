@isTest
private class OASEncodingLoginTest {
    @isTest
    private static void equalsSameInstance() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = encodingLogin1;
        OASEncodingLogin encodingLogin3 = new OASEncodingLogin();
        OASEncodingLogin encodingLogin4 = encodingLogin3;

        System.assert(encodingLogin1.equals(encodingLogin2));
        System.assert(encodingLogin2.equals(encodingLogin1));
        System.assert(encodingLogin1.equals(encodingLogin1));
        System.assert(encodingLogin3.equals(encodingLogin4));
        System.assert(encodingLogin4.equals(encodingLogin3));
        System.assert(encodingLogin3.equals(encodingLogin3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin3 = new OASEncodingLogin();
        OASEncodingLogin encodingLogin4 = new OASEncodingLogin();

        System.assert(encodingLogin1.equals(encodingLogin2));
        System.assert(encodingLogin2.equals(encodingLogin1));
        System.assert(encodingLogin3.equals(encodingLogin4));
        System.assert(encodingLogin4.equals(encodingLogin3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = new OASEncodingLogin();

        System.assertEquals(false, encodingLogin1.equals('foo'));
        System.assertEquals(false, encodingLogin2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = new OASEncodingLogin();
        OASEncodingLogin encodingLogin3;

        System.assertEquals(false, encodingLogin1.equals(encodingLogin3));
        System.assertEquals(false, encodingLogin2.equals(encodingLogin3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = new OASEncodingLogin();

        System.assertEquals(encodingLogin1.hashCode(), encodingLogin1.hashCode());
        System.assertEquals(encodingLogin2.hashCode(), encodingLogin2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEncodingLogin encodingLogin1 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin2 = OASEncodingLogin.getExample();
        OASEncodingLogin encodingLogin3 = new OASEncodingLogin();
        OASEncodingLogin encodingLogin4 = new OASEncodingLogin();

        System.assert(encodingLogin1.equals(encodingLogin2));
        System.assert(encodingLogin3.equals(encodingLogin4));
        System.assertEquals(encodingLogin1.hashCode(), encodingLogin2.hashCode());
        System.assertEquals(encodingLogin3.hashCode(), encodingLogin4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEncodingLogin encodingLogin = new OASEncodingLogin();
        Map<String, String> propertymappings = encodingLogin.getPropertyMappings();
        System.assertEquals('encodingLogin', propertymappings.get('encoding_login'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASEncodingLogin encodingLogin = new OASEncodingLogin();
        System.assertEquals(new List<String>(), encodingLogin.encodingLogin);
    }
}