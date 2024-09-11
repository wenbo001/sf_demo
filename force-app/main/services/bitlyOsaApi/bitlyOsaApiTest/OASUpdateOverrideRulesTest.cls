@isTest
private class OASUpdateOverrideRulesTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = updateOverrideRules1;
        OASUpdateOverrideRules updateOverrideRules3 = new OASUpdateOverrideRules();
        OASUpdateOverrideRules updateOverrideRules4 = updateOverrideRules3;

        System.assert(updateOverrideRules1.equals(updateOverrideRules2));
        System.assert(updateOverrideRules2.equals(updateOverrideRules1));
        System.assert(updateOverrideRules1.equals(updateOverrideRules1));
        System.assert(updateOverrideRules3.equals(updateOverrideRules4));
        System.assert(updateOverrideRules4.equals(updateOverrideRules3));
        System.assert(updateOverrideRules3.equals(updateOverrideRules3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules3 = new OASUpdateOverrideRules();
        OASUpdateOverrideRules updateOverrideRules4 = new OASUpdateOverrideRules();

        System.assert(updateOverrideRules1.equals(updateOverrideRules2));
        System.assert(updateOverrideRules2.equals(updateOverrideRules1));
        System.assert(updateOverrideRules3.equals(updateOverrideRules4));
        System.assert(updateOverrideRules4.equals(updateOverrideRules3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = new OASUpdateOverrideRules();

        System.assertEquals(false, updateOverrideRules1.equals('foo'));
        System.assertEquals(false, updateOverrideRules2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = new OASUpdateOverrideRules();
        OASUpdateOverrideRules updateOverrideRules3;

        System.assertEquals(false, updateOverrideRules1.equals(updateOverrideRules3));
        System.assertEquals(false, updateOverrideRules2.equals(updateOverrideRules3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = new OASUpdateOverrideRules();

        System.assertEquals(updateOverrideRules1.hashCode(), updateOverrideRules1.hashCode());
        System.assertEquals(updateOverrideRules2.hashCode(), updateOverrideRules2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateOverrideRules updateOverrideRules1 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules2 = OASUpdateOverrideRules.getExample();
        OASUpdateOverrideRules updateOverrideRules3 = new OASUpdateOverrideRules();
        OASUpdateOverrideRules updateOverrideRules4 = new OASUpdateOverrideRules();

        System.assert(updateOverrideRules1.equals(updateOverrideRules2));
        System.assert(updateOverrideRules3.equals(updateOverrideRules4));
        System.assertEquals(updateOverrideRules1.hashCode(), updateOverrideRules2.hashCode());
        System.assertEquals(updateOverrideRules3.hashCode(), updateOverrideRules4.hashCode());
    }
}