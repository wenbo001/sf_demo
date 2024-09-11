@isTest
private class OASGroupPreferencesTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = groupPreferences1;
        OASGroupPreferences groupPreferences3 = new OASGroupPreferences();
        OASGroupPreferences groupPreferences4 = groupPreferences3;

        System.assert(groupPreferences1.equals(groupPreferences2));
        System.assert(groupPreferences2.equals(groupPreferences1));
        System.assert(groupPreferences1.equals(groupPreferences1));
        System.assert(groupPreferences3.equals(groupPreferences4));
        System.assert(groupPreferences4.equals(groupPreferences3));
        System.assert(groupPreferences3.equals(groupPreferences3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences3 = new OASGroupPreferences();
        OASGroupPreferences groupPreferences4 = new OASGroupPreferences();

        System.assert(groupPreferences1.equals(groupPreferences2));
        System.assert(groupPreferences2.equals(groupPreferences1));
        System.assert(groupPreferences3.equals(groupPreferences4));
        System.assert(groupPreferences4.equals(groupPreferences3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = new OASGroupPreferences();

        System.assertEquals(false, groupPreferences1.equals('foo'));
        System.assertEquals(false, groupPreferences2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = new OASGroupPreferences();
        OASGroupPreferences groupPreferences3;

        System.assertEquals(false, groupPreferences1.equals(groupPreferences3));
        System.assertEquals(false, groupPreferences2.equals(groupPreferences3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = new OASGroupPreferences();

        System.assertEquals(groupPreferences1.hashCode(), groupPreferences1.hashCode());
        System.assertEquals(groupPreferences2.hashCode(), groupPreferences2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupPreferences groupPreferences1 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences2 = OASGroupPreferences.getExample();
        OASGroupPreferences groupPreferences3 = new OASGroupPreferences();
        OASGroupPreferences groupPreferences4 = new OASGroupPreferences();

        System.assert(groupPreferences1.equals(groupPreferences2));
        System.assert(groupPreferences3.equals(groupPreferences4));
        System.assertEquals(groupPreferences1.hashCode(), groupPreferences2.hashCode());
        System.assertEquals(groupPreferences3.hashCode(), groupPreferences4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupPreferences groupPreferences = new OASGroupPreferences();
        Map<String, String> propertymappings = groupPreferences.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('domainPreference', propertymappings.get('domain_preference'));
    }
}