@isTest
private class OASUnprocessableEntityTest {
    @isTest
    private static void equalsSameInstance() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = unprocessableEntity1;
        OASUnprocessableEntity unprocessableEntity3 = new OASUnprocessableEntity();
        OASUnprocessableEntity unprocessableEntity4 = unprocessableEntity3;

        System.assert(unprocessableEntity1.equals(unprocessableEntity2));
        System.assert(unprocessableEntity2.equals(unprocessableEntity1));
        System.assert(unprocessableEntity1.equals(unprocessableEntity1));
        System.assert(unprocessableEntity3.equals(unprocessableEntity4));
        System.assert(unprocessableEntity4.equals(unprocessableEntity3));
        System.assert(unprocessableEntity3.equals(unprocessableEntity3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity3 = new OASUnprocessableEntity();
        OASUnprocessableEntity unprocessableEntity4 = new OASUnprocessableEntity();

        System.assert(unprocessableEntity1.equals(unprocessableEntity2));
        System.assert(unprocessableEntity2.equals(unprocessableEntity1));
        System.assert(unprocessableEntity3.equals(unprocessableEntity4));
        System.assert(unprocessableEntity4.equals(unprocessableEntity3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = new OASUnprocessableEntity();

        System.assertEquals(false, unprocessableEntity1.equals('foo'));
        System.assertEquals(false, unprocessableEntity2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = new OASUnprocessableEntity();
        OASUnprocessableEntity unprocessableEntity3;

        System.assertEquals(false, unprocessableEntity1.equals(unprocessableEntity3));
        System.assertEquals(false, unprocessableEntity2.equals(unprocessableEntity3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = new OASUnprocessableEntity();

        System.assertEquals(unprocessableEntity1.hashCode(), unprocessableEntity1.hashCode());
        System.assertEquals(unprocessableEntity2.hashCode(), unprocessableEntity2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUnprocessableEntity unprocessableEntity1 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity2 = OASUnprocessableEntity.getExample();
        OASUnprocessableEntity unprocessableEntity3 = new OASUnprocessableEntity();
        OASUnprocessableEntity unprocessableEntity4 = new OASUnprocessableEntity();

        System.assert(unprocessableEntity1.equals(unprocessableEntity2));
        System.assert(unprocessableEntity3.equals(unprocessableEntity4));
        System.assertEquals(unprocessableEntity1.hashCode(), unprocessableEntity2.hashCode());
        System.assertEquals(unprocessableEntity3.hashCode(), unprocessableEntity4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUnprocessableEntity unprocessableEntity = new OASUnprocessableEntity();
        System.assertEquals(new List<OASFieldError>(), unprocessableEntity.errors);
        System.assertEquals(null, unprocessableEntity.message);
        System.assertEquals(null, unprocessableEntity.description);
        System.assertEquals(null, unprocessableEntity.resource);
    }
}