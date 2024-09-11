@isTest
private class OASQRCodeURITest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = qrCodeURI1;
        OASQRCodeURI qrCodeURI3 = new OASQRCodeURI();
        OASQRCodeURI qrCodeURI4 = qrCodeURI3;

        System.assert(qrCodeURI1.equals(qrCodeURI2));
        System.assert(qrCodeURI2.equals(qrCodeURI1));
        System.assert(qrCodeURI1.equals(qrCodeURI1));
        System.assert(qrCodeURI3.equals(qrCodeURI4));
        System.assert(qrCodeURI4.equals(qrCodeURI3));
        System.assert(qrCodeURI3.equals(qrCodeURI3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI3 = new OASQRCodeURI();
        OASQRCodeURI qrCodeURI4 = new OASQRCodeURI();

        System.assert(qrCodeURI1.equals(qrCodeURI2));
        System.assert(qrCodeURI2.equals(qrCodeURI1));
        System.assert(qrCodeURI3.equals(qrCodeURI4));
        System.assert(qrCodeURI4.equals(qrCodeURI3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = new OASQRCodeURI();

        System.assertEquals(false, qrCodeURI1.equals('foo'));
        System.assertEquals(false, qrCodeURI2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = new OASQRCodeURI();
        OASQRCodeURI qrCodeURI3;

        System.assertEquals(false, qrCodeURI1.equals(qrCodeURI3));
        System.assertEquals(false, qrCodeURI2.equals(qrCodeURI3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = new OASQRCodeURI();

        System.assertEquals(qrCodeURI1.hashCode(), qrCodeURI1.hashCode());
        System.assertEquals(qrCodeURI2.hashCode(), qrCodeURI2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeURI qrCodeURI1 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI2 = OASQRCodeURI.getExample();
        OASQRCodeURI qrCodeURI3 = new OASQRCodeURI();
        OASQRCodeURI qrCodeURI4 = new OASQRCodeURI();

        System.assert(qrCodeURI1.equals(qrCodeURI2));
        System.assert(qrCodeURI3.equals(qrCodeURI4));
        System.assertEquals(qrCodeURI1.hashCode(), qrCodeURI2.hashCode());
        System.assertEquals(qrCodeURI3.hashCode(), qrCodeURI4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeURI qrCodeURI = new OASQRCodeURI();
        Map<String, String> propertymappings = qrCodeURI.getPropertyMappings();
        System.assertEquals('qrUri', propertymappings.get('qr_uri'));
    }
}