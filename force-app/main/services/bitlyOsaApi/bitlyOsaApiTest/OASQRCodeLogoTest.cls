@isTest
private class OASQRCodeLogoTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = qrCodeLogo1;
        OASQRCodeLogo qrCodeLogo3 = new OASQRCodeLogo();
        OASQRCodeLogo qrCodeLogo4 = qrCodeLogo3;

        System.assert(qrCodeLogo1.equals(qrCodeLogo2));
        System.assert(qrCodeLogo2.equals(qrCodeLogo1));
        System.assert(qrCodeLogo1.equals(qrCodeLogo1));
        System.assert(qrCodeLogo3.equals(qrCodeLogo4));
        System.assert(qrCodeLogo4.equals(qrCodeLogo3));
        System.assert(qrCodeLogo3.equals(qrCodeLogo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo3 = new OASQRCodeLogo();
        OASQRCodeLogo qrCodeLogo4 = new OASQRCodeLogo();

        System.assert(qrCodeLogo1.equals(qrCodeLogo2));
        System.assert(qrCodeLogo2.equals(qrCodeLogo1));
        System.assert(qrCodeLogo3.equals(qrCodeLogo4));
        System.assert(qrCodeLogo4.equals(qrCodeLogo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = new OASQRCodeLogo();

        System.assertEquals(false, qrCodeLogo1.equals('foo'));
        System.assertEquals(false, qrCodeLogo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = new OASQRCodeLogo();
        OASQRCodeLogo qrCodeLogo3;

        System.assertEquals(false, qrCodeLogo1.equals(qrCodeLogo3));
        System.assertEquals(false, qrCodeLogo2.equals(qrCodeLogo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = new OASQRCodeLogo();

        System.assertEquals(qrCodeLogo1.hashCode(), qrCodeLogo1.hashCode());
        System.assertEquals(qrCodeLogo2.hashCode(), qrCodeLogo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeLogo qrCodeLogo1 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo2 = OASQRCodeLogo.getExample();
        OASQRCodeLogo qrCodeLogo3 = new OASQRCodeLogo();
        OASQRCodeLogo qrCodeLogo4 = new OASQRCodeLogo();

        System.assert(qrCodeLogo1.equals(qrCodeLogo2));
        System.assert(qrCodeLogo3.equals(qrCodeLogo4));
        System.assertEquals(qrCodeLogo1.hashCode(), qrCodeLogo2.hashCode());
        System.assertEquals(qrCodeLogo3.hashCode(), qrCodeLogo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeLogo qrCodeLogo = new OASQRCodeLogo();
        Map<String, String> propertymappings = qrCodeLogo.getPropertyMappings();
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('cropType', propertymappings.get('crop_type'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeLogo qrCodeLogo = new OASQRCodeLogo();
        System.assertEquals(OASQRCodeLogo.CropTypeEnum.RECTANGLE, qrCodeLogo.cropType);
        System.assertEquals(null, qrCodeLogo.imageGuid);
        System.assertEquals(null, qrCodeLogo.crop);
    }
}