@isTest
private class OASQRCodeDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = qrCodeDetails1;
        OASQRCodeDetails qrCodeDetails3 = new OASQRCodeDetails();
        OASQRCodeDetails qrCodeDetails4 = qrCodeDetails3;

        System.assert(qrCodeDetails1.equals(qrCodeDetails2));
        System.assert(qrCodeDetails2.equals(qrCodeDetails1));
        System.assert(qrCodeDetails1.equals(qrCodeDetails1));
        System.assert(qrCodeDetails3.equals(qrCodeDetails4));
        System.assert(qrCodeDetails4.equals(qrCodeDetails3));
        System.assert(qrCodeDetails3.equals(qrCodeDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails3 = new OASQRCodeDetails();
        OASQRCodeDetails qrCodeDetails4 = new OASQRCodeDetails();

        System.assert(qrCodeDetails1.equals(qrCodeDetails2));
        System.assert(qrCodeDetails2.equals(qrCodeDetails1));
        System.assert(qrCodeDetails3.equals(qrCodeDetails4));
        System.assert(qrCodeDetails4.equals(qrCodeDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = new OASQRCodeDetails();

        System.assertEquals(false, qrCodeDetails1.equals('foo'));
        System.assertEquals(false, qrCodeDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = new OASQRCodeDetails();
        OASQRCodeDetails qrCodeDetails3;

        System.assertEquals(false, qrCodeDetails1.equals(qrCodeDetails3));
        System.assertEquals(false, qrCodeDetails2.equals(qrCodeDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = new OASQRCodeDetails();

        System.assertEquals(qrCodeDetails1.hashCode(), qrCodeDetails1.hashCode());
        System.assertEquals(qrCodeDetails2.hashCode(), qrCodeDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeDetails qrCodeDetails1 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails2 = OASQRCodeDetails.getExample();
        OASQRCodeDetails qrCodeDetails3 = new OASQRCodeDetails();
        OASQRCodeDetails qrCodeDetails4 = new OASQRCodeDetails();

        System.assert(qrCodeDetails1.equals(qrCodeDetails2));
        System.assert(qrCodeDetails3.equals(qrCodeDetails4));
        System.assertEquals(qrCodeDetails1.hashCode(), qrCodeDetails2.hashCode());
        System.assertEquals(qrCodeDetails3.hashCode(), qrCodeDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeDetails qrCodeDetails = new OASQRCodeDetails();
        Map<String, String> propertymappings = qrCodeDetails.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }
}