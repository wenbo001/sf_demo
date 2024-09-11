@isTest
private class OASClicksSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = clicksSummary1;
        OASClicksSummary clicksSummary3 = new OASClicksSummary();
        OASClicksSummary clicksSummary4 = clicksSummary3;

        System.assert(clicksSummary1.equals(clicksSummary2));
        System.assert(clicksSummary2.equals(clicksSummary1));
        System.assert(clicksSummary1.equals(clicksSummary1));
        System.assert(clicksSummary3.equals(clicksSummary4));
        System.assert(clicksSummary4.equals(clicksSummary3));
        System.assert(clicksSummary3.equals(clicksSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary3 = new OASClicksSummary();
        OASClicksSummary clicksSummary4 = new OASClicksSummary();

        System.assert(clicksSummary1.equals(clicksSummary2));
        System.assert(clicksSummary2.equals(clicksSummary1));
        System.assert(clicksSummary3.equals(clicksSummary4));
        System.assert(clicksSummary4.equals(clicksSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = new OASClicksSummary();

        System.assertEquals(false, clicksSummary1.equals('foo'));
        System.assertEquals(false, clicksSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = new OASClicksSummary();
        OASClicksSummary clicksSummary3;

        System.assertEquals(false, clicksSummary1.equals(clicksSummary3));
        System.assertEquals(false, clicksSummary2.equals(clicksSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = new OASClicksSummary();

        System.assertEquals(clicksSummary1.hashCode(), clicksSummary1.hashCode());
        System.assertEquals(clicksSummary2.hashCode(), clicksSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksSummary clicksSummary1 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary2 = OASClicksSummary.getExample();
        OASClicksSummary clicksSummary3 = new OASClicksSummary();
        OASClicksSummary clicksSummary4 = new OASClicksSummary();

        System.assert(clicksSummary1.equals(clicksSummary2));
        System.assert(clicksSummary3.equals(clicksSummary4));
        System.assertEquals(clicksSummary1.hashCode(), clicksSummary2.hashCode());
        System.assertEquals(clicksSummary3.hashCode(), clicksSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClicksSummary clicksSummary = new OASClicksSummary();
        Map<String, String> propertymappings = clicksSummary.getPropertyMappings();
        System.assertEquals('totalClicks', propertymappings.get('total_clicks'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}