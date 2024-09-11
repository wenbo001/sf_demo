@isTest
private class OASSiteBannerTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASSiteBannerType> expected = new Set<OASSiteBannerType>{
            OASSiteBannerType.NONE,
            OASSiteBannerType.HERO,
            OASSiteBannerType.ROUNDED_UP,
            OASSiteBannerType.GRADIENT,
            OASSiteBannerType.SQUARE,
            OASSiteBannerType.FRAME
        };
        Set<OASSiteBannerType> actual  = new Set<OASSiteBannerType>(OASSiteBannerType.values());
        System.assertEquals(expected, actual);
    }
}