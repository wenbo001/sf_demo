@isTest
private class OASBitlinksPaginationTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = bitlinksPagination1;
        OASBitlinksPagination bitlinksPagination3 = new OASBitlinksPagination();
        OASBitlinksPagination bitlinksPagination4 = bitlinksPagination3;

        System.assert(bitlinksPagination1.equals(bitlinksPagination2));
        System.assert(bitlinksPagination2.equals(bitlinksPagination1));
        System.assert(bitlinksPagination1.equals(bitlinksPagination1));
        System.assert(bitlinksPagination3.equals(bitlinksPagination4));
        System.assert(bitlinksPagination4.equals(bitlinksPagination3));
        System.assert(bitlinksPagination3.equals(bitlinksPagination3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination3 = new OASBitlinksPagination();
        OASBitlinksPagination bitlinksPagination4 = new OASBitlinksPagination();

        System.assert(bitlinksPagination1.equals(bitlinksPagination2));
        System.assert(bitlinksPagination2.equals(bitlinksPagination1));
        System.assert(bitlinksPagination3.equals(bitlinksPagination4));
        System.assert(bitlinksPagination4.equals(bitlinksPagination3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = new OASBitlinksPagination();

        System.assertEquals(false, bitlinksPagination1.equals('foo'));
        System.assertEquals(false, bitlinksPagination2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = new OASBitlinksPagination();
        OASBitlinksPagination bitlinksPagination3;

        System.assertEquals(false, bitlinksPagination1.equals(bitlinksPagination3));
        System.assertEquals(false, bitlinksPagination2.equals(bitlinksPagination3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = new OASBitlinksPagination();

        System.assertEquals(bitlinksPagination1.hashCode(), bitlinksPagination1.hashCode());
        System.assertEquals(bitlinksPagination2.hashCode(), bitlinksPagination2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinksPagination bitlinksPagination1 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination2 = OASBitlinksPagination.getExample();
        OASBitlinksPagination bitlinksPagination3 = new OASBitlinksPagination();
        OASBitlinksPagination bitlinksPagination4 = new OASBitlinksPagination();

        System.assert(bitlinksPagination1.equals(bitlinksPagination2));
        System.assert(bitlinksPagination3.equals(bitlinksPagination4));
        System.assertEquals(bitlinksPagination1.hashCode(), bitlinksPagination2.hashCode());
        System.assertEquals(bitlinksPagination3.hashCode(), bitlinksPagination4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinksPagination bitlinksPagination = new OASBitlinksPagination();
        Map<String, String> propertymappings = bitlinksPagination.getPropertyMappings();
        System.assertEquals('searchAfter', propertymappings.get('search_after'));
    }
}