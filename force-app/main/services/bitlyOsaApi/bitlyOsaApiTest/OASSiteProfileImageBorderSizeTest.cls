@isTest
private class OASSiteProfileImageBorderSizeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteProfileImageBorderSize> expected = new Set<OASSiteProfileImageBorderSize>{
            OASSiteProfileImageBorderSize.NONE,
            OASSiteProfileImageBorderSize.XS,
            OASSiteProfileImageBorderSize.SM,
            OASSiteProfileImageBorderSize.MED,
            OASSiteProfileImageBorderSize.LG
        };
        Set<OASSiteProfileImageBorderSize> actual  = new Set<OASSiteProfileImageBorderSize>(OASSiteProfileImageBorderSize.values());
        System.assertEquals(expected, actual);
    }
}