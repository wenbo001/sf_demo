@isTest
private class OASSiteBlockTypeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteBlockTypeEnum> expected = new Set<OASSiteBlockTypeEnum>{
            OASSiteBlockTypeEnum.BITLINK,
            OASSiteBlockTypeEnum.YOUTUBEVIDEO,
            OASSiteBlockTypeEnum.IMAGE,
            OASSiteBlockTypeEnum.CAROUSEL,
            OASSiteBlockTypeEnum.GRID,
            OASSiteBlockTypeEnum.SOCIAL
        };
        Set<OASSiteBlockTypeEnum> actual  = new Set<OASSiteBlockTypeEnum>(OASSiteBlockTypeEnum.values());
        System.assertEquals(expected, actual);
    }
}