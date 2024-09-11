@isTest
private class OASTitleResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = titleResponse1;
        OASTitleResponse titleResponse3 = new OASTitleResponse();
        OASTitleResponse titleResponse4 = titleResponse3;

        System.assert(titleResponse1.equals(titleResponse2));
        System.assert(titleResponse2.equals(titleResponse1));
        System.assert(titleResponse1.equals(titleResponse1));
        System.assert(titleResponse3.equals(titleResponse4));
        System.assert(titleResponse4.equals(titleResponse3));
        System.assert(titleResponse3.equals(titleResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse3 = new OASTitleResponse();
        OASTitleResponse titleResponse4 = new OASTitleResponse();

        System.assert(titleResponse1.equals(titleResponse2));
        System.assert(titleResponse2.equals(titleResponse1));
        System.assert(titleResponse3.equals(titleResponse4));
        System.assert(titleResponse4.equals(titleResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = new OASTitleResponse();

        System.assertEquals(false, titleResponse1.equals('foo'));
        System.assertEquals(false, titleResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = new OASTitleResponse();
        OASTitleResponse titleResponse3;

        System.assertEquals(false, titleResponse1.equals(titleResponse3));
        System.assertEquals(false, titleResponse2.equals(titleResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = new OASTitleResponse();

        System.assertEquals(titleResponse1.hashCode(), titleResponse1.hashCode());
        System.assertEquals(titleResponse2.hashCode(), titleResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTitleResponse titleResponse1 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse2 = OASTitleResponse.getExample();
        OASTitleResponse titleResponse3 = new OASTitleResponse();
        OASTitleResponse titleResponse4 = new OASTitleResponse();

        System.assert(titleResponse1.equals(titleResponse2));
        System.assert(titleResponse3.equals(titleResponse4));
        System.assertEquals(titleResponse1.hashCode(), titleResponse2.hashCode());
        System.assertEquals(titleResponse3.hashCode(), titleResponse4.hashCode());
    }
}