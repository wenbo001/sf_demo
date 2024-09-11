@isTest
private class OASQRCodeWifiTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = qrCodeWifi1;
        OASQRCodeWifi qrCodeWifi3 = new OASQRCodeWifi();
        OASQRCodeWifi qrCodeWifi4 = qrCodeWifi3;

        System.assert(qrCodeWifi1.equals(qrCodeWifi2));
        System.assert(qrCodeWifi2.equals(qrCodeWifi1));
        System.assert(qrCodeWifi1.equals(qrCodeWifi1));
        System.assert(qrCodeWifi3.equals(qrCodeWifi4));
        System.assert(qrCodeWifi4.equals(qrCodeWifi3));
        System.assert(qrCodeWifi3.equals(qrCodeWifi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi3 = new OASQRCodeWifi();
        OASQRCodeWifi qrCodeWifi4 = new OASQRCodeWifi();

        System.assert(qrCodeWifi1.equals(qrCodeWifi2));
        System.assert(qrCodeWifi2.equals(qrCodeWifi1));
        System.assert(qrCodeWifi3.equals(qrCodeWifi4));
        System.assert(qrCodeWifi4.equals(qrCodeWifi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = new OASQRCodeWifi();

        System.assertEquals(false, qrCodeWifi1.equals('foo'));
        System.assertEquals(false, qrCodeWifi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = new OASQRCodeWifi();
        OASQRCodeWifi qrCodeWifi3;

        System.assertEquals(false, qrCodeWifi1.equals(qrCodeWifi3));
        System.assertEquals(false, qrCodeWifi2.equals(qrCodeWifi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = new OASQRCodeWifi();

        System.assertEquals(qrCodeWifi1.hashCode(), qrCodeWifi1.hashCode());
        System.assertEquals(qrCodeWifi2.hashCode(), qrCodeWifi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeWifi qrCodeWifi1 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi2 = OASQRCodeWifi.getExample();
        OASQRCodeWifi qrCodeWifi3 = new OASQRCodeWifi();
        OASQRCodeWifi qrCodeWifi4 = new OASQRCodeWifi();

        System.assert(qrCodeWifi1.equals(qrCodeWifi2));
        System.assert(qrCodeWifi3.equals(qrCodeWifi4));
        System.assertEquals(qrCodeWifi1.hashCode(), qrCodeWifi2.hashCode());
        System.assertEquals(qrCodeWifi3.hashCode(), qrCodeWifi4.hashCode());
    }
}