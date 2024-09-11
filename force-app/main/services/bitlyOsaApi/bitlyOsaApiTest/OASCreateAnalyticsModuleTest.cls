@isTest
private class OASCreateAnalyticsModuleTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = createAnalyticsModule1;
        OASCreateAnalyticsModule createAnalyticsModule3 = new OASCreateAnalyticsModule();
        OASCreateAnalyticsModule createAnalyticsModule4 = createAnalyticsModule3;

        System.assert(createAnalyticsModule1.equals(createAnalyticsModule2));
        System.assert(createAnalyticsModule2.equals(createAnalyticsModule1));
        System.assert(createAnalyticsModule1.equals(createAnalyticsModule1));
        System.assert(createAnalyticsModule3.equals(createAnalyticsModule4));
        System.assert(createAnalyticsModule4.equals(createAnalyticsModule3));
        System.assert(createAnalyticsModule3.equals(createAnalyticsModule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule3 = new OASCreateAnalyticsModule();
        OASCreateAnalyticsModule createAnalyticsModule4 = new OASCreateAnalyticsModule();

        System.assert(createAnalyticsModule1.equals(createAnalyticsModule2));
        System.assert(createAnalyticsModule2.equals(createAnalyticsModule1));
        System.assert(createAnalyticsModule3.equals(createAnalyticsModule4));
        System.assert(createAnalyticsModule4.equals(createAnalyticsModule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = new OASCreateAnalyticsModule();

        System.assertEquals(false, createAnalyticsModule1.equals('foo'));
        System.assertEquals(false, createAnalyticsModule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = new OASCreateAnalyticsModule();
        OASCreateAnalyticsModule createAnalyticsModule3;

        System.assertEquals(false, createAnalyticsModule1.equals(createAnalyticsModule3));
        System.assertEquals(false, createAnalyticsModule2.equals(createAnalyticsModule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = new OASCreateAnalyticsModule();

        System.assertEquals(createAnalyticsModule1.hashCode(), createAnalyticsModule1.hashCode());
        System.assertEquals(createAnalyticsModule2.hashCode(), createAnalyticsModule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateAnalyticsModule createAnalyticsModule1 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule2 = OASCreateAnalyticsModule.getExample();
        OASCreateAnalyticsModule createAnalyticsModule3 = new OASCreateAnalyticsModule();
        OASCreateAnalyticsModule createAnalyticsModule4 = new OASCreateAnalyticsModule();

        System.assert(createAnalyticsModule1.equals(createAnalyticsModule2));
        System.assert(createAnalyticsModule3.equals(createAnalyticsModule4));
        System.assertEquals(createAnalyticsModule1.hashCode(), createAnalyticsModule2.hashCode());
        System.assertEquals(createAnalyticsModule3.hashCode(), createAnalyticsModule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateAnalyticsModule createAnalyticsModule = new OASCreateAnalyticsModule();
        Map<String, String> propertymappings = createAnalyticsModule.getPropertyMappings();
        System.assertEquals('moduleSettings', propertymappings.get('module_settings'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('reportGuid', propertymappings.get('report_guid'));
    }
}