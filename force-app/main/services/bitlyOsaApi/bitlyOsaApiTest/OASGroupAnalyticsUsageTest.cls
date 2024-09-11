@isTest
private class OASGroupAnalyticsUsageTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = groupAnalyticsUsage1;
        OASGroupAnalyticsUsage groupAnalyticsUsage3 = new OASGroupAnalyticsUsage();
        OASGroupAnalyticsUsage groupAnalyticsUsage4 = groupAnalyticsUsage3;

        System.assert(groupAnalyticsUsage1.equals(groupAnalyticsUsage2));
        System.assert(groupAnalyticsUsage2.equals(groupAnalyticsUsage1));
        System.assert(groupAnalyticsUsage1.equals(groupAnalyticsUsage1));
        System.assert(groupAnalyticsUsage3.equals(groupAnalyticsUsage4));
        System.assert(groupAnalyticsUsage4.equals(groupAnalyticsUsage3));
        System.assert(groupAnalyticsUsage3.equals(groupAnalyticsUsage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage3 = new OASGroupAnalyticsUsage();
        OASGroupAnalyticsUsage groupAnalyticsUsage4 = new OASGroupAnalyticsUsage();

        System.assert(groupAnalyticsUsage1.equals(groupAnalyticsUsage2));
        System.assert(groupAnalyticsUsage2.equals(groupAnalyticsUsage1));
        System.assert(groupAnalyticsUsage3.equals(groupAnalyticsUsage4));
        System.assert(groupAnalyticsUsage4.equals(groupAnalyticsUsage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = new OASGroupAnalyticsUsage();

        System.assertEquals(false, groupAnalyticsUsage1.equals('foo'));
        System.assertEquals(false, groupAnalyticsUsage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = new OASGroupAnalyticsUsage();
        OASGroupAnalyticsUsage groupAnalyticsUsage3;

        System.assertEquals(false, groupAnalyticsUsage1.equals(groupAnalyticsUsage3));
        System.assertEquals(false, groupAnalyticsUsage2.equals(groupAnalyticsUsage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = new OASGroupAnalyticsUsage();

        System.assertEquals(groupAnalyticsUsage1.hashCode(), groupAnalyticsUsage1.hashCode());
        System.assertEquals(groupAnalyticsUsage2.hashCode(), groupAnalyticsUsage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupAnalyticsUsage groupAnalyticsUsage1 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage2 = OASGroupAnalyticsUsage.getExample();
        OASGroupAnalyticsUsage groupAnalyticsUsage3 = new OASGroupAnalyticsUsage();
        OASGroupAnalyticsUsage groupAnalyticsUsage4 = new OASGroupAnalyticsUsage();

        System.assert(groupAnalyticsUsage1.equals(groupAnalyticsUsage2));
        System.assert(groupAnalyticsUsage3.equals(groupAnalyticsUsage4));
        System.assertEquals(groupAnalyticsUsage1.hashCode(), groupAnalyticsUsage2.hashCode());
        System.assertEquals(groupAnalyticsUsage3.hashCode(), groupAnalyticsUsage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupAnalyticsUsage groupAnalyticsUsage = new OASGroupAnalyticsUsage();
        Map<String, String> propertymappings = groupAnalyticsUsage.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
        System.assertEquals('r_limit', propertymappings.get('limit'));
        System.assertEquals('perUserUsage', propertymappings.get('per_user_usage'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupAnalyticsUsage groupAnalyticsUsage = new OASGroupAnalyticsUsage();
        System.assertEquals(new Map<String, Integer>(), groupAnalyticsUsage.perUserUsage);
        System.assertEquals(null, groupAnalyticsUsage.brandGuid);
        System.assertEquals(null, groupAnalyticsUsage.r_limit);
    }
}