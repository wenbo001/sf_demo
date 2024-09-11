@isTest
private class OASSiteProfileImageLocationTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteProfileImageLocation> expected = new Set<OASSiteProfileImageLocation>{
            OASSiteProfileImageLocation.LEFT,
            OASSiteProfileImageLocation.CENTER,
            OASSiteProfileImageLocation.RIGHT
        };
        Set<OASSiteProfileImageLocation> actual  = new Set<OASSiteProfileImageLocation>(OASSiteProfileImageLocation.values());
        System.assertEquals(expected, actual);
    }
}