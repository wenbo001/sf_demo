@isTest
private class OASCountryCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = countryCode1;
        OASCountryCode countryCode3 = new OASCountryCode();
        OASCountryCode countryCode4 = countryCode3;

        System.assert(countryCode1.equals(countryCode2));
        System.assert(countryCode2.equals(countryCode1));
        System.assert(countryCode1.equals(countryCode1));
        System.assert(countryCode3.equals(countryCode4));
        System.assert(countryCode4.equals(countryCode3));
        System.assert(countryCode3.equals(countryCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = OASCountryCode.getExample();
        OASCountryCode countryCode3 = new OASCountryCode();
        OASCountryCode countryCode4 = new OASCountryCode();

        System.assert(countryCode1.equals(countryCode2));
        System.assert(countryCode2.equals(countryCode1));
        System.assert(countryCode3.equals(countryCode4));
        System.assert(countryCode4.equals(countryCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = new OASCountryCode();

        System.assertEquals(false, countryCode1.equals('foo'));
        System.assertEquals(false, countryCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = new OASCountryCode();
        OASCountryCode countryCode3;

        System.assertEquals(false, countryCode1.equals(countryCode3));
        System.assertEquals(false, countryCode2.equals(countryCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = new OASCountryCode();

        System.assertEquals(countryCode1.hashCode(), countryCode1.hashCode());
        System.assertEquals(countryCode2.hashCode(), countryCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCountryCode countryCode1 = OASCountryCode.getExample();
        OASCountryCode countryCode2 = OASCountryCode.getExample();
        OASCountryCode countryCode3 = new OASCountryCode();
        OASCountryCode countryCode4 = new OASCountryCode();

        System.assert(countryCode1.equals(countryCode2));
        System.assert(countryCode3.equals(countryCode4));
        System.assertEquals(countryCode1.hashCode(), countryCode2.hashCode());
        System.assertEquals(countryCode3.hashCode(), countryCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCountryCode countryCode = new OASCountryCode();
        Map<String, String> propertymappings = countryCode.getPropertyMappings();
        System.assertEquals('countryName', propertymappings.get('CountryName'));
        System.assertEquals('callingCode', propertymappings.get('CallingCode'));
        System.assertEquals('isO2', propertymappings.get('ISO2'));
        System.assertEquals('isO3', propertymappings.get('ISO3'));
    }
}