@isTest
private class OASButtonClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = buttonClicks1;
        OASButtonClicks buttonClicks3 = new OASButtonClicks();
        OASButtonClicks buttonClicks4 = buttonClicks3;

        System.assert(buttonClicks1.equals(buttonClicks2));
        System.assert(buttonClicks2.equals(buttonClicks1));
        System.assert(buttonClicks1.equals(buttonClicks1));
        System.assert(buttonClicks3.equals(buttonClicks4));
        System.assert(buttonClicks4.equals(buttonClicks3));
        System.assert(buttonClicks3.equals(buttonClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks3 = new OASButtonClicks();
        OASButtonClicks buttonClicks4 = new OASButtonClicks();

        System.assert(buttonClicks1.equals(buttonClicks2));
        System.assert(buttonClicks2.equals(buttonClicks1));
        System.assert(buttonClicks3.equals(buttonClicks4));
        System.assert(buttonClicks4.equals(buttonClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = new OASButtonClicks();

        System.assertEquals(false, buttonClicks1.equals('foo'));
        System.assertEquals(false, buttonClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = new OASButtonClicks();
        OASButtonClicks buttonClicks3;

        System.assertEquals(false, buttonClicks1.equals(buttonClicks3));
        System.assertEquals(false, buttonClicks2.equals(buttonClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = new OASButtonClicks();

        System.assertEquals(buttonClicks1.hashCode(), buttonClicks1.hashCode());
        System.assertEquals(buttonClicks2.hashCode(), buttonClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASButtonClicks buttonClicks1 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks2 = OASButtonClicks.getExample();
        OASButtonClicks buttonClicks3 = new OASButtonClicks();
        OASButtonClicks buttonClicks4 = new OASButtonClicks();

        System.assert(buttonClicks1.equals(buttonClicks2));
        System.assert(buttonClicks3.equals(buttonClicks4));
        System.assertEquals(buttonClicks1.hashCode(), buttonClicks2.hashCode());
        System.assertEquals(buttonClicks3.hashCode(), buttonClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASButtonClicks buttonClicks = new OASButtonClicks();
        Map<String, String> propertymappings = buttonClicks.getPropertyMappings();
        System.assertEquals('bitlinkScans', propertymappings.get('bitlink_scans'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASButtonClicks buttonClicks = new OASButtonClicks();
        System.assertEquals(new List<OASClicks>(), buttonClicks.bitlinkScans);
        System.assertEquals(null, buttonClicks.units);
        System.assertEquals(null, buttonClicks.unit);
        System.assertEquals(null, buttonClicks.unitReference);
    }
}