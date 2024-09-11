@isTest
private class OASImageUploadTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = imageUpload1;
        OASImageUpload imageUpload3 = new OASImageUpload();
        OASImageUpload imageUpload4 = imageUpload3;

        System.assert(imageUpload1.equals(imageUpload2));
        System.assert(imageUpload2.equals(imageUpload1));
        System.assert(imageUpload1.equals(imageUpload1));
        System.assert(imageUpload3.equals(imageUpload4));
        System.assert(imageUpload4.equals(imageUpload3));
        System.assert(imageUpload3.equals(imageUpload3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = OASImageUpload.getExample();
        OASImageUpload imageUpload3 = new OASImageUpload();
        OASImageUpload imageUpload4 = new OASImageUpload();

        System.assert(imageUpload1.equals(imageUpload2));
        System.assert(imageUpload2.equals(imageUpload1));
        System.assert(imageUpload3.equals(imageUpload4));
        System.assert(imageUpload4.equals(imageUpload3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = new OASImageUpload();

        System.assertEquals(false, imageUpload1.equals('foo'));
        System.assertEquals(false, imageUpload2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = new OASImageUpload();
        OASImageUpload imageUpload3;

        System.assertEquals(false, imageUpload1.equals(imageUpload3));
        System.assertEquals(false, imageUpload2.equals(imageUpload3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = new OASImageUpload();

        System.assertEquals(imageUpload1.hashCode(), imageUpload1.hashCode());
        System.assertEquals(imageUpload2.hashCode(), imageUpload2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageUpload imageUpload1 = OASImageUpload.getExample();
        OASImageUpload imageUpload2 = OASImageUpload.getExample();
        OASImageUpload imageUpload3 = new OASImageUpload();
        OASImageUpload imageUpload4 = new OASImageUpload();

        System.assert(imageUpload1.equals(imageUpload2));
        System.assert(imageUpload3.equals(imageUpload4));
        System.assertEquals(imageUpload1.hashCode(), imageUpload2.hashCode());
        System.assertEquals(imageUpload3.hashCode(), imageUpload4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImageUpload imageUpload = new OASImageUpload();
        Map<String, String> propertymappings = imageUpload.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}