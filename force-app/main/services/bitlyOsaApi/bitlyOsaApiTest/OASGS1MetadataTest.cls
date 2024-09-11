@isTest
private class OASGS1MetadataTest {
    @isTest
    private static void equalsSameInstance() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = gs1Metadata1;
        OASGS1Metadata gs1Metadata3 = new OASGS1Metadata();
        OASGS1Metadata gs1Metadata4 = gs1Metadata3;

        System.assert(gs1Metadata1.equals(gs1Metadata2));
        System.assert(gs1Metadata2.equals(gs1Metadata1));
        System.assert(gs1Metadata1.equals(gs1Metadata1));
        System.assert(gs1Metadata3.equals(gs1Metadata4));
        System.assert(gs1Metadata4.equals(gs1Metadata3));
        System.assert(gs1Metadata3.equals(gs1Metadata3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata3 = new OASGS1Metadata();
        OASGS1Metadata gs1Metadata4 = new OASGS1Metadata();

        System.assert(gs1Metadata1.equals(gs1Metadata2));
        System.assert(gs1Metadata2.equals(gs1Metadata1));
        System.assert(gs1Metadata3.equals(gs1Metadata4));
        System.assert(gs1Metadata4.equals(gs1Metadata3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = new OASGS1Metadata();

        System.assertEquals(false, gs1Metadata1.equals('foo'));
        System.assertEquals(false, gs1Metadata2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = new OASGS1Metadata();
        OASGS1Metadata gs1Metadata3;

        System.assertEquals(false, gs1Metadata1.equals(gs1Metadata3));
        System.assertEquals(false, gs1Metadata2.equals(gs1Metadata3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = new OASGS1Metadata();

        System.assertEquals(gs1Metadata1.hashCode(), gs1Metadata1.hashCode());
        System.assertEquals(gs1Metadata2.hashCode(), gs1Metadata2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGS1Metadata gs1Metadata1 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata2 = OASGS1Metadata.getExample();
        OASGS1Metadata gs1Metadata3 = new OASGS1Metadata();
        OASGS1Metadata gs1Metadata4 = new OASGS1Metadata();

        System.assert(gs1Metadata1.equals(gs1Metadata2));
        System.assert(gs1Metadata3.equals(gs1Metadata4));
        System.assertEquals(gs1Metadata1.hashCode(), gs1Metadata2.hashCode());
        System.assertEquals(gs1Metadata3.hashCode(), gs1Metadata4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGS1Metadata gs1Metadata = new OASGS1Metadata();
        System.assertEquals(new List<OASGS1Value>(), gs1Metadata.values);
    }
}