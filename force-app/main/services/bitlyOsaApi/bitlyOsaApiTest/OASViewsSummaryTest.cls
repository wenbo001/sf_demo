@isTest
private class OASViewsSummaryTest {
    @isTest
    private static void equalsSameInstance() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = viewsSummary1;
        OASViewsSummary viewsSummary3 = new OASViewsSummary();
        OASViewsSummary viewsSummary4 = viewsSummary3;

        System.assert(viewsSummary1.equals(viewsSummary2));
        System.assert(viewsSummary2.equals(viewsSummary1));
        System.assert(viewsSummary1.equals(viewsSummary1));
        System.assert(viewsSummary3.equals(viewsSummary4));
        System.assert(viewsSummary4.equals(viewsSummary3));
        System.assert(viewsSummary3.equals(viewsSummary3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary3 = new OASViewsSummary();
        OASViewsSummary viewsSummary4 = new OASViewsSummary();

        System.assert(viewsSummary1.equals(viewsSummary2));
        System.assert(viewsSummary2.equals(viewsSummary1));
        System.assert(viewsSummary3.equals(viewsSummary4));
        System.assert(viewsSummary4.equals(viewsSummary3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = new OASViewsSummary();

        System.assertEquals(false, viewsSummary1.equals('foo'));
        System.assertEquals(false, viewsSummary2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = new OASViewsSummary();
        OASViewsSummary viewsSummary3;

        System.assertEquals(false, viewsSummary1.equals(viewsSummary3));
        System.assertEquals(false, viewsSummary2.equals(viewsSummary3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = new OASViewsSummary();

        System.assertEquals(viewsSummary1.hashCode(), viewsSummary1.hashCode());
        System.assertEquals(viewsSummary2.hashCode(), viewsSummary2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASViewsSummary viewsSummary1 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary2 = OASViewsSummary.getExample();
        OASViewsSummary viewsSummary3 = new OASViewsSummary();
        OASViewsSummary viewsSummary4 = new OASViewsSummary();

        System.assert(viewsSummary1.equals(viewsSummary2));
        System.assert(viewsSummary3.equals(viewsSummary4));
        System.assertEquals(viewsSummary1.hashCode(), viewsSummary2.hashCode());
        System.assertEquals(viewsSummary3.hashCode(), viewsSummary4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASViewsSummary viewsSummary = new OASViewsSummary();
        Map<String, String> propertymappings = viewsSummary.getPropertyMappings();
        System.assertEquals('totalViews', propertymappings.get('total_views'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }
}