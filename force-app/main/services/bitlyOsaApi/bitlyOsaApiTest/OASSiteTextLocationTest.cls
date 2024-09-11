@isTest
private class OASSiteTextLocationTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteTextLocation> expected = new Set<OASSiteTextLocation>{
            OASSiteTextLocation.TOP,
            OASSiteTextLocation.CONTAIN,
            OASSiteTextLocation.BOTTOM
        };
        Set<OASSiteTextLocation> actual  = new Set<OASSiteTextLocation>(OASSiteTextLocation.values());
        System.assertEquals(expected, actual);
    }
}