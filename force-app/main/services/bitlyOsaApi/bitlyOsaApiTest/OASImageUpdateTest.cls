@isTest
private class OASImageUpdateTest {
    @isTest
    private static void equalsSameInstance() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = imageUpdate1;
        OASImageUpdate imageUpdate3 = new OASImageUpdate();
        OASImageUpdate imageUpdate4 = imageUpdate3;

        System.assert(imageUpdate1.equals(imageUpdate2));
        System.assert(imageUpdate2.equals(imageUpdate1));
        System.assert(imageUpdate1.equals(imageUpdate1));
        System.assert(imageUpdate3.equals(imageUpdate4));
        System.assert(imageUpdate4.equals(imageUpdate3));
        System.assert(imageUpdate3.equals(imageUpdate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate3 = new OASImageUpdate();
        OASImageUpdate imageUpdate4 = new OASImageUpdate();

        System.assert(imageUpdate1.equals(imageUpdate2));
        System.assert(imageUpdate2.equals(imageUpdate1));
        System.assert(imageUpdate3.equals(imageUpdate4));
        System.assert(imageUpdate4.equals(imageUpdate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = new OASImageUpdate();

        System.assertEquals(false, imageUpdate1.equals('foo'));
        System.assertEquals(false, imageUpdate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = new OASImageUpdate();
        OASImageUpdate imageUpdate3;

        System.assertEquals(false, imageUpdate1.equals(imageUpdate3));
        System.assertEquals(false, imageUpdate2.equals(imageUpdate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = new OASImageUpdate();

        System.assertEquals(imageUpdate1.hashCode(), imageUpdate1.hashCode());
        System.assertEquals(imageUpdate2.hashCode(), imageUpdate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASImageUpdate imageUpdate1 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate2 = OASImageUpdate.getExample();
        OASImageUpdate imageUpdate3 = new OASImageUpdate();
        OASImageUpdate imageUpdate4 = new OASImageUpdate();

        System.assert(imageUpdate1.equals(imageUpdate2));
        System.assert(imageUpdate3.equals(imageUpdate4));
        System.assertEquals(imageUpdate1.hashCode(), imageUpdate2.hashCode());
        System.assertEquals(imageUpdate3.hashCode(), imageUpdate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASImageUpdate imageUpdate = new OASImageUpdate();
        Map<String, String> propertymappings = imageUpdate.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}