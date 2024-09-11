@isTest
private class OASUpdateAnalyticsModuleTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = updateAnalyticsModule1;
        OASUpdateAnalyticsModule updateAnalyticsModule3 = new OASUpdateAnalyticsModule();
        OASUpdateAnalyticsModule updateAnalyticsModule4 = updateAnalyticsModule3;

        System.assert(updateAnalyticsModule1.equals(updateAnalyticsModule2));
        System.assert(updateAnalyticsModule2.equals(updateAnalyticsModule1));
        System.assert(updateAnalyticsModule1.equals(updateAnalyticsModule1));
        System.assert(updateAnalyticsModule3.equals(updateAnalyticsModule4));
        System.assert(updateAnalyticsModule4.equals(updateAnalyticsModule3));
        System.assert(updateAnalyticsModule3.equals(updateAnalyticsModule3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule3 = new OASUpdateAnalyticsModule();
        OASUpdateAnalyticsModule updateAnalyticsModule4 = new OASUpdateAnalyticsModule();

        System.assert(updateAnalyticsModule1.equals(updateAnalyticsModule2));
        System.assert(updateAnalyticsModule2.equals(updateAnalyticsModule1));
        System.assert(updateAnalyticsModule3.equals(updateAnalyticsModule4));
        System.assert(updateAnalyticsModule4.equals(updateAnalyticsModule3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = new OASUpdateAnalyticsModule();

        System.assertEquals(false, updateAnalyticsModule1.equals('foo'));
        System.assertEquals(false, updateAnalyticsModule2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = new OASUpdateAnalyticsModule();
        OASUpdateAnalyticsModule updateAnalyticsModule3;

        System.assertEquals(false, updateAnalyticsModule1.equals(updateAnalyticsModule3));
        System.assertEquals(false, updateAnalyticsModule2.equals(updateAnalyticsModule3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = new OASUpdateAnalyticsModule();

        System.assertEquals(updateAnalyticsModule1.hashCode(), updateAnalyticsModule1.hashCode());
        System.assertEquals(updateAnalyticsModule2.hashCode(), updateAnalyticsModule2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateAnalyticsModule updateAnalyticsModule1 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule2 = OASUpdateAnalyticsModule.getExample();
        OASUpdateAnalyticsModule updateAnalyticsModule3 = new OASUpdateAnalyticsModule();
        OASUpdateAnalyticsModule updateAnalyticsModule4 = new OASUpdateAnalyticsModule();

        System.assert(updateAnalyticsModule1.equals(updateAnalyticsModule2));
        System.assert(updateAnalyticsModule3.equals(updateAnalyticsModule4));
        System.assertEquals(updateAnalyticsModule1.hashCode(), updateAnalyticsModule2.hashCode());
        System.assertEquals(updateAnalyticsModule3.hashCode(), updateAnalyticsModule4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateAnalyticsModule updateAnalyticsModule = new OASUpdateAnalyticsModule();
        Map<String, String> propertymappings = updateAnalyticsModule.getPropertyMappings();
        System.assertEquals('moduleSettings', propertymappings.get('module_settings'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}