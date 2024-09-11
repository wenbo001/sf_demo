@isTest
private class OASButtonClicksSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = buttonClicksSummary1;
        OASButtonClicksSummary buttonClicksSummary3 = new OASButtonClicksSummary();
        OASButtonClicksSummary buttonClicksSummary4 = buttonClicksSummary3;

        System.assert(buttonClicksSummary1.equals(buttonClicksSummary2));
        System.assert(buttonClicksSummary2.equals(buttonClicksSummary1));
        System.assert(buttonClicksSummary1.equals(buttonClicksSummary1));
        System.assert(buttonClicksSummary3.equals(buttonClicksSummary4));
        System.assert(buttonClicksSummary4.equals(buttonClicksSummary3));
        System.assert(buttonClicksSummary3.equals(buttonClicksSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary3 = new OASButtonClicksSummary();
        OASButtonClicksSummary buttonClicksSummary4 = new OASButtonClicksSummary();

        System.assert(buttonClicksSummary1.equals(buttonClicksSummary2));
        System.assert(buttonClicksSummary2.equals(buttonClicksSummary1));
        System.assert(buttonClicksSummary3.equals(buttonClicksSummary4));
        System.assert(buttonClicksSummary4.equals(buttonClicksSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = new OASButtonClicksSummary();

        System.assertEquals(false, buttonClicksSummary1.equals('foo'));
        System.assertEquals(false, buttonClicksSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = new OASButtonClicksSummary();
        OASButtonClicksSummary buttonClicksSummary3;

        System.assertEquals(false, buttonClicksSummary1.equals(buttonClicksSummary3));
        System.assertEquals(false, buttonClicksSummary2.equals(buttonClicksSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = new OASButtonClicksSummary();

        System.assertEquals(buttonClicksSummary1.hashCode(), buttonClicksSummary1.hashCode());
        System.assertEquals(buttonClicksSummary2.hashCode(), buttonClicksSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASButtonClicksSummary buttonClicksSummary1 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary2 = OASButtonClicksSummary.getExample();
        OASButtonClicksSummary buttonClicksSummary3 = new OASButtonClicksSummary();
        OASButtonClicksSummary buttonClicksSummary4 = new OASButtonClicksSummary();

        System.assert(buttonClicksSummary1.equals(buttonClicksSummary2));
        System.assert(buttonClicksSummary3.equals(buttonClicksSummary4));
        System.assertEquals(buttonClicksSummary1.hashCode(), buttonClicksSummary2.hashCode());
        System.assertEquals(buttonClicksSummary3.hashCode(), buttonClicksSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASButtonClicksSummary buttonClicksSummary = new OASButtonClicksSummary();
        Map<String, String> propertymappings = buttonClicksSummary.getPropertyMappings();
        System.assertEquals('totalButtonClicks', propertymappings.get('total_button_clicks'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}