@isTest
private class OASSiteTextSizeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteTextSizeEnum> expected = new Set<OASSiteTextSizeEnum>{
            OASSiteTextSizeEnum.XS,
            OASSiteTextSizeEnum.SM,
            OASSiteTextSizeEnum.MED,
            OASSiteTextSizeEnum.LG
        };
        Set<OASSiteTextSizeEnum> actual  = new Set<OASSiteTextSizeEnum>(OASSiteTextSizeEnum.values());
        System.assertEquals(expected, actual);
    }
}