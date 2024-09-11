@isTest
private class OASInstallPreferenceTest {
    @isTest
    private static void allowableValues() {
        Set<OASInstallPreference> expected = new Set<OASInstallPreference>{
            OASInstallPreference.NO_INSTALL,
            OASInstallPreference.AUTO_INSTALL,
            OASInstallPreference.PROMOTE_INSTALL
        };
        Set<OASInstallPreference> actual  = new Set<OASInstallPreference>(OASInstallPreference.values());
        System.assertEquals(expected, actual);
    }
}