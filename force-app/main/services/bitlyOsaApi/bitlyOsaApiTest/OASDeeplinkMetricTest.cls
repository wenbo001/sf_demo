@isTest
private class OASDeeplinkMetricTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = deeplinkMetric1;
        OASDeeplinkMetric deeplinkMetric3 = new OASDeeplinkMetric();
        OASDeeplinkMetric deeplinkMetric4 = deeplinkMetric3;

        System.assert(deeplinkMetric1.equals(deeplinkMetric2));
        System.assert(deeplinkMetric2.equals(deeplinkMetric1));
        System.assert(deeplinkMetric1.equals(deeplinkMetric1));
        System.assert(deeplinkMetric3.equals(deeplinkMetric4));
        System.assert(deeplinkMetric4.equals(deeplinkMetric3));
        System.assert(deeplinkMetric3.equals(deeplinkMetric3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric3 = new OASDeeplinkMetric();
        OASDeeplinkMetric deeplinkMetric4 = new OASDeeplinkMetric();

        System.assert(deeplinkMetric1.equals(deeplinkMetric2));
        System.assert(deeplinkMetric2.equals(deeplinkMetric1));
        System.assert(deeplinkMetric3.equals(deeplinkMetric4));
        System.assert(deeplinkMetric4.equals(deeplinkMetric3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = new OASDeeplinkMetric();

        System.assertEquals(false, deeplinkMetric1.equals('foo'));
        System.assertEquals(false, deeplinkMetric2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = new OASDeeplinkMetric();
        OASDeeplinkMetric deeplinkMetric3;

        System.assertEquals(false, deeplinkMetric1.equals(deeplinkMetric3));
        System.assertEquals(false, deeplinkMetric2.equals(deeplinkMetric3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = new OASDeeplinkMetric();

        System.assertEquals(deeplinkMetric1.hashCode(), deeplinkMetric1.hashCode());
        System.assertEquals(deeplinkMetric2.hashCode(), deeplinkMetric2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkMetric deeplinkMetric1 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric2 = OASDeeplinkMetric.getExample();
        OASDeeplinkMetric deeplinkMetric3 = new OASDeeplinkMetric();
        OASDeeplinkMetric deeplinkMetric4 = new OASDeeplinkMetric();

        System.assert(deeplinkMetric1.equals(deeplinkMetric2));
        System.assert(deeplinkMetric3.equals(deeplinkMetric4));
        System.assertEquals(deeplinkMetric1.hashCode(), deeplinkMetric2.hashCode());
        System.assertEquals(deeplinkMetric3.hashCode(), deeplinkMetric4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeeplinkMetric deeplinkMetric = new OASDeeplinkMetric();
        Map<String, String> propertymappings = deeplinkMetric.getPropertyMappings();
        System.assertEquals('appOpens', propertymappings.get('app_opens'));
        System.assertEquals('appInstalls', propertymappings.get('app_installs'));
        System.assertEquals('storeVisits', propertymappings.get('store_visits'));
        System.assertEquals('webOpens', propertymappings.get('web_opens'));
        System.assertEquals('interstitalViews', propertymappings.get('interstital_views'));
    }
}