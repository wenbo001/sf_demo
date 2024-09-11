@isTest
private class OASBSDSearchResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = bsDSearchResult1;
        OASBSDSearchResult bsDSearchResult3 = new OASBSDSearchResult();
        OASBSDSearchResult bsDSearchResult4 = bsDSearchResult3;

        System.assert(bsDSearchResult1.equals(bsDSearchResult2));
        System.assert(bsDSearchResult2.equals(bsDSearchResult1));
        System.assert(bsDSearchResult1.equals(bsDSearchResult1));
        System.assert(bsDSearchResult3.equals(bsDSearchResult4));
        System.assert(bsDSearchResult4.equals(bsDSearchResult3));
        System.assert(bsDSearchResult3.equals(bsDSearchResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult3 = new OASBSDSearchResult();
        OASBSDSearchResult bsDSearchResult4 = new OASBSDSearchResult();

        System.assert(bsDSearchResult1.equals(bsDSearchResult2));
        System.assert(bsDSearchResult2.equals(bsDSearchResult1));
        System.assert(bsDSearchResult3.equals(bsDSearchResult4));
        System.assert(bsDSearchResult4.equals(bsDSearchResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = new OASBSDSearchResult();

        System.assertEquals(false, bsDSearchResult1.equals('foo'));
        System.assertEquals(false, bsDSearchResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = new OASBSDSearchResult();
        OASBSDSearchResult bsDSearchResult3;

        System.assertEquals(false, bsDSearchResult1.equals(bsDSearchResult3));
        System.assertEquals(false, bsDSearchResult2.equals(bsDSearchResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = new OASBSDSearchResult();

        System.assertEquals(bsDSearchResult1.hashCode(), bsDSearchResult1.hashCode());
        System.assertEquals(bsDSearchResult2.hashCode(), bsDSearchResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBSDSearchResult bsDSearchResult1 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult2 = OASBSDSearchResult.getExample();
        OASBSDSearchResult bsDSearchResult3 = new OASBSDSearchResult();
        OASBSDSearchResult bsDSearchResult4 = new OASBSDSearchResult();

        System.assert(bsDSearchResult1.equals(bsDSearchResult2));
        System.assert(bsDSearchResult3.equals(bsDSearchResult4));
        System.assertEquals(bsDSearchResult1.hashCode(), bsDSearchResult2.hashCode());
        System.assertEquals(bsDSearchResult3.hashCode(), bsDSearchResult4.hashCode());
    }
}