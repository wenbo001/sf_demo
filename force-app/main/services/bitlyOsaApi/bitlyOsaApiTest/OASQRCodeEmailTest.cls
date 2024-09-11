@isTest
private class OASQRCodeEmailTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = qrCodeEmail1;
        OASQRCodeEmail qrCodeEmail3 = new OASQRCodeEmail();
        OASQRCodeEmail qrCodeEmail4 = qrCodeEmail3;

        System.assert(qrCodeEmail1.equals(qrCodeEmail2));
        System.assert(qrCodeEmail2.equals(qrCodeEmail1));
        System.assert(qrCodeEmail1.equals(qrCodeEmail1));
        System.assert(qrCodeEmail3.equals(qrCodeEmail4));
        System.assert(qrCodeEmail4.equals(qrCodeEmail3));
        System.assert(qrCodeEmail3.equals(qrCodeEmail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail3 = new OASQRCodeEmail();
        OASQRCodeEmail qrCodeEmail4 = new OASQRCodeEmail();

        System.assert(qrCodeEmail1.equals(qrCodeEmail2));
        System.assert(qrCodeEmail2.equals(qrCodeEmail1));
        System.assert(qrCodeEmail3.equals(qrCodeEmail4));
        System.assert(qrCodeEmail4.equals(qrCodeEmail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = new OASQRCodeEmail();

        System.assertEquals(false, qrCodeEmail1.equals('foo'));
        System.assertEquals(false, qrCodeEmail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = new OASQRCodeEmail();
        OASQRCodeEmail qrCodeEmail3;

        System.assertEquals(false, qrCodeEmail1.equals(qrCodeEmail3));
        System.assertEquals(false, qrCodeEmail2.equals(qrCodeEmail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = new OASQRCodeEmail();

        System.assertEquals(qrCodeEmail1.hashCode(), qrCodeEmail1.hashCode());
        System.assertEquals(qrCodeEmail2.hashCode(), qrCodeEmail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeEmail qrCodeEmail1 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail2 = OASQRCodeEmail.getExample();
        OASQRCodeEmail qrCodeEmail3 = new OASQRCodeEmail();
        OASQRCodeEmail qrCodeEmail4 = new OASQRCodeEmail();

        System.assert(qrCodeEmail1.equals(qrCodeEmail2));
        System.assert(qrCodeEmail3.equals(qrCodeEmail4));
        System.assertEquals(qrCodeEmail1.hashCode(), qrCodeEmail2.hashCode());
        System.assertEquals(qrCodeEmail3.hashCode(), qrCodeEmail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeEmail qrCodeEmail = new OASQRCodeEmail();
        Map<String, String> propertymappings = qrCodeEmail.getPropertyMappings();
        System.assertEquals('r_from', propertymappings.get('from'));
    }
}