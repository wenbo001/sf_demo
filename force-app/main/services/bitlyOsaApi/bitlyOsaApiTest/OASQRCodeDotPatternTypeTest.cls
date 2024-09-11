@isTest
private class OASQRCodeDotPatternTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASQRCodeDotPatternType> expected = new Set<OASQRCodeDotPatternType>{
            OASQRCodeDotPatternType.STANDARD,
            OASQRCodeDotPatternType.CIRCLE,
            OASQRCodeDotPatternType.BLOCK,
            OASQRCodeDotPatternType.x_BLOB,
            OASQRCodeDotPatternType.ROUNDED,
            OASQRCodeDotPatternType.VERTICAL,
            OASQRCodeDotPatternType.HORIZONTAL,
            OASQRCodeDotPatternType.TRIANGLE,
            OASQRCodeDotPatternType.HEART,
            OASQRCodeDotPatternType.STAR,
            OASQRCodeDotPatternType.DIAMOND
        };
        Set<OASQRCodeDotPatternType> actual  = new Set<OASQRCodeDotPatternType>(OASQRCodeDotPatternType.values());
        System.assertEquals(expected, actual);
    }
}