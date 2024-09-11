@isTest
private class OASQRCodeShapeTypeTest {
    @isTest
    private static void allowableValues() {
        Set<OASQRCodeShapeType> expected = new Set<OASQRCodeShapeType>{
            OASQRCodeShapeType.SQUARE,
            OASQRCodeShapeType.CIRCLE,
            OASQRCodeShapeType.HEXAGON,
            OASQRCodeShapeType.OCTOGON,
            OASQRCodeShapeType.TRIANGLE,
            OASQRCodeShapeType.RECTANGLE,
            OASQRCodeShapeType.STAR,
            OASQRCodeShapeType.HEART,
            OASQRCodeShapeType.DIAMOND,
            OASQRCodeShapeType.CURVED_CORNER
        };
        Set<OASQRCodeShapeType> actual  = new Set<OASQRCodeShapeType>(OASQRCodeShapeType.values());
        System.assertEquals(expected, actual);
    }
}