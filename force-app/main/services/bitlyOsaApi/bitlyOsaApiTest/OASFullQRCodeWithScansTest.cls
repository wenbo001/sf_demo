@isTest
private class OASFullQRCodeWithScansTest {
    @isTest
    private static void equalsSameInstance() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = fullQRCodeWithScans1;
        OASFullQRCodeWithScans fullQRCodeWithScans3 = new OASFullQRCodeWithScans();
        OASFullQRCodeWithScans fullQRCodeWithScans4 = fullQRCodeWithScans3;

        System.assert(fullQRCodeWithScans1.equals(fullQRCodeWithScans2));
        System.assert(fullQRCodeWithScans2.equals(fullQRCodeWithScans1));
        System.assert(fullQRCodeWithScans1.equals(fullQRCodeWithScans1));
        System.assert(fullQRCodeWithScans3.equals(fullQRCodeWithScans4));
        System.assert(fullQRCodeWithScans4.equals(fullQRCodeWithScans3));
        System.assert(fullQRCodeWithScans3.equals(fullQRCodeWithScans3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans3 = new OASFullQRCodeWithScans();
        OASFullQRCodeWithScans fullQRCodeWithScans4 = new OASFullQRCodeWithScans();

        System.assert(fullQRCodeWithScans1.equals(fullQRCodeWithScans2));
        System.assert(fullQRCodeWithScans2.equals(fullQRCodeWithScans1));
        System.assert(fullQRCodeWithScans3.equals(fullQRCodeWithScans4));
        System.assert(fullQRCodeWithScans4.equals(fullQRCodeWithScans3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = new OASFullQRCodeWithScans();

        System.assertEquals(false, fullQRCodeWithScans1.equals('foo'));
        System.assertEquals(false, fullQRCodeWithScans2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = new OASFullQRCodeWithScans();
        OASFullQRCodeWithScans fullQRCodeWithScans3;

        System.assertEquals(false, fullQRCodeWithScans1.equals(fullQRCodeWithScans3));
        System.assertEquals(false, fullQRCodeWithScans2.equals(fullQRCodeWithScans3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = new OASFullQRCodeWithScans();

        System.assertEquals(fullQRCodeWithScans1.hashCode(), fullQRCodeWithScans1.hashCode());
        System.assertEquals(fullQRCodeWithScans2.hashCode(), fullQRCodeWithScans2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFullQRCodeWithScans fullQRCodeWithScans1 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans2 = OASFullQRCodeWithScans.getExample();
        OASFullQRCodeWithScans fullQRCodeWithScans3 = new OASFullQRCodeWithScans();
        OASFullQRCodeWithScans fullQRCodeWithScans4 = new OASFullQRCodeWithScans();

        System.assert(fullQRCodeWithScans1.equals(fullQRCodeWithScans2));
        System.assert(fullQRCodeWithScans3.equals(fullQRCodeWithScans4));
        System.assertEquals(fullQRCodeWithScans1.hashCode(), fullQRCodeWithScans2.hashCode());
        System.assertEquals(fullQRCodeWithScans3.hashCode(), fullQRCodeWithScans4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFullQRCodeWithScans fullQRCodeWithScans = new OASFullQRCodeWithScans();
        Map<String, String> propertymappings = fullQRCodeWithScans.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('qrUri', propertymappings.get('qr_uri'));
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
        System.assertEquals('isCustomized', propertymappings.get('is_customized'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('modifiedTs', propertymappings.get('modified_ts'));
    }
}