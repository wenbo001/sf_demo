@isTest
private class OASUMGroupPreferenceTest {
    @isTest
    private static void equalsSameInstance() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = umGroupPreference1;
        OASUMGroupPreference umGroupPreference3 = new OASUMGroupPreference();
        OASUMGroupPreference umGroupPreference4 = umGroupPreference3;

        System.assert(umGroupPreference1.equals(umGroupPreference2));
        System.assert(umGroupPreference2.equals(umGroupPreference1));
        System.assert(umGroupPreference1.equals(umGroupPreference1));
        System.assert(umGroupPreference3.equals(umGroupPreference4));
        System.assert(umGroupPreference4.equals(umGroupPreference3));
        System.assert(umGroupPreference3.equals(umGroupPreference3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference3 = new OASUMGroupPreference();
        OASUMGroupPreference umGroupPreference4 = new OASUMGroupPreference();

        System.assert(umGroupPreference1.equals(umGroupPreference2));
        System.assert(umGroupPreference2.equals(umGroupPreference1));
        System.assert(umGroupPreference3.equals(umGroupPreference4));
        System.assert(umGroupPreference4.equals(umGroupPreference3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = new OASUMGroupPreference();

        System.assertEquals(false, umGroupPreference1.equals('foo'));
        System.assertEquals(false, umGroupPreference2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = new OASUMGroupPreference();
        OASUMGroupPreference umGroupPreference3;

        System.assertEquals(false, umGroupPreference1.equals(umGroupPreference3));
        System.assertEquals(false, umGroupPreference2.equals(umGroupPreference3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = new OASUMGroupPreference();

        System.assertEquals(umGroupPreference1.hashCode(), umGroupPreference1.hashCode());
        System.assertEquals(umGroupPreference2.hashCode(), umGroupPreference2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUMGroupPreference umGroupPreference1 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference2 = OASUMGroupPreference.getExample();
        OASUMGroupPreference umGroupPreference3 = new OASUMGroupPreference();
        OASUMGroupPreference umGroupPreference4 = new OASUMGroupPreference();

        System.assert(umGroupPreference1.equals(umGroupPreference2));
        System.assert(umGroupPreference3.equals(umGroupPreference4));
        System.assertEquals(umGroupPreference1.hashCode(), umGroupPreference2.hashCode());
        System.assertEquals(umGroupPreference3.hashCode(), umGroupPreference4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUMGroupPreference umGroupPreference = new OASUMGroupPreference();
        Map<String, String> propertymappings = umGroupPreference.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}