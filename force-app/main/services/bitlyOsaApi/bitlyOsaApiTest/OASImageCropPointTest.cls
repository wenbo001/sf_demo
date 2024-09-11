@isTest
private class OASImageCropPointTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = imageCropPoint1;
        OASImageCropPoint imageCropPoint3 = new OASImageCropPoint();
        OASImageCropPoint imageCropPoint4 = imageCropPoint3;

        System.assert(imageCropPoint1.equals(imageCropPoint2));
        System.assert(imageCropPoint2.equals(imageCropPoint1));
        System.assert(imageCropPoint1.equals(imageCropPoint1));
        System.assert(imageCropPoint3.equals(imageCropPoint4));
        System.assert(imageCropPoint4.equals(imageCropPoint3));
        System.assert(imageCropPoint3.equals(imageCropPoint3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint3 = new OASImageCropPoint();
        OASImageCropPoint imageCropPoint4 = new OASImageCropPoint();

        System.assert(imageCropPoint1.equals(imageCropPoint2));
        System.assert(imageCropPoint2.equals(imageCropPoint1));
        System.assert(imageCropPoint3.equals(imageCropPoint4));
        System.assert(imageCropPoint4.equals(imageCropPoint3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = new OASImageCropPoint();

        System.assertEquals(false, imageCropPoint1.equals('foo'));
        System.assertEquals(false, imageCropPoint2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = new OASImageCropPoint();
        OASImageCropPoint imageCropPoint3;

        System.assertEquals(false, imageCropPoint1.equals(imageCropPoint3));
        System.assertEquals(false, imageCropPoint2.equals(imageCropPoint3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = new OASImageCropPoint();

        System.assertEquals(imageCropPoint1.hashCode(), imageCropPoint1.hashCode());
        System.assertEquals(imageCropPoint2.hashCode(), imageCropPoint2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageCropPoint imageCropPoint1 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint2 = OASImageCropPoint.getExample();
        OASImageCropPoint imageCropPoint3 = new OASImageCropPoint();
        OASImageCropPoint imageCropPoint4 = new OASImageCropPoint();

        System.assert(imageCropPoint1.equals(imageCropPoint2));
        System.assert(imageCropPoint3.equals(imageCropPoint4));
        System.assertEquals(imageCropPoint1.hashCode(), imageCropPoint2.hashCode());
        System.assertEquals(imageCropPoint3.hashCode(), imageCropPoint4.hashCode());
    }
}