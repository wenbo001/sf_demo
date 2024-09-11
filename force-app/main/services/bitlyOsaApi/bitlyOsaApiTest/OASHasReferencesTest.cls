@isTest
private class OASHasReferencesTest {
    @isTest
    private static void equalsSameInstance() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = hasReferences1;
        OASHasReferences hasReferences3 = new OASHasReferences();
        OASHasReferences hasReferences4 = hasReferences3;

        System.assert(hasReferences1.equals(hasReferences2));
        System.assert(hasReferences2.equals(hasReferences1));
        System.assert(hasReferences1.equals(hasReferences1));
        System.assert(hasReferences3.equals(hasReferences4));
        System.assert(hasReferences4.equals(hasReferences3));
        System.assert(hasReferences3.equals(hasReferences3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = OASHasReferences.getExample();
        OASHasReferences hasReferences3 = new OASHasReferences();
        OASHasReferences hasReferences4 = new OASHasReferences();

        System.assert(hasReferences1.equals(hasReferences2));
        System.assert(hasReferences2.equals(hasReferences1));
        System.assert(hasReferences3.equals(hasReferences4));
        System.assert(hasReferences4.equals(hasReferences3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = new OASHasReferences();

        System.assertEquals(false, hasReferences1.equals('foo'));
        System.assertEquals(false, hasReferences2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = new OASHasReferences();
        OASHasReferences hasReferences3;

        System.assertEquals(false, hasReferences1.equals(hasReferences3));
        System.assertEquals(false, hasReferences2.equals(hasReferences3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = new OASHasReferences();

        System.assertEquals(hasReferences1.hashCode(), hasReferences1.hashCode());
        System.assertEquals(hasReferences2.hashCode(), hasReferences2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASHasReferences hasReferences1 = OASHasReferences.getExample();
        OASHasReferences hasReferences2 = OASHasReferences.getExample();
        OASHasReferences hasReferences3 = new OASHasReferences();
        OASHasReferences hasReferences4 = new OASHasReferences();

        System.assert(hasReferences1.equals(hasReferences2));
        System.assert(hasReferences3.equals(hasReferences4));
        System.assertEquals(hasReferences1.hashCode(), hasReferences2.hashCode());
        System.assertEquals(hasReferences3.hashCode(), hasReferences4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASHasReferences hasReferences = new OASHasReferences();
        System.assertEquals(new Map<String, String>(), hasReferences.references);
    }
}