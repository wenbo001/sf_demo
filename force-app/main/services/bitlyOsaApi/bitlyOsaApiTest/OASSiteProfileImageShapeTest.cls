@isTest
private class OASSiteProfileImageShapeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteProfileImageShape> expected = new Set<OASSiteProfileImageShape>{
            OASSiteProfileImageShape.ROUND,
            OASSiteProfileImageShape.ROUNDED_SQUARE,
            OASSiteProfileImageShape.SQUARE
        };
        Set<OASSiteProfileImageShape> actual  = new Set<OASSiteProfileImageShape>(OASSiteProfileImageShape.values());
        System.assertEquals(expected, actual);
    }
}