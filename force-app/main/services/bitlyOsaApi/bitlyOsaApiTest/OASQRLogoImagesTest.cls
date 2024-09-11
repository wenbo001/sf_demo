@isTest
private class OASQRLogoImagesTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = qrLogoImages1;
        OASQRLogoImages qrLogoImages3 = new OASQRLogoImages();
        OASQRLogoImages qrLogoImages4 = qrLogoImages3;

        System.assert(qrLogoImages1.equals(qrLogoImages2));
        System.assert(qrLogoImages2.equals(qrLogoImages1));
        System.assert(qrLogoImages1.equals(qrLogoImages1));
        System.assert(qrLogoImages3.equals(qrLogoImages4));
        System.assert(qrLogoImages4.equals(qrLogoImages3));
        System.assert(qrLogoImages3.equals(qrLogoImages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages3 = new OASQRLogoImages();
        OASQRLogoImages qrLogoImages4 = new OASQRLogoImages();

        System.assert(qrLogoImages1.equals(qrLogoImages2));
        System.assert(qrLogoImages2.equals(qrLogoImages1));
        System.assert(qrLogoImages3.equals(qrLogoImages4));
        System.assert(qrLogoImages4.equals(qrLogoImages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = new OASQRLogoImages();

        System.assertEquals(false, qrLogoImages1.equals('foo'));
        System.assertEquals(false, qrLogoImages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = new OASQRLogoImages();
        OASQRLogoImages qrLogoImages3;

        System.assertEquals(false, qrLogoImages1.equals(qrLogoImages3));
        System.assertEquals(false, qrLogoImages2.equals(qrLogoImages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = new OASQRLogoImages();

        System.assertEquals(qrLogoImages1.hashCode(), qrLogoImages1.hashCode());
        System.assertEquals(qrLogoImages2.hashCode(), qrLogoImages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRLogoImages qrLogoImages1 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages2 = OASQRLogoImages.getExample();
        OASQRLogoImages qrLogoImages3 = new OASQRLogoImages();
        OASQRLogoImages qrLogoImages4 = new OASQRLogoImages();

        System.assert(qrLogoImages1.equals(qrLogoImages2));
        System.assert(qrLogoImages3.equals(qrLogoImages4));
        System.assertEquals(qrLogoImages1.hashCode(), qrLogoImages2.hashCode());
        System.assertEquals(qrLogoImages3.hashCode(), qrLogoImages4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRLogoImages qrLogoImages = new OASQRLogoImages();
        Map<String, String> propertymappings = qrLogoImages.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
    }
}