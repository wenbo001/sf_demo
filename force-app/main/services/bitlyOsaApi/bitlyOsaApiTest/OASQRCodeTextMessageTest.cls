@isTest
private class OASQRCodeTextMessageTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = qrCodeTextMessage1;
        OASQRCodeTextMessage qrCodeTextMessage3 = new OASQRCodeTextMessage();
        OASQRCodeTextMessage qrCodeTextMessage4 = qrCodeTextMessage3;

        System.assert(qrCodeTextMessage1.equals(qrCodeTextMessage2));
        System.assert(qrCodeTextMessage2.equals(qrCodeTextMessage1));
        System.assert(qrCodeTextMessage1.equals(qrCodeTextMessage1));
        System.assert(qrCodeTextMessage3.equals(qrCodeTextMessage4));
        System.assert(qrCodeTextMessage4.equals(qrCodeTextMessage3));
        System.assert(qrCodeTextMessage3.equals(qrCodeTextMessage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage3 = new OASQRCodeTextMessage();
        OASQRCodeTextMessage qrCodeTextMessage4 = new OASQRCodeTextMessage();

        System.assert(qrCodeTextMessage1.equals(qrCodeTextMessage2));
        System.assert(qrCodeTextMessage2.equals(qrCodeTextMessage1));
        System.assert(qrCodeTextMessage3.equals(qrCodeTextMessage4));
        System.assert(qrCodeTextMessage4.equals(qrCodeTextMessage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = new OASQRCodeTextMessage();

        System.assertEquals(false, qrCodeTextMessage1.equals('foo'));
        System.assertEquals(false, qrCodeTextMessage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = new OASQRCodeTextMessage();
        OASQRCodeTextMessage qrCodeTextMessage3;

        System.assertEquals(false, qrCodeTextMessage1.equals(qrCodeTextMessage3));
        System.assertEquals(false, qrCodeTextMessage2.equals(qrCodeTextMessage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = new OASQRCodeTextMessage();

        System.assertEquals(qrCodeTextMessage1.hashCode(), qrCodeTextMessage1.hashCode());
        System.assertEquals(qrCodeTextMessage2.hashCode(), qrCodeTextMessage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTextMessage qrCodeTextMessage1 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage2 = OASQRCodeTextMessage.getExample();
        OASQRCodeTextMessage qrCodeTextMessage3 = new OASQRCodeTextMessage();
        OASQRCodeTextMessage qrCodeTextMessage4 = new OASQRCodeTextMessage();

        System.assert(qrCodeTextMessage1.equals(qrCodeTextMessage2));
        System.assert(qrCodeTextMessage3.equals(qrCodeTextMessage4));
        System.assertEquals(qrCodeTextMessage1.hashCode(), qrCodeTextMessage2.hashCode());
        System.assertEquals(qrCodeTextMessage3.hashCode(), qrCodeTextMessage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTextMessage qrCodeTextMessage = new OASQRCodeTextMessage();
        Map<String, String> propertymappings = qrCodeTextMessage.getPropertyMappings();
        System.assertEquals('phoneNumber', propertymappings.get('phone_number'));
    }
}