@isTest
private class OASClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = clicks1;
        OASClicks clicks3 = new OASClicks();
        OASClicks clicks4 = clicks3;

        System.assert(clicks1.equals(clicks2));
        System.assert(clicks2.equals(clicks1));
        System.assert(clicks1.equals(clicks1));
        System.assert(clicks3.equals(clicks4));
        System.assert(clicks4.equals(clicks3));
        System.assert(clicks3.equals(clicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = OASClicks.getExample();
        OASClicks clicks3 = new OASClicks();
        OASClicks clicks4 = new OASClicks();

        System.assert(clicks1.equals(clicks2));
        System.assert(clicks2.equals(clicks1));
        System.assert(clicks3.equals(clicks4));
        System.assert(clicks4.equals(clicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = new OASClicks();

        System.assertEquals(false, clicks1.equals('foo'));
        System.assertEquals(false, clicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = new OASClicks();
        OASClicks clicks3;

        System.assertEquals(false, clicks1.equals(clicks3));
        System.assertEquals(false, clicks2.equals(clicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = new OASClicks();

        System.assertEquals(clicks1.hashCode(), clicks1.hashCode());
        System.assertEquals(clicks2.hashCode(), clicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicks clicks1 = OASClicks.getExample();
        OASClicks clicks2 = OASClicks.getExample();
        OASClicks clicks3 = new OASClicks();
        OASClicks clicks4 = new OASClicks();

        System.assert(clicks1.equals(clicks2));
        System.assert(clicks3.equals(clicks4));
        System.assertEquals(clicks1.hashCode(), clicks2.hashCode());
        System.assertEquals(clicks3.hashCode(), clicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClicks clicks = new OASClicks();
        Map<String, String> propertymappings = clicks.getPropertyMappings();
        System.assertEquals('linkClicks', propertymappings.get('link_clicks'));
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASClicks clicks = new OASClicks();
        System.assertEquals(new List<OASLinkClicks>(), clicks.linkClicks);
        System.assertEquals(null, clicks.units);
        System.assertEquals(null, clicks.unit);
        System.assertEquals(null, clicks.unitReference);
    }
}