@isTest
private class OASConflictTest {
    @isTest
    private static void equalsSameInstance() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = conflict1;
        OASConflict conflict3 = new OASConflict();
        OASConflict conflict4 = conflict3;

        System.assert(conflict1.equals(conflict2));
        System.assert(conflict2.equals(conflict1));
        System.assert(conflict1.equals(conflict1));
        System.assert(conflict3.equals(conflict4));
        System.assert(conflict4.equals(conflict3));
        System.assert(conflict3.equals(conflict3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = OASConflict.getExample();
        OASConflict conflict3 = new OASConflict();
        OASConflict conflict4 = new OASConflict();

        System.assert(conflict1.equals(conflict2));
        System.assert(conflict2.equals(conflict1));
        System.assert(conflict3.equals(conflict4));
        System.assert(conflict4.equals(conflict3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = new OASConflict();

        System.assertEquals(false, conflict1.equals('foo'));
        System.assertEquals(false, conflict2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = new OASConflict();
        OASConflict conflict3;

        System.assertEquals(false, conflict1.equals(conflict3));
        System.assertEquals(false, conflict2.equals(conflict3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = new OASConflict();

        System.assertEquals(conflict1.hashCode(), conflict1.hashCode());
        System.assertEquals(conflict2.hashCode(), conflict2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASConflict conflict1 = OASConflict.getExample();
        OASConflict conflict2 = OASConflict.getExample();
        OASConflict conflict3 = new OASConflict();
        OASConflict conflict4 = new OASConflict();

        System.assert(conflict1.equals(conflict2));
        System.assert(conflict3.equals(conflict4));
        System.assertEquals(conflict1.hashCode(), conflict2.hashCode());
        System.assertEquals(conflict3.hashCode(), conflict4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASConflict conflict = new OASConflict();
        System.assertEquals(new List<OASFieldError>(), conflict.errors);
        System.assertEquals(null, conflict.message);
        System.assertEquals(null, conflict.description);
        System.assertEquals(null, conflict.resource);
    }
}