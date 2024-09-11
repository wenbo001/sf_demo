@isTest
private class OASSiteTextAlignmentEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteTextAlignmentEnum> expected = new Set<OASSiteTextAlignmentEnum>{
            OASSiteTextAlignmentEnum.START,
            OASSiteTextAlignmentEnum.CENTER
        };
        Set<OASSiteTextAlignmentEnum> actual  = new Set<OASSiteTextAlignmentEnum>(OASSiteTextAlignmentEnum.values());
        System.assertEquals(expected, actual);
    }
}