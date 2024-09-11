@isTest
private class OASDeeplinkRulesTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = deeplinkRules1;
        OASDeeplinkRules deeplinkRules3 = new OASDeeplinkRules();
        OASDeeplinkRules deeplinkRules4 = deeplinkRules3;

        System.assert(deeplinkRules1.equals(deeplinkRules2));
        System.assert(deeplinkRules2.equals(deeplinkRules1));
        System.assert(deeplinkRules1.equals(deeplinkRules1));
        System.assert(deeplinkRules3.equals(deeplinkRules4));
        System.assert(deeplinkRules4.equals(deeplinkRules3));
        System.assert(deeplinkRules3.equals(deeplinkRules3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules3 = new OASDeeplinkRules();
        OASDeeplinkRules deeplinkRules4 = new OASDeeplinkRules();

        System.assert(deeplinkRules1.equals(deeplinkRules2));
        System.assert(deeplinkRules2.equals(deeplinkRules1));
        System.assert(deeplinkRules3.equals(deeplinkRules4));
        System.assert(deeplinkRules4.equals(deeplinkRules3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = new OASDeeplinkRules();

        System.assertEquals(false, deeplinkRules1.equals('foo'));
        System.assertEquals(false, deeplinkRules2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = new OASDeeplinkRules();
        OASDeeplinkRules deeplinkRules3;

        System.assertEquals(false, deeplinkRules1.equals(deeplinkRules3));
        System.assertEquals(false, deeplinkRules2.equals(deeplinkRules3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = new OASDeeplinkRules();

        System.assertEquals(deeplinkRules1.hashCode(), deeplinkRules1.hashCode());
        System.assertEquals(deeplinkRules2.hashCode(), deeplinkRules2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeeplinkRules deeplinkRules1 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules2 = OASDeeplinkRules.getExample();
        OASDeeplinkRules deeplinkRules3 = new OASDeeplinkRules();
        OASDeeplinkRules deeplinkRules4 = new OASDeeplinkRules();

        System.assert(deeplinkRules1.equals(deeplinkRules2));
        System.assert(deeplinkRules3.equals(deeplinkRules4));
        System.assertEquals(deeplinkRules1.hashCode(), deeplinkRules2.hashCode());
        System.assertEquals(deeplinkRules3.hashCode(), deeplinkRules4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASDeeplinkRules deeplinkRules = new OASDeeplinkRules();
        System.assertEquals(new List<OASDeeplinkRule>(), deeplinkRules.rules);
    }
}