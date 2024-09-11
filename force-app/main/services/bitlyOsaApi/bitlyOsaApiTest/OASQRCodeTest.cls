@isTest
private class OASQRCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = qrCode1;
        OASQRCode qrCode3 = new OASQRCode();
        OASQRCode qrCode4 = qrCode3;

        System.assert(qrCode1.equals(qrCode2));
        System.assert(qrCode2.equals(qrCode1));
        System.assert(qrCode1.equals(qrCode1));
        System.assert(qrCode3.equals(qrCode4));
        System.assert(qrCode4.equals(qrCode3));
        System.assert(qrCode3.equals(qrCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = OASQRCode.getExample();
        OASQRCode qrCode3 = new OASQRCode();
        OASQRCode qrCode4 = new OASQRCode();

        System.assert(qrCode1.equals(qrCode2));
        System.assert(qrCode2.equals(qrCode1));
        System.assert(qrCode3.equals(qrCode4));
        System.assert(qrCode4.equals(qrCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = new OASQRCode();

        System.assertEquals(false, qrCode1.equals('foo'));
        System.assertEquals(false, qrCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = new OASQRCode();
        OASQRCode qrCode3;

        System.assertEquals(false, qrCode1.equals(qrCode3));
        System.assertEquals(false, qrCode2.equals(qrCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = new OASQRCode();

        System.assertEquals(qrCode1.hashCode(), qrCode1.hashCode());
        System.assertEquals(qrCode2.hashCode(), qrCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCode qrCode1 = OASQRCode.getExample();
        OASQRCode qrCode2 = OASQRCode.getExample();
        OASQRCode qrCode3 = new OASQRCode();
        OASQRCode qrCode4 = new OASQRCode();

        System.assert(qrCode1.equals(qrCode2));
        System.assert(qrCode3.equals(qrCode4));
        System.assertEquals(qrCode1.hashCode(), qrCode2.hashCode());
        System.assertEquals(qrCode3.hashCode(), qrCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCode qrCode = new OASQRCode();
        Map<String, String> propertymappings = qrCode.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
        System.assertEquals('isHidden', propertymappings.get('is_hidden'));
        System.assertEquals('isCustomized', propertymappings.get('is_customized'));
        System.assertEquals('serializedContent', propertymappings.get('serialized_content'));
        System.assertEquals('qrCodeType', propertymappings.get('qr_code_type'));
        System.assertEquals('customizationHash', propertymappings.get('customization_hash'));
        System.assertEquals('fullHash', propertymappings.get('full_hash'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('modifiedTs', propertymappings.get('modified_ts'));
        System.assertEquals('dynamicContent', propertymappings.get('dynamic_content'));
        System.assertEquals('staticContent', propertymappings.get('static_content'));
        System.assertEquals('specSettings', propertymappings.get('spec_settings'));
    }
}