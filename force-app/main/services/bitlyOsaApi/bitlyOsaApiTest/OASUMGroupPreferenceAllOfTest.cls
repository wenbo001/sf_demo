@isTest
private class OASUMGroupPreferenceAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = umGroupPreferenceAllOf1;
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf3 = new OASUMGroupPreferenceAllOf();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf4 = umGroupPreferenceAllOf3;

        System.assert(umGroupPreferenceAllOf1.equals(umGroupPreferenceAllOf2));
        System.assert(umGroupPreferenceAllOf2.equals(umGroupPreferenceAllOf1));
        System.assert(umGroupPreferenceAllOf1.equals(umGroupPreferenceAllOf1));
        System.assert(umGroupPreferenceAllOf3.equals(umGroupPreferenceAllOf4));
        System.assert(umGroupPreferenceAllOf4.equals(umGroupPreferenceAllOf3));
        System.assert(umGroupPreferenceAllOf3.equals(umGroupPreferenceAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf3 = new OASUMGroupPreferenceAllOf();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf4 = new OASUMGroupPreferenceAllOf();

        System.assert(umGroupPreferenceAllOf1.equals(umGroupPreferenceAllOf2));
        System.assert(umGroupPreferenceAllOf2.equals(umGroupPreferenceAllOf1));
        System.assert(umGroupPreferenceAllOf3.equals(umGroupPreferenceAllOf4));
        System.assert(umGroupPreferenceAllOf4.equals(umGroupPreferenceAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = new OASUMGroupPreferenceAllOf();

        System.assertEquals(false, umGroupPreferenceAllOf1.equals('foo'));
        System.assertEquals(false, umGroupPreferenceAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = new OASUMGroupPreferenceAllOf();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf3;

        System.assertEquals(false, umGroupPreferenceAllOf1.equals(umGroupPreferenceAllOf3));
        System.assertEquals(false, umGroupPreferenceAllOf2.equals(umGroupPreferenceAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = new OASUMGroupPreferenceAllOf();

        System.assertEquals(umGroupPreferenceAllOf1.hashCode(), umGroupPreferenceAllOf1.hashCode());
        System.assertEquals(umGroupPreferenceAllOf2.hashCode(), umGroupPreferenceAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf1 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf2 = OASUMGroupPreferenceAllOf.getExample();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf3 = new OASUMGroupPreferenceAllOf();
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf4 = new OASUMGroupPreferenceAllOf();

        System.assert(umGroupPreferenceAllOf1.equals(umGroupPreferenceAllOf2));
        System.assert(umGroupPreferenceAllOf3.equals(umGroupPreferenceAllOf4));
        System.assertEquals(umGroupPreferenceAllOf1.hashCode(), umGroupPreferenceAllOf2.hashCode());
        System.assertEquals(umGroupPreferenceAllOf3.hashCode(), umGroupPreferenceAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUMGroupPreferenceAllOf umGroupPreferenceAllOf = new OASUMGroupPreferenceAllOf();
        Map<String, String> propertymappings = umGroupPreferenceAllOf.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}