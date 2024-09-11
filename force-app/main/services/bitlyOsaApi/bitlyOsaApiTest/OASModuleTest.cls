@isTest
private class OASModuleTest {
    @isTest
    private static void equalsSameInstance() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = module1;
        OASModule module3 = new OASModule();
        OASModule module4 = module3;

        System.assert(module1.equals(module2));
        System.assert(module2.equals(module1));
        System.assert(module1.equals(module1));
        System.assert(module3.equals(module4));
        System.assert(module4.equals(module3));
        System.assert(module3.equals(module3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = OASModule.getExample();
        OASModule module3 = new OASModule();
        OASModule module4 = new OASModule();

        System.assert(module1.equals(module2));
        System.assert(module2.equals(module1));
        System.assert(module3.equals(module4));
        System.assert(module4.equals(module3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = new OASModule();

        System.assertEquals(false, module1.equals('foo'));
        System.assertEquals(false, module2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = new OASModule();
        OASModule module3;

        System.assertEquals(false, module1.equals(module3));
        System.assertEquals(false, module2.equals(module3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = new OASModule();

        System.assertEquals(module1.hashCode(), module1.hashCode());
        System.assertEquals(module2.hashCode(), module2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASModule module1 = OASModule.getExample();
        OASModule module2 = OASModule.getExample();
        OASModule module3 = new OASModule();
        OASModule module4 = new OASModule();

        System.assert(module1.equals(module2));
        System.assert(module3.equals(module4));
        System.assertEquals(module1.hashCode(), module2.hashCode());
        System.assertEquals(module3.hashCode(), module4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASModule module = new OASModule();
        Map<String, String> propertymappings = module.getPropertyMappings();
        System.assertEquals('moduleGuid', propertymappings.get('module_guid'));
        System.assertEquals('lastModifiedBy', propertymappings.get('last_modified_by'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}