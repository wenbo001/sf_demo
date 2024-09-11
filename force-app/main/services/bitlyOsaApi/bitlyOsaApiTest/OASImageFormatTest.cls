@isTest
private class OASImageFormatTest {
    @isTest
    private static void allowableValues() {
        Set<OASImageFormat> expected = new Set<OASImageFormat>{
            OASImageFormat.PNG,
            OASImageFormat.SVG
        };
        Set<OASImageFormat> actual  = new Set<OASImageFormat>(OASImageFormat.values());
        System.assertEquals(expected, actual);
    }
}