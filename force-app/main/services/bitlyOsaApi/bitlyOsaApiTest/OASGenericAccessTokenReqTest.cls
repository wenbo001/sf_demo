@isTest
private class OASGenericAccessTokenReqTest {
    @isTest
    private static void equalsSameInstance() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = genericAccessTokenReq1;
        OASGenericAccessTokenReq genericAccessTokenReq3 = new OASGenericAccessTokenReq();
        OASGenericAccessTokenReq genericAccessTokenReq4 = genericAccessTokenReq3;

        System.assert(genericAccessTokenReq1.equals(genericAccessTokenReq2));
        System.assert(genericAccessTokenReq2.equals(genericAccessTokenReq1));
        System.assert(genericAccessTokenReq1.equals(genericAccessTokenReq1));
        System.assert(genericAccessTokenReq3.equals(genericAccessTokenReq4));
        System.assert(genericAccessTokenReq4.equals(genericAccessTokenReq3));
        System.assert(genericAccessTokenReq3.equals(genericAccessTokenReq3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq3 = new OASGenericAccessTokenReq();
        OASGenericAccessTokenReq genericAccessTokenReq4 = new OASGenericAccessTokenReq();

        System.assert(genericAccessTokenReq1.equals(genericAccessTokenReq2));
        System.assert(genericAccessTokenReq2.equals(genericAccessTokenReq1));
        System.assert(genericAccessTokenReq3.equals(genericAccessTokenReq4));
        System.assert(genericAccessTokenReq4.equals(genericAccessTokenReq3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = new OASGenericAccessTokenReq();

        System.assertEquals(false, genericAccessTokenReq1.equals('foo'));
        System.assertEquals(false, genericAccessTokenReq2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = new OASGenericAccessTokenReq();
        OASGenericAccessTokenReq genericAccessTokenReq3;

        System.assertEquals(false, genericAccessTokenReq1.equals(genericAccessTokenReq3));
        System.assertEquals(false, genericAccessTokenReq2.equals(genericAccessTokenReq3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = new OASGenericAccessTokenReq();

        System.assertEquals(genericAccessTokenReq1.hashCode(), genericAccessTokenReq1.hashCode());
        System.assertEquals(genericAccessTokenReq2.hashCode(), genericAccessTokenReq2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGenericAccessTokenReq genericAccessTokenReq1 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq2 = OASGenericAccessTokenReq.getExample();
        OASGenericAccessTokenReq genericAccessTokenReq3 = new OASGenericAccessTokenReq();
        OASGenericAccessTokenReq genericAccessTokenReq4 = new OASGenericAccessTokenReq();

        System.assert(genericAccessTokenReq1.equals(genericAccessTokenReq2));
        System.assert(genericAccessTokenReq3.equals(genericAccessTokenReq4));
        System.assertEquals(genericAccessTokenReq1.hashCode(), genericAccessTokenReq2.hashCode());
        System.assertEquals(genericAccessTokenReq3.hashCode(), genericAccessTokenReq4.hashCode());
    }
}