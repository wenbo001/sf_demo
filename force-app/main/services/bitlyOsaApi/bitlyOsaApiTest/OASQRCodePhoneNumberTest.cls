@isTest
private class OASQRCodePhoneNumberTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = qrCodePhoneNumber1;
        OASQRCodePhoneNumber qrCodePhoneNumber3 = new OASQRCodePhoneNumber();
        OASQRCodePhoneNumber qrCodePhoneNumber4 = qrCodePhoneNumber3;

        System.assert(qrCodePhoneNumber1.equals(qrCodePhoneNumber2));
        System.assert(qrCodePhoneNumber2.equals(qrCodePhoneNumber1));
        System.assert(qrCodePhoneNumber1.equals(qrCodePhoneNumber1));
        System.assert(qrCodePhoneNumber3.equals(qrCodePhoneNumber4));
        System.assert(qrCodePhoneNumber4.equals(qrCodePhoneNumber3));
        System.assert(qrCodePhoneNumber3.equals(qrCodePhoneNumber3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber3 = new OASQRCodePhoneNumber();
        OASQRCodePhoneNumber qrCodePhoneNumber4 = new OASQRCodePhoneNumber();

        System.assert(qrCodePhoneNumber1.equals(qrCodePhoneNumber2));
        System.assert(qrCodePhoneNumber2.equals(qrCodePhoneNumber1));
        System.assert(qrCodePhoneNumber3.equals(qrCodePhoneNumber4));
        System.assert(qrCodePhoneNumber4.equals(qrCodePhoneNumber3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = new OASQRCodePhoneNumber();

        System.assertEquals(false, qrCodePhoneNumber1.equals('foo'));
        System.assertEquals(false, qrCodePhoneNumber2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = new OASQRCodePhoneNumber();
        OASQRCodePhoneNumber qrCodePhoneNumber3;

        System.assertEquals(false, qrCodePhoneNumber1.equals(qrCodePhoneNumber3));
        System.assertEquals(false, qrCodePhoneNumber2.equals(qrCodePhoneNumber3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = new OASQRCodePhoneNumber();

        System.assertEquals(qrCodePhoneNumber1.hashCode(), qrCodePhoneNumber1.hashCode());
        System.assertEquals(qrCodePhoneNumber2.hashCode(), qrCodePhoneNumber2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodePhoneNumber qrCodePhoneNumber1 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber2 = OASQRCodePhoneNumber.getExample();
        OASQRCodePhoneNumber qrCodePhoneNumber3 = new OASQRCodePhoneNumber();
        OASQRCodePhoneNumber qrCodePhoneNumber4 = new OASQRCodePhoneNumber();

        System.assert(qrCodePhoneNumber1.equals(qrCodePhoneNumber2));
        System.assert(qrCodePhoneNumber3.equals(qrCodePhoneNumber4));
        System.assertEquals(qrCodePhoneNumber1.hashCode(), qrCodePhoneNumber2.hashCode());
        System.assertEquals(qrCodePhoneNumber3.hashCode(), qrCodePhoneNumber4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodePhoneNumber qrCodePhoneNumber = new OASQRCodePhoneNumber();
        Map<String, String> propertymappings = qrCodePhoneNumber.getPropertyMappings();
        System.assertEquals('phoneNumber', propertymappings.get('phone_number'));
    }
}