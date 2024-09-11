@isTest
private class OASGoneTest {
    @isTest
    private static void equalsSameInstance() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = gone1;
        OASGone gone3 = new OASGone();
        OASGone gone4 = gone3;

        System.assert(gone1.equals(gone2));
        System.assert(gone2.equals(gone1));
        System.assert(gone1.equals(gone1));
        System.assert(gone3.equals(gone4));
        System.assert(gone4.equals(gone3));
        System.assert(gone3.equals(gone3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = OASGone.getExample();
        OASGone gone3 = new OASGone();
        OASGone gone4 = new OASGone();

        System.assert(gone1.equals(gone2));
        System.assert(gone2.equals(gone1));
        System.assert(gone3.equals(gone4));
        System.assert(gone4.equals(gone3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = new OASGone();

        System.assertEquals(false, gone1.equals('foo'));
        System.assertEquals(false, gone2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = new OASGone();
        OASGone gone3;

        System.assertEquals(false, gone1.equals(gone3));
        System.assertEquals(false, gone2.equals(gone3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = new OASGone();

        System.assertEquals(gone1.hashCode(), gone1.hashCode());
        System.assertEquals(gone2.hashCode(), gone2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGone gone1 = OASGone.getExample();
        OASGone gone2 = OASGone.getExample();
        OASGone gone3 = new OASGone();
        OASGone gone4 = new OASGone();

        System.assert(gone1.equals(gone2));
        System.assert(gone3.equals(gone4));
        System.assertEquals(gone1.hashCode(), gone2.hashCode());
        System.assertEquals(gone3.hashCode(), gone4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGone gone = new OASGone();
        System.assertEquals(new List<OASFieldError>(), gone.errors);
        System.assertEquals(null, gone.message);
        System.assertEquals(null, gone.description);
        System.assertEquals(null, gone.resource);
    }
}