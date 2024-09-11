@isTest
private class OASSiteProfileImageSizeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteProfileImageSize> expected = new Set<OASSiteProfileImageSize>{
            OASSiteProfileImageSize.XS,
            OASSiteProfileImageSize.SM,
            OASSiteProfileImageSize.MED,
            OASSiteProfileImageSize.LG,
            OASSiteProfileImageSize.XL
        };
        Set<OASSiteProfileImageSize> actual  = new Set<OASSiteProfileImageSize>(OASSiteProfileImageSize.values());
        System.assertEquals(expected, actual);
    }
}