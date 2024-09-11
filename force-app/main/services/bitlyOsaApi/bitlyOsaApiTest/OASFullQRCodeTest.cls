@isTest
private class OASFullQRCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = fullQRCode1;
        OASFullQRCode fullQRCode3 = new OASFullQRCode();
        OASFullQRCode fullQRCode4 = fullQRCode3;

        System.assert(fullQRCode1.equals(fullQRCode2));
        System.assert(fullQRCode2.equals(fullQRCode1));
        System.assert(fullQRCode1.equals(fullQRCode1));
        System.assert(fullQRCode3.equals(fullQRCode4));
        System.assert(fullQRCode4.equals(fullQRCode3));
        System.assert(fullQRCode3.equals(fullQRCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode3 = new OASFullQRCode();
        OASFullQRCode fullQRCode4 = new OASFullQRCode();

        System.assert(fullQRCode1.equals(fullQRCode2));
        System.assert(fullQRCode2.equals(fullQRCode1));
        System.assert(fullQRCode3.equals(fullQRCode4));
        System.assert(fullQRCode4.equals(fullQRCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = new OASFullQRCode();

        System.assertEquals(false, fullQRCode1.equals('foo'));
        System.assertEquals(false, fullQRCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = new OASFullQRCode();
        OASFullQRCode fullQRCode3;

        System.assertEquals(false, fullQRCode1.equals(fullQRCode3));
        System.assertEquals(false, fullQRCode2.equals(fullQRCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = new OASFullQRCode();

        System.assertEquals(fullQRCode1.hashCode(), fullQRCode1.hashCode());
        System.assertEquals(fullQRCode2.hashCode(), fullQRCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASFullQRCode fullQRCode1 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode2 = OASFullQRCode.getExample();
        OASFullQRCode fullQRCode3 = new OASFullQRCode();
        OASFullQRCode fullQRCode4 = new OASFullQRCode();

        System.assert(fullQRCode1.equals(fullQRCode2));
        System.assert(fullQRCode3.equals(fullQRCode4));
        System.assertEquals(fullQRCode1.hashCode(), fullQRCode2.hashCode());
        System.assertEquals(fullQRCode3.hashCode(), fullQRCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASFullQRCode fullQRCode = new OASFullQRCode();
        Map<String, String> propertymappings = fullQRCode.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('qrCode', propertymappings.get('qr_code'));
        System.assertEquals('logoImageUrl', propertymappings.get('logo_image_url'));
        System.assertEquals('isCustomized', propertymappings.get('is_customized'));
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
        System.assertEquals('hasStored', propertymappings.get('has_stored'));
    }
}