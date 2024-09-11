@isTest
private class OASLaunchpadButtonTypeEnumTest {
    @isTest
    private static void allowableValues() {
        Set<OASLaunchpadButtonTypeEnum> expected = new Set<OASLaunchpadButtonTypeEnum>{
            OASLaunchpadButtonTypeEnum.BITLINK,
            OASLaunchpadButtonTypeEnum.YOUTUBEVIDEO,
            OASLaunchpadButtonTypeEnum.IMAGE,
            OASLaunchpadButtonTypeEnum.CAROUSEL,
            OASLaunchpadButtonTypeEnum.GRID
        };
        Set<OASLaunchpadButtonTypeEnum> actual  = new Set<OASLaunchpadButtonTypeEnum>(OASLaunchpadButtonTypeEnum.values());
        System.assertEquals(expected, actual);
    }
}