@isTest
private class OASImageCommonTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = imageCommon1;
        OASImageCommon imageCommon3 = new OASImageCommon();
        OASImageCommon imageCommon4 = imageCommon3;

        System.assert(imageCommon1.equals(imageCommon2));
        System.assert(imageCommon2.equals(imageCommon1));
        System.assert(imageCommon1.equals(imageCommon1));
        System.assert(imageCommon3.equals(imageCommon4));
        System.assert(imageCommon4.equals(imageCommon3));
        System.assert(imageCommon3.equals(imageCommon3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = OASImageCommon.getExample();
        OASImageCommon imageCommon3 = new OASImageCommon();
        OASImageCommon imageCommon4 = new OASImageCommon();

        System.assert(imageCommon1.equals(imageCommon2));
        System.assert(imageCommon2.equals(imageCommon1));
        System.assert(imageCommon3.equals(imageCommon4));
        System.assert(imageCommon4.equals(imageCommon3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = new OASImageCommon();

        System.assertEquals(false, imageCommon1.equals('foo'));
        System.assertEquals(false, imageCommon2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = new OASImageCommon();
        OASImageCommon imageCommon3;

        System.assertEquals(false, imageCommon1.equals(imageCommon3));
        System.assertEquals(false, imageCommon2.equals(imageCommon3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = new OASImageCommon();

        System.assertEquals(imageCommon1.hashCode(), imageCommon1.hashCode());
        System.assertEquals(imageCommon2.hashCode(), imageCommon2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageCommon imageCommon1 = OASImageCommon.getExample();
        OASImageCommon imageCommon2 = OASImageCommon.getExample();
        OASImageCommon imageCommon3 = new OASImageCommon();
        OASImageCommon imageCommon4 = new OASImageCommon();

        System.assert(imageCommon1.equals(imageCommon2));
        System.assert(imageCommon3.equals(imageCommon4));
        System.assertEquals(imageCommon1.hashCode(), imageCommon2.hashCode());
        System.assertEquals(imageCommon3.hashCode(), imageCommon4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImageCommon imageCommon = new OASImageCommon();
        Map<String, String> propertymappings = imageCommon.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
    }
}