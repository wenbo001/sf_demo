@isTest
private class OASSiteTextBorderTypeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteTextBorderTypeEnum> expected = new Set<OASSiteTextBorderTypeEnum>{
            OASSiteTextBorderTypeEnum.NONE,
            OASSiteTextBorderTypeEnum.BELOW,
            OASSiteTextBorderTypeEnum.ABOVE_AND_BELOW
        };
        Set<OASSiteTextBorderTypeEnum> actual  = new Set<OASSiteTextBorderTypeEnum>(OASSiteTextBorderTypeEnum.values());
        System.assertEquals(expected, actual);
    }
}