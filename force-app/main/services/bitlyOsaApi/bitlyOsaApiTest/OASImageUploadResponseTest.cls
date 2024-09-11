@isTest
private class OASImageUploadResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = imageUploadResponse1;
        OASImageUploadResponse imageUploadResponse3 = new OASImageUploadResponse();
        OASImageUploadResponse imageUploadResponse4 = imageUploadResponse3;

        System.assert(imageUploadResponse1.equals(imageUploadResponse2));
        System.assert(imageUploadResponse2.equals(imageUploadResponse1));
        System.assert(imageUploadResponse1.equals(imageUploadResponse1));
        System.assert(imageUploadResponse3.equals(imageUploadResponse4));
        System.assert(imageUploadResponse4.equals(imageUploadResponse3));
        System.assert(imageUploadResponse3.equals(imageUploadResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse3 = new OASImageUploadResponse();
        OASImageUploadResponse imageUploadResponse4 = new OASImageUploadResponse();

        System.assert(imageUploadResponse1.equals(imageUploadResponse2));
        System.assert(imageUploadResponse2.equals(imageUploadResponse1));
        System.assert(imageUploadResponse3.equals(imageUploadResponse4));
        System.assert(imageUploadResponse4.equals(imageUploadResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = new OASImageUploadResponse();

        System.assertEquals(false, imageUploadResponse1.equals('foo'));
        System.assertEquals(false, imageUploadResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = new OASImageUploadResponse();
        OASImageUploadResponse imageUploadResponse3;

        System.assertEquals(false, imageUploadResponse1.equals(imageUploadResponse3));
        System.assertEquals(false, imageUploadResponse2.equals(imageUploadResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = new OASImageUploadResponse();

        System.assertEquals(imageUploadResponse1.hashCode(), imageUploadResponse1.hashCode());
        System.assertEquals(imageUploadResponse2.hashCode(), imageUploadResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageUploadResponse imageUploadResponse1 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse2 = OASImageUploadResponse.getExample();
        OASImageUploadResponse imageUploadResponse3 = new OASImageUploadResponse();
        OASImageUploadResponse imageUploadResponse4 = new OASImageUploadResponse();

        System.assert(imageUploadResponse1.equals(imageUploadResponse2));
        System.assert(imageUploadResponse3.equals(imageUploadResponse4));
        System.assertEquals(imageUploadResponse1.hashCode(), imageUploadResponse2.hashCode());
        System.assertEquals(imageUploadResponse3.hashCode(), imageUploadResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImageUploadResponse imageUploadResponse = new OASImageUploadResponse();
        Map<String, String> propertymappings = imageUploadResponse.getPropertyMappings();
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
    }
}