@isTest
private class OASQRCodeMinimalTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = qrCodeMinimal1;
        OASQRCodeMinimal qrCodeMinimal3 = new OASQRCodeMinimal();
        OASQRCodeMinimal qrCodeMinimal4 = qrCodeMinimal3;

        System.assert(qrCodeMinimal1.equals(qrCodeMinimal2));
        System.assert(qrCodeMinimal2.equals(qrCodeMinimal1));
        System.assert(qrCodeMinimal1.equals(qrCodeMinimal1));
        System.assert(qrCodeMinimal3.equals(qrCodeMinimal4));
        System.assert(qrCodeMinimal4.equals(qrCodeMinimal3));
        System.assert(qrCodeMinimal3.equals(qrCodeMinimal3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal3 = new OASQRCodeMinimal();
        OASQRCodeMinimal qrCodeMinimal4 = new OASQRCodeMinimal();

        System.assert(qrCodeMinimal1.equals(qrCodeMinimal2));
        System.assert(qrCodeMinimal2.equals(qrCodeMinimal1));
        System.assert(qrCodeMinimal3.equals(qrCodeMinimal4));
        System.assert(qrCodeMinimal4.equals(qrCodeMinimal3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = new OASQRCodeMinimal();

        System.assertEquals(false, qrCodeMinimal1.equals('foo'));
        System.assertEquals(false, qrCodeMinimal2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = new OASQRCodeMinimal();
        OASQRCodeMinimal qrCodeMinimal3;

        System.assertEquals(false, qrCodeMinimal1.equals(qrCodeMinimal3));
        System.assertEquals(false, qrCodeMinimal2.equals(qrCodeMinimal3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = new OASQRCodeMinimal();

        System.assertEquals(qrCodeMinimal1.hashCode(), qrCodeMinimal1.hashCode());
        System.assertEquals(qrCodeMinimal2.hashCode(), qrCodeMinimal2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeMinimal qrCodeMinimal1 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal2 = OASQRCodeMinimal.getExample();
        OASQRCodeMinimal qrCodeMinimal3 = new OASQRCodeMinimal();
        OASQRCodeMinimal qrCodeMinimal4 = new OASQRCodeMinimal();

        System.assert(qrCodeMinimal1.equals(qrCodeMinimal2));
        System.assert(qrCodeMinimal3.equals(qrCodeMinimal4));
        System.assertEquals(qrCodeMinimal1.hashCode(), qrCodeMinimal2.hashCode());
        System.assertEquals(qrCodeMinimal3.hashCode(), qrCodeMinimal4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeMinimal qrCodeMinimal = new OASQRCodeMinimal();
        Map<String, String> propertymappings = qrCodeMinimal.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}