@isTest
private class OASTooManyRequestsTest {
    @isTest
    private static void equalsSameInstance() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = tooManyRequests1;
        OASTooManyRequests tooManyRequests3 = new OASTooManyRequests();
        OASTooManyRequests tooManyRequests4 = tooManyRequests3;

        System.assert(tooManyRequests1.equals(tooManyRequests2));
        System.assert(tooManyRequests2.equals(tooManyRequests1));
        System.assert(tooManyRequests1.equals(tooManyRequests1));
        System.assert(tooManyRequests3.equals(tooManyRequests4));
        System.assert(tooManyRequests4.equals(tooManyRequests3));
        System.assert(tooManyRequests3.equals(tooManyRequests3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests3 = new OASTooManyRequests();
        OASTooManyRequests tooManyRequests4 = new OASTooManyRequests();

        System.assert(tooManyRequests1.equals(tooManyRequests2));
        System.assert(tooManyRequests2.equals(tooManyRequests1));
        System.assert(tooManyRequests3.equals(tooManyRequests4));
        System.assert(tooManyRequests4.equals(tooManyRequests3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = new OASTooManyRequests();

        System.assertEquals(false, tooManyRequests1.equals('foo'));
        System.assertEquals(false, tooManyRequests2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = new OASTooManyRequests();
        OASTooManyRequests tooManyRequests3;

        System.assertEquals(false, tooManyRequests1.equals(tooManyRequests3));
        System.assertEquals(false, tooManyRequests2.equals(tooManyRequests3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = new OASTooManyRequests();

        System.assertEquals(tooManyRequests1.hashCode(), tooManyRequests1.hashCode());
        System.assertEquals(tooManyRequests2.hashCode(), tooManyRequests2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTooManyRequests tooManyRequests1 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests2 = OASTooManyRequests.getExample();
        OASTooManyRequests tooManyRequests3 = new OASTooManyRequests();
        OASTooManyRequests tooManyRequests4 = new OASTooManyRequests();

        System.assert(tooManyRequests1.equals(tooManyRequests2));
        System.assert(tooManyRequests3.equals(tooManyRequests4));
        System.assertEquals(tooManyRequests1.hashCode(), tooManyRequests2.hashCode());
        System.assertEquals(tooManyRequests3.hashCode(), tooManyRequests4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTooManyRequests tooManyRequests = new OASTooManyRequests();
        System.assertEquals(new List<OASFieldError>(), tooManyRequests.errors);
        System.assertEquals(null, tooManyRequests.message);
        System.assertEquals(null, tooManyRequests.description);
        System.assertEquals(null, tooManyRequests.resource);
    }
}