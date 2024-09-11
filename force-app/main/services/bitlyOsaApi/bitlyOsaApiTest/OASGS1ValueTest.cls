@isTest
private class OASGS1ValueTest {
    @isTest
    private static void equalsSameInstance() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = gs1Value1;
        OASGS1Value gs1Value3 = new OASGS1Value();
        OASGS1Value gs1Value4 = gs1Value3;

        System.assert(gs1Value1.equals(gs1Value2));
        System.assert(gs1Value2.equals(gs1Value1));
        System.assert(gs1Value1.equals(gs1Value1));
        System.assert(gs1Value3.equals(gs1Value4));
        System.assert(gs1Value4.equals(gs1Value3));
        System.assert(gs1Value3.equals(gs1Value3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = OASGS1Value.getExample();
        OASGS1Value gs1Value3 = new OASGS1Value();
        OASGS1Value gs1Value4 = new OASGS1Value();

        System.assert(gs1Value1.equals(gs1Value2));
        System.assert(gs1Value2.equals(gs1Value1));
        System.assert(gs1Value3.equals(gs1Value4));
        System.assert(gs1Value4.equals(gs1Value3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = new OASGS1Value();

        System.assertEquals(false, gs1Value1.equals('foo'));
        System.assertEquals(false, gs1Value2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = new OASGS1Value();
        OASGS1Value gs1Value3;

        System.assertEquals(false, gs1Value1.equals(gs1Value3));
        System.assertEquals(false, gs1Value2.equals(gs1Value3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = new OASGS1Value();

        System.assertEquals(gs1Value1.hashCode(), gs1Value1.hashCode());
        System.assertEquals(gs1Value2.hashCode(), gs1Value2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGS1Value gs1Value1 = OASGS1Value.getExample();
        OASGS1Value gs1Value2 = OASGS1Value.getExample();
        OASGS1Value gs1Value3 = new OASGS1Value();
        OASGS1Value gs1Value4 = new OASGS1Value();

        System.assert(gs1Value1.equals(gs1Value2));
        System.assert(gs1Value3.equals(gs1Value4));
        System.assertEquals(gs1Value1.hashCode(), gs1Value2.hashCode());
        System.assertEquals(gs1Value3.hashCode(), gs1Value4.hashCode());
    }
}