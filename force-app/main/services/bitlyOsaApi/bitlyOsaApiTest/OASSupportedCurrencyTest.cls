@isTest
private class OASSupportedCurrencyTest {
    @isTest
    private static void equalsSameInstance() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = supportedCurrency1;
        OASSupportedCurrency supportedCurrency3 = new OASSupportedCurrency();
        OASSupportedCurrency supportedCurrency4 = supportedCurrency3;

        System.assert(supportedCurrency1.equals(supportedCurrency2));
        System.assert(supportedCurrency2.equals(supportedCurrency1));
        System.assert(supportedCurrency1.equals(supportedCurrency1));
        System.assert(supportedCurrency3.equals(supportedCurrency4));
        System.assert(supportedCurrency4.equals(supportedCurrency3));
        System.assert(supportedCurrency3.equals(supportedCurrency3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency3 = new OASSupportedCurrency();
        OASSupportedCurrency supportedCurrency4 = new OASSupportedCurrency();

        System.assert(supportedCurrency1.equals(supportedCurrency2));
        System.assert(supportedCurrency2.equals(supportedCurrency1));
        System.assert(supportedCurrency3.equals(supportedCurrency4));
        System.assert(supportedCurrency4.equals(supportedCurrency3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = new OASSupportedCurrency();

        System.assertEquals(false, supportedCurrency1.equals('foo'));
        System.assertEquals(false, supportedCurrency2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = new OASSupportedCurrency();
        OASSupportedCurrency supportedCurrency3;

        System.assertEquals(false, supportedCurrency1.equals(supportedCurrency3));
        System.assertEquals(false, supportedCurrency2.equals(supportedCurrency3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = new OASSupportedCurrency();

        System.assertEquals(supportedCurrency1.hashCode(), supportedCurrency1.hashCode());
        System.assertEquals(supportedCurrency2.hashCode(), supportedCurrency2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSupportedCurrency supportedCurrency1 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency2 = OASSupportedCurrency.getExample();
        OASSupportedCurrency supportedCurrency3 = new OASSupportedCurrency();
        OASSupportedCurrency supportedCurrency4 = new OASSupportedCurrency();

        System.assert(supportedCurrency1.equals(supportedCurrency2));
        System.assert(supportedCurrency3.equals(supportedCurrency4));
        System.assertEquals(supportedCurrency1.hashCode(), supportedCurrency2.hashCode());
        System.assertEquals(supportedCurrency3.hashCode(), supportedCurrency4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSupportedCurrency supportedCurrency = new OASSupportedCurrency();
        Map<String, String> propertymappings = supportedCurrency.getPropertyMappings();
        System.assertEquals('isSupported', propertymappings.get('is_supported'));
    }
}