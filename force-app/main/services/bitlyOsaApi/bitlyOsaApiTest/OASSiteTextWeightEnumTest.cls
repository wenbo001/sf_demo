@isTest
private class OASSiteTextWeightEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteTextWeightEnum> expected = new Set<OASSiteTextWeightEnum>{
            OASSiteTextWeightEnum.REGULAR,
            OASSiteTextWeightEnum.BOLD,
            OASSiteTextWeightEnum.SEMI_BOLD
        };
        Set<OASSiteTextWeightEnum> actual  = new Set<OASSiteTextWeightEnum>(OASSiteTextWeightEnum.values());
        System.assertEquals(expected, actual);
    }
}