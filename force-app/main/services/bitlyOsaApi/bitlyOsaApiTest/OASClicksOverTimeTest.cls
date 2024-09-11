@isTest
private class OASClicksOverTimeTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = clicksOverTime1;
        OASClicksOverTime clicksOverTime3 = new OASClicksOverTime();
        OASClicksOverTime clicksOverTime4 = clicksOverTime3;

        System.assert(clicksOverTime1.equals(clicksOverTime2));
        System.assert(clicksOverTime2.equals(clicksOverTime1));
        System.assert(clicksOverTime1.equals(clicksOverTime1));
        System.assert(clicksOverTime3.equals(clicksOverTime4));
        System.assert(clicksOverTime4.equals(clicksOverTime3));
        System.assert(clicksOverTime3.equals(clicksOverTime3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime3 = new OASClicksOverTime();
        OASClicksOverTime clicksOverTime4 = new OASClicksOverTime();

        System.assert(clicksOverTime1.equals(clicksOverTime2));
        System.assert(clicksOverTime2.equals(clicksOverTime1));
        System.assert(clicksOverTime3.equals(clicksOverTime4));
        System.assert(clicksOverTime4.equals(clicksOverTime3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = new OASClicksOverTime();

        System.assertEquals(false, clicksOverTime1.equals('foo'));
        System.assertEquals(false, clicksOverTime2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = new OASClicksOverTime();
        OASClicksOverTime clicksOverTime3;

        System.assertEquals(false, clicksOverTime1.equals(clicksOverTime3));
        System.assertEquals(false, clicksOverTime2.equals(clicksOverTime3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = new OASClicksOverTime();

        System.assertEquals(clicksOverTime1.hashCode(), clicksOverTime1.hashCode());
        System.assertEquals(clicksOverTime2.hashCode(), clicksOverTime2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksOverTime clicksOverTime1 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime2 = OASClicksOverTime.getExample();
        OASClicksOverTime clicksOverTime3 = new OASClicksOverTime();
        OASClicksOverTime clicksOverTime4 = new OASClicksOverTime();

        System.assert(clicksOverTime1.equals(clicksOverTime2));
        System.assert(clicksOverTime3.equals(clicksOverTime4));
        System.assertEquals(clicksOverTime1.hashCode(), clicksOverTime2.hashCode());
        System.assertEquals(clicksOverTime3.hashCode(), clicksOverTime4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClicksOverTime clicksOverTime = new OASClicksOverTime();
        Map<String, String> propertymappings = clicksOverTime.getPropertyMappings();
        System.assertEquals('r_date', propertymappings.get('date'));
        System.assertEquals('engagementsByFacet', propertymappings.get('engagements_by_facet'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClicksOverTime clicksOverTime = new OASClicksOverTime();
        System.assertEquals(new List<OASClicksByFacet>(), clicksOverTime.engagementsByFacet);
        System.assertEquals(null, clicksOverTime.r_date);
    }
}