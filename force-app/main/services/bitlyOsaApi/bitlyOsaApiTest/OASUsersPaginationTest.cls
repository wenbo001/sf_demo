@isTest
private class OASUsersPaginationTest {
    @isTest
    private static void equalsSameInstance() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = usersPagination1;
        OASUsersPagination usersPagination3 = new OASUsersPagination();
        OASUsersPagination usersPagination4 = usersPagination3;

        System.assert(usersPagination1.equals(usersPagination2));
        System.assert(usersPagination2.equals(usersPagination1));
        System.assert(usersPagination1.equals(usersPagination1));
        System.assert(usersPagination3.equals(usersPagination4));
        System.assert(usersPagination4.equals(usersPagination3));
        System.assert(usersPagination3.equals(usersPagination3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination3 = new OASUsersPagination();
        OASUsersPagination usersPagination4 = new OASUsersPagination();

        System.assert(usersPagination1.equals(usersPagination2));
        System.assert(usersPagination2.equals(usersPagination1));
        System.assert(usersPagination3.equals(usersPagination4));
        System.assert(usersPagination4.equals(usersPagination3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = new OASUsersPagination();

        System.assertEquals(false, usersPagination1.equals('foo'));
        System.assertEquals(false, usersPagination2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = new OASUsersPagination();
        OASUsersPagination usersPagination3;

        System.assertEquals(false, usersPagination1.equals(usersPagination3));
        System.assertEquals(false, usersPagination2.equals(usersPagination3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = new OASUsersPagination();

        System.assertEquals(usersPagination1.hashCode(), usersPagination1.hashCode());
        System.assertEquals(usersPagination2.hashCode(), usersPagination2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUsersPagination usersPagination1 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination2 = OASUsersPagination.getExample();
        OASUsersPagination usersPagination3 = new OASUsersPagination();
        OASUsersPagination usersPagination4 = new OASUsersPagination();

        System.assert(usersPagination1.equals(usersPagination2));
        System.assert(usersPagination3.equals(usersPagination4));
        System.assertEquals(usersPagination1.hashCode(), usersPagination2.hashCode());
        System.assertEquals(usersPagination3.hashCode(), usersPagination4.hashCode());
    }
}