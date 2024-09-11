@isTest
private class OASQRCodeFrameTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASQRCodeFrameType> expected = new Set<OASQRCodeFrameType>{
            OASQRCodeFrameType.NONE,
            OASQRCodeFrameType.BORDER_ONLY,
            OASQRCodeFrameType.TEXT_BOTTOM,
            OASQRCodeFrameType.TOOLTIP_BOTTOM,
            OASQRCodeFrameType.ARROW,
            OASQRCodeFrameType.TEXT_TOP,
            OASQRCodeFrameType.TEXT_BOTTOM_IN_FRAME,
            OASQRCodeFrameType.SCRIPT,
            OASQRCodeFrameType.TEXT_TOP_AND_BOTTOM,
            OASQRCodeFrameType.URL,
            OASQRCodeFrameType.INSTAGRAM
        };
        Set<OASQRCodeFrameType> actual  = new Set<OASQRCodeFrameType>(OASQRCodeFrameType.values());
        System.assertEquals(expected, actual);
    }
}