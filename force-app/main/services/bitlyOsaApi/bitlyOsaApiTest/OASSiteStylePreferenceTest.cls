@isTest
private class OASSiteStylePreferenceTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteStylePreference> expected = new Set<OASSiteStylePreference>{
            OASSiteStylePreference.CUSTOM,
            OASSiteStylePreference.THEME,
            OASSiteStylePreference.IMAGE
        };
        Set<OASSiteStylePreference> actual  = new Set<OASSiteStylePreference>(OASSiteStylePreference.values());
        System.assertEquals(expected, actual);
    }
}