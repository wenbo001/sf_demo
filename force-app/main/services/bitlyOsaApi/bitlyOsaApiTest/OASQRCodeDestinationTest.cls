@isTest
private class OASQRCodeDestinationTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = qrCodeDestination1;
        OASQRCodeDestination qrCodeDestination3 = new OASQRCodeDestination();
        OASQRCodeDestination qrCodeDestination4 = qrCodeDestination3;

        System.assert(qrCodeDestination1.equals(qrCodeDestination2));
        System.assert(qrCodeDestination2.equals(qrCodeDestination1));
        System.assert(qrCodeDestination1.equals(qrCodeDestination1));
        System.assert(qrCodeDestination3.equals(qrCodeDestination4));
        System.assert(qrCodeDestination4.equals(qrCodeDestination3));
        System.assert(qrCodeDestination3.equals(qrCodeDestination3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination3 = new OASQRCodeDestination();
        OASQRCodeDestination qrCodeDestination4 = new OASQRCodeDestination();

        System.assert(qrCodeDestination1.equals(qrCodeDestination2));
        System.assert(qrCodeDestination2.equals(qrCodeDestination1));
        System.assert(qrCodeDestination3.equals(qrCodeDestination4));
        System.assert(qrCodeDestination4.equals(qrCodeDestination3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = new OASQRCodeDestination();

        System.assertEquals(false, qrCodeDestination1.equals('foo'));
        System.assertEquals(false, qrCodeDestination2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = new OASQRCodeDestination();
        OASQRCodeDestination qrCodeDestination3;

        System.assertEquals(false, qrCodeDestination1.equals(qrCodeDestination3));
        System.assertEquals(false, qrCodeDestination2.equals(qrCodeDestination3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = new OASQRCodeDestination();

        System.assertEquals(qrCodeDestination1.hashCode(), qrCodeDestination1.hashCode());
        System.assertEquals(qrCodeDestination2.hashCode(), qrCodeDestination2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeDestination qrCodeDestination1 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination2 = OASQRCodeDestination.getExample();
        OASQRCodeDestination qrCodeDestination3 = new OASQRCodeDestination();
        OASQRCodeDestination qrCodeDestination4 = new OASQRCodeDestination();

        System.assert(qrCodeDestination1.equals(qrCodeDestination2));
        System.assert(qrCodeDestination3.equals(qrCodeDestination4));
        System.assertEquals(qrCodeDestination1.hashCode(), qrCodeDestination2.hashCode());
        System.assertEquals(qrCodeDestination3.hashCode(), qrCodeDestination4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeDestination qrCodeDestination = new OASQRCodeDestination();
        Map<String, String> propertymappings = qrCodeDestination.getPropertyMappings();
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('siteId', propertymappings.get('site_id'));
    }
}