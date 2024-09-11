@isTest
private class OASImageCropTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = imageCrop1;
        OASImageCrop imageCrop3 = new OASImageCrop();
        OASImageCrop imageCrop4 = imageCrop3;

        System.assert(imageCrop1.equals(imageCrop2));
        System.assert(imageCrop2.equals(imageCrop1));
        System.assert(imageCrop1.equals(imageCrop1));
        System.assert(imageCrop3.equals(imageCrop4));
        System.assert(imageCrop4.equals(imageCrop3));
        System.assert(imageCrop3.equals(imageCrop3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = OASImageCrop.getExample();
        OASImageCrop imageCrop3 = new OASImageCrop();
        OASImageCrop imageCrop4 = new OASImageCrop();

        System.assert(imageCrop1.equals(imageCrop2));
        System.assert(imageCrop2.equals(imageCrop1));
        System.assert(imageCrop3.equals(imageCrop4));
        System.assert(imageCrop4.equals(imageCrop3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = new OASImageCrop();

        System.assertEquals(false, imageCrop1.equals('foo'));
        System.assertEquals(false, imageCrop2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = new OASImageCrop();
        OASImageCrop imageCrop3;

        System.assertEquals(false, imageCrop1.equals(imageCrop3));
        System.assertEquals(false, imageCrop2.equals(imageCrop3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = new OASImageCrop();

        System.assertEquals(imageCrop1.hashCode(), imageCrop1.hashCode());
        System.assertEquals(imageCrop2.hashCode(), imageCrop2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageCrop imageCrop1 = OASImageCrop.getExample();
        OASImageCrop imageCrop2 = OASImageCrop.getExample();
        OASImageCrop imageCrop3 = new OASImageCrop();
        OASImageCrop imageCrop4 = new OASImageCrop();

        System.assert(imageCrop1.equals(imageCrop2));
        System.assert(imageCrop3.equals(imageCrop4));
        System.assertEquals(imageCrop1.hashCode(), imageCrop2.hashCode());
        System.assertEquals(imageCrop3.hashCode(), imageCrop4.hashCode());
    }
}