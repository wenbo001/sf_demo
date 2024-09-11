@isTest
private class OASExpectationFailedTest {
    @isTest
    private static void equalsSameInstance() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = expectationFailed1;
        OASExpectationFailed expectationFailed3 = new OASExpectationFailed();
        OASExpectationFailed expectationFailed4 = expectationFailed3;

        System.assert(expectationFailed1.equals(expectationFailed2));
        System.assert(expectationFailed2.equals(expectationFailed1));
        System.assert(expectationFailed1.equals(expectationFailed1));
        System.assert(expectationFailed3.equals(expectationFailed4));
        System.assert(expectationFailed4.equals(expectationFailed3));
        System.assert(expectationFailed3.equals(expectationFailed3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed3 = new OASExpectationFailed();
        OASExpectationFailed expectationFailed4 = new OASExpectationFailed();

        System.assert(expectationFailed1.equals(expectationFailed2));
        System.assert(expectationFailed2.equals(expectationFailed1));
        System.assert(expectationFailed3.equals(expectationFailed4));
        System.assert(expectationFailed4.equals(expectationFailed3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = new OASExpectationFailed();

        System.assertEquals(false, expectationFailed1.equals('foo'));
        System.assertEquals(false, expectationFailed2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = new OASExpectationFailed();
        OASExpectationFailed expectationFailed3;

        System.assertEquals(false, expectationFailed1.equals(expectationFailed3));
        System.assertEquals(false, expectationFailed2.equals(expectationFailed3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = new OASExpectationFailed();

        System.assertEquals(expectationFailed1.hashCode(), expectationFailed1.hashCode());
        System.assertEquals(expectationFailed2.hashCode(), expectationFailed2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExpectationFailed expectationFailed1 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed2 = OASExpectationFailed.getExample();
        OASExpectationFailed expectationFailed3 = new OASExpectationFailed();
        OASExpectationFailed expectationFailed4 = new OASExpectationFailed();

        System.assert(expectationFailed1.equals(expectationFailed2));
        System.assert(expectationFailed3.equals(expectationFailed4));
        System.assertEquals(expectationFailed1.hashCode(), expectationFailed2.hashCode());
        System.assertEquals(expectationFailed3.hashCode(), expectationFailed4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExpectationFailed expectationFailed = new OASExpectationFailed();
        System.assertEquals(new List<OASFieldError>(), expectationFailed.errors);
        System.assertEquals(null, expectationFailed.message);
        System.assertEquals(null, expectationFailed.description);
        System.assertEquals(null, expectationFailed.resource);
    }
}