@isTest
private class OASSiteImageAlignmentTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteImageAlignment> expected = new Set<OASSiteImageAlignment>{
            OASSiteImageAlignment.STRETCH,
            OASSiteImageAlignment.FIT,
            OASSiteImageAlignment.REPEAT
        };
        Set<OASSiteImageAlignment> actual  = new Set<OASSiteImageAlignment>(OASSiteImageAlignment.values());
        System.assertEquals(expected, actual);
    }
}