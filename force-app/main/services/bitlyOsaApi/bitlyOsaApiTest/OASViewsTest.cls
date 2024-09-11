@isTest
private class OASViewsTest {
    @isTest
    private static void equalsSameInstance() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = views1;
        OASViews views3 = new OASViews();
        OASViews views4 = views3;

        System.assert(views1.equals(views2));
        System.assert(views2.equals(views1));
        System.assert(views1.equals(views1));
        System.assert(views3.equals(views4));
        System.assert(views4.equals(views3));
        System.assert(views3.equals(views3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = OASViews.getExample();
        OASViews views3 = new OASViews();
        OASViews views4 = new OASViews();

        System.assert(views1.equals(views2));
        System.assert(views2.equals(views1));
        System.assert(views3.equals(views4));
        System.assert(views4.equals(views3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = new OASViews();

        System.assertEquals(false, views1.equals('foo'));
        System.assertEquals(false, views2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = new OASViews();
        OASViews views3;

        System.assertEquals(false, views1.equals(views3));
        System.assertEquals(false, views2.equals(views3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = new OASViews();

        System.assertEquals(views1.hashCode(), views1.hashCode());
        System.assertEquals(views2.hashCode(), views2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASViews views1 = OASViews.getExample();
        OASViews views2 = OASViews.getExample();
        OASViews views3 = new OASViews();
        OASViews views4 = new OASViews();

        System.assert(views1.equals(views2));
        System.assert(views3.equals(views4));
        System.assertEquals(views1.hashCode(), views2.hashCode());
        System.assertEquals(views3.hashCode(), views4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASViews views = new OASViews();
        Map<String, String> propertymappings = views.getPropertyMappings();
        System.assertEquals('launchpadViews', propertymappings.get('launchpad_views'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASViews views = new OASViews();
        System.assertEquals(new List<OASViewMetric>(), views.launchpadViews);
        System.assertEquals(null, views.units);
        System.assertEquals(null, views.unit);
        System.assertEquals(null, views.unitReference);
        System.assertEquals(null, views.facet);
    }
}