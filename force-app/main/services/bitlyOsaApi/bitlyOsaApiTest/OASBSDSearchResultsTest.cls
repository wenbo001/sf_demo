@isTest
private class OASBSDSearchResultsTest {
    @isTest
    private static void equalsSameInstance() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = bsDSearchResults1;
        OASBSDSearchResults bsDSearchResults3 = new OASBSDSearchResults();
        OASBSDSearchResults bsDSearchResults4 = bsDSearchResults3;

        System.assert(bsDSearchResults1.equals(bsDSearchResults2));
        System.assert(bsDSearchResults2.equals(bsDSearchResults1));
        System.assert(bsDSearchResults1.equals(bsDSearchResults1));
        System.assert(bsDSearchResults3.equals(bsDSearchResults4));
        System.assert(bsDSearchResults4.equals(bsDSearchResults3));
        System.assert(bsDSearchResults3.equals(bsDSearchResults3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults3 = new OASBSDSearchResults();
        OASBSDSearchResults bsDSearchResults4 = new OASBSDSearchResults();

        System.assert(bsDSearchResults1.equals(bsDSearchResults2));
        System.assert(bsDSearchResults2.equals(bsDSearchResults1));
        System.assert(bsDSearchResults3.equals(bsDSearchResults4));
        System.assert(bsDSearchResults4.equals(bsDSearchResults3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = new OASBSDSearchResults();

        System.assertEquals(false, bsDSearchResults1.equals('foo'));
        System.assertEquals(false, bsDSearchResults2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = new OASBSDSearchResults();
        OASBSDSearchResults bsDSearchResults3;

        System.assertEquals(false, bsDSearchResults1.equals(bsDSearchResults3));
        System.assertEquals(false, bsDSearchResults2.equals(bsDSearchResults3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = new OASBSDSearchResults();

        System.assertEquals(bsDSearchResults1.hashCode(), bsDSearchResults1.hashCode());
        System.assertEquals(bsDSearchResults2.hashCode(), bsDSearchResults2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBSDSearchResults bsDSearchResults1 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults2 = OASBSDSearchResults.getExample();
        OASBSDSearchResults bsDSearchResults3 = new OASBSDSearchResults();
        OASBSDSearchResults bsDSearchResults4 = new OASBSDSearchResults();

        System.assert(bsDSearchResults1.equals(bsDSearchResults2));
        System.assert(bsDSearchResults3.equals(bsDSearchResults4));
        System.assertEquals(bsDSearchResults1.hashCode(), bsDSearchResults2.hashCode());
        System.assertEquals(bsDSearchResults3.hashCode(), bsDSearchResults4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBSDSearchResults bsDSearchResults = new OASBSDSearchResults();
        System.assertEquals(new List<OASBSDSearchResult>(), bsDSearchResults.results);
    }
}