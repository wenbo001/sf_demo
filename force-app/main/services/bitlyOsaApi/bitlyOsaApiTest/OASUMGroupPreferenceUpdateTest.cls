@isTest
private class OASUMGroupPreferenceUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = umGroupPreferenceUpdate1;
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate3 = new OASUMGroupPreferenceUpdate();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate4 = umGroupPreferenceUpdate3;

        System.assert(umGroupPreferenceUpdate1.equals(umGroupPreferenceUpdate2));
        System.assert(umGroupPreferenceUpdate2.equals(umGroupPreferenceUpdate1));
        System.assert(umGroupPreferenceUpdate1.equals(umGroupPreferenceUpdate1));
        System.assert(umGroupPreferenceUpdate3.equals(umGroupPreferenceUpdate4));
        System.assert(umGroupPreferenceUpdate4.equals(umGroupPreferenceUpdate3));
        System.assert(umGroupPreferenceUpdate3.equals(umGroupPreferenceUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate3 = new OASUMGroupPreferenceUpdate();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate4 = new OASUMGroupPreferenceUpdate();

        System.assert(umGroupPreferenceUpdate1.equals(umGroupPreferenceUpdate2));
        System.assert(umGroupPreferenceUpdate2.equals(umGroupPreferenceUpdate1));
        System.assert(umGroupPreferenceUpdate3.equals(umGroupPreferenceUpdate4));
        System.assert(umGroupPreferenceUpdate4.equals(umGroupPreferenceUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = new OASUMGroupPreferenceUpdate();

        System.assertEquals(false, umGroupPreferenceUpdate1.equals('foo'));
        System.assertEquals(false, umGroupPreferenceUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = new OASUMGroupPreferenceUpdate();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate3;

        System.assertEquals(false, umGroupPreferenceUpdate1.equals(umGroupPreferenceUpdate3));
        System.assertEquals(false, umGroupPreferenceUpdate2.equals(umGroupPreferenceUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = new OASUMGroupPreferenceUpdate();

        System.assertEquals(umGroupPreferenceUpdate1.hashCode(), umGroupPreferenceUpdate1.hashCode());
        System.assertEquals(umGroupPreferenceUpdate2.hashCode(), umGroupPreferenceUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate1 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate2 = OASUMGroupPreferenceUpdate.getExample();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate3 = new OASUMGroupPreferenceUpdate();
        OASUMGroupPreferenceUpdate umGroupPreferenceUpdate4 = new OASUMGroupPreferenceUpdate();

        System.assert(umGroupPreferenceUpdate1.equals(umGroupPreferenceUpdate2));
        System.assert(umGroupPreferenceUpdate3.equals(umGroupPreferenceUpdate4));
        System.assertEquals(umGroupPreferenceUpdate1.hashCode(), umGroupPreferenceUpdate2.hashCode());
        System.assertEquals(umGroupPreferenceUpdate3.hashCode(), umGroupPreferenceUpdate4.hashCode());
    }
}