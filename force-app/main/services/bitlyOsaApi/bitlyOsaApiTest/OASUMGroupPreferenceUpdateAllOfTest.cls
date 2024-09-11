@isTest
private class OASUMGroupPreferenceUpdateAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = umGroupPreferenceUpdateAllOf1;
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf3 = new OASUMGroupPreferenceUpdateAllOf();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf4 = umGroupPreferenceUpdateAllOf3;

        System.assert(umGroupPreferenceUpdateAllOf1.equals(umGroupPreferenceUpdateAllOf2));
        System.assert(umGroupPreferenceUpdateAllOf2.equals(umGroupPreferenceUpdateAllOf1));
        System.assert(umGroupPreferenceUpdateAllOf1.equals(umGroupPreferenceUpdateAllOf1));
        System.assert(umGroupPreferenceUpdateAllOf3.equals(umGroupPreferenceUpdateAllOf4));
        System.assert(umGroupPreferenceUpdateAllOf4.equals(umGroupPreferenceUpdateAllOf3));
        System.assert(umGroupPreferenceUpdateAllOf3.equals(umGroupPreferenceUpdateAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf3 = new OASUMGroupPreferenceUpdateAllOf();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf4 = new OASUMGroupPreferenceUpdateAllOf();

        System.assert(umGroupPreferenceUpdateAllOf1.equals(umGroupPreferenceUpdateAllOf2));
        System.assert(umGroupPreferenceUpdateAllOf2.equals(umGroupPreferenceUpdateAllOf1));
        System.assert(umGroupPreferenceUpdateAllOf3.equals(umGroupPreferenceUpdateAllOf4));
        System.assert(umGroupPreferenceUpdateAllOf4.equals(umGroupPreferenceUpdateAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = new OASUMGroupPreferenceUpdateAllOf();

        System.assertEquals(false, umGroupPreferenceUpdateAllOf1.equals('foo'));
        System.assertEquals(false, umGroupPreferenceUpdateAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = new OASUMGroupPreferenceUpdateAllOf();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf3;

        System.assertEquals(false, umGroupPreferenceUpdateAllOf1.equals(umGroupPreferenceUpdateAllOf3));
        System.assertEquals(false, umGroupPreferenceUpdateAllOf2.equals(umGroupPreferenceUpdateAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = new OASUMGroupPreferenceUpdateAllOf();

        System.assertEquals(umGroupPreferenceUpdateAllOf1.hashCode(), umGroupPreferenceUpdateAllOf1.hashCode());
        System.assertEquals(umGroupPreferenceUpdateAllOf2.hashCode(), umGroupPreferenceUpdateAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf1 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf2 = OASUMGroupPreferenceUpdateAllOf.getExample();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf3 = new OASUMGroupPreferenceUpdateAllOf();
        OASUMGroupPreferenceUpdateAllOf umGroupPreferenceUpdateAllOf4 = new OASUMGroupPreferenceUpdateAllOf();

        System.assert(umGroupPreferenceUpdateAllOf1.equals(umGroupPreferenceUpdateAllOf2));
        System.assert(umGroupPreferenceUpdateAllOf3.equals(umGroupPreferenceUpdateAllOf4));
        System.assertEquals(umGroupPreferenceUpdateAllOf1.hashCode(), umGroupPreferenceUpdateAllOf2.hashCode());
        System.assertEquals(umGroupPreferenceUpdateAllOf3.hashCode(), umGroupPreferenceUpdateAllOf4.hashCode());
    }
}