@isTest
private class OASSiteProfileImageTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteProfileImageType> expected = new Set<OASSiteProfileImageType>{
            OASSiteProfileImageType.SINGLE,
            OASSiteProfileImageType.REPEATING
        };
        Set<OASSiteProfileImageType> actual  = new Set<OASSiteProfileImageType>(OASSiteProfileImageType.values());
        System.assertEquals(expected, actual);
    }
}