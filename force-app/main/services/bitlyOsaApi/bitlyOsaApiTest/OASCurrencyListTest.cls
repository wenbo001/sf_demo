@isTest
private class OASCurrencyListTest {
    @isTest
    private static void equalsSameInstance() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = currencyList1;
        OASCurrencyList currencyList3 = new OASCurrencyList();
        OASCurrencyList currencyList4 = currencyList3;

        System.assert(currencyList1.equals(currencyList2));
        System.assert(currencyList2.equals(currencyList1));
        System.assert(currencyList1.equals(currencyList1));
        System.assert(currencyList3.equals(currencyList4));
        System.assert(currencyList4.equals(currencyList3));
        System.assert(currencyList3.equals(currencyList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = OASCurrencyList.getExample();
        OASCurrencyList currencyList3 = new OASCurrencyList();
        OASCurrencyList currencyList4 = new OASCurrencyList();

        System.assert(currencyList1.equals(currencyList2));
        System.assert(currencyList2.equals(currencyList1));
        System.assert(currencyList3.equals(currencyList4));
        System.assert(currencyList4.equals(currencyList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = new OASCurrencyList();

        System.assertEquals(false, currencyList1.equals('foo'));
        System.assertEquals(false, currencyList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = new OASCurrencyList();
        OASCurrencyList currencyList3;

        System.assertEquals(false, currencyList1.equals(currencyList3));
        System.assertEquals(false, currencyList2.equals(currencyList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = new OASCurrencyList();

        System.assertEquals(currencyList1.hashCode(), currencyList1.hashCode());
        System.assertEquals(currencyList2.hashCode(), currencyList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCurrencyList currencyList1 = OASCurrencyList.getExample();
        OASCurrencyList currencyList2 = OASCurrencyList.getExample();
        OASCurrencyList currencyList3 = new OASCurrencyList();
        OASCurrencyList currencyList4 = new OASCurrencyList();

        System.assert(currencyList1.equals(currencyList2));
        System.assert(currencyList3.equals(currencyList4));
        System.assertEquals(currencyList1.hashCode(), currencyList2.hashCode());
        System.assertEquals(currencyList3.hashCode(), currencyList4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCurrencyList currencyList = new OASCurrencyList();
        Map<String, String> propertymappings = currencyList.getPropertyMappings();
        System.assertEquals('supportedCurrencies', propertymappings.get('supported_currencies'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCurrencyList currencyList = new OASCurrencyList();
        System.assertEquals(new List<String>(), currencyList.supportedCurrencies);
    }
}