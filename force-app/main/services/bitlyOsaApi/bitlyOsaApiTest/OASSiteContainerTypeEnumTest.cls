@isTest
private class OASSiteContainerTypeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteContainerTypeEnum> expected = new Set<OASSiteContainerTypeEnum>{
            OASSiteContainerTypeEnum.CAROUSEL,
            OASSiteContainerTypeEnum.GRID
        };
        Set<OASSiteContainerTypeEnum> actual  = new Set<OASSiteContainerTypeEnum>(OASSiteContainerTypeEnum.values());
        System.assertEquals(expected, actual);
    }
}