@isTest
private class OASCreateOverrideRulesTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = createOverrideRules1;
        OASCreateOverrideRules createOverrideRules3 = new OASCreateOverrideRules();
        OASCreateOverrideRules createOverrideRules4 = createOverrideRules3;

        System.assert(createOverrideRules1.equals(createOverrideRules2));
        System.assert(createOverrideRules2.equals(createOverrideRules1));
        System.assert(createOverrideRules1.equals(createOverrideRules1));
        System.assert(createOverrideRules3.equals(createOverrideRules4));
        System.assert(createOverrideRules4.equals(createOverrideRules3));
        System.assert(createOverrideRules3.equals(createOverrideRules3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules3 = new OASCreateOverrideRules();
        OASCreateOverrideRules createOverrideRules4 = new OASCreateOverrideRules();

        System.assert(createOverrideRules1.equals(createOverrideRules2));
        System.assert(createOverrideRules2.equals(createOverrideRules1));
        System.assert(createOverrideRules3.equals(createOverrideRules4));
        System.assert(createOverrideRules4.equals(createOverrideRules3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = new OASCreateOverrideRules();

        System.assertEquals(false, createOverrideRules1.equals('foo'));
        System.assertEquals(false, createOverrideRules2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = new OASCreateOverrideRules();
        OASCreateOverrideRules createOverrideRules3;

        System.assertEquals(false, createOverrideRules1.equals(createOverrideRules3));
        System.assertEquals(false, createOverrideRules2.equals(createOverrideRules3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = new OASCreateOverrideRules();

        System.assertEquals(createOverrideRules1.hashCode(), createOverrideRules1.hashCode());
        System.assertEquals(createOverrideRules2.hashCode(), createOverrideRules2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateOverrideRules createOverrideRules1 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules2 = OASCreateOverrideRules.getExample();
        OASCreateOverrideRules createOverrideRules3 = new OASCreateOverrideRules();
        OASCreateOverrideRules createOverrideRules4 = new OASCreateOverrideRules();

        System.assert(createOverrideRules1.equals(createOverrideRules2));
        System.assert(createOverrideRules3.equals(createOverrideRules4));
        System.assertEquals(createOverrideRules1.hashCode(), createOverrideRules2.hashCode());
        System.assertEquals(createOverrideRules3.hashCode(), createOverrideRules4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateOverrideRules createOverrideRules = new OASCreateOverrideRules();
        Map<String, String> propertymappings = createOverrideRules.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}