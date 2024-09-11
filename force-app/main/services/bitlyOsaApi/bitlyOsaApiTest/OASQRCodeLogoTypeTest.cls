@isTest
private class OASQRCodeLogoTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASQRCodeLogoType> expected = new Set<OASQRCodeLogoType>{
            OASQRCodeLogoType.NOLOGO,
            OASQRCodeLogoType.UPLOADLOGO,
            OASQRCodeLogoType.CUSTOMTEXT,
            OASQRCodeLogoType.BITLYLOGO,
            OASQRCodeLogoType.FACEBOOKLOGO,
            OASQRCodeLogoType.INSTAGRAMLOGO,
            OASQRCodeLogoType.TWITTERLOGO,
            OASQRCodeLogoType.YOUTUBELOGO,
            OASQRCodeLogoType.LINKEDINLOGO,
            OASQRCodeLogoType.TIKTOKLOGO
        };
        Set<OASQRCodeLogoType> actual  = new Set<OASQRCodeLogoType>(OASQRCodeLogoType.values());
        System.assertEquals(expected, actual);
    }
}