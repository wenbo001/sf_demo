@isTest
private class OASQRCodeDynamicTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = qrCodeDynamic1;
        OASQRCodeDynamic qrCodeDynamic3 = new OASQRCodeDynamic();
        OASQRCodeDynamic qrCodeDynamic4 = qrCodeDynamic3;

        System.assert(qrCodeDynamic1.equals(qrCodeDynamic2));
        System.assert(qrCodeDynamic2.equals(qrCodeDynamic1));
        System.assert(qrCodeDynamic1.equals(qrCodeDynamic1));
        System.assert(qrCodeDynamic3.equals(qrCodeDynamic4));
        System.assert(qrCodeDynamic4.equals(qrCodeDynamic3));
        System.assert(qrCodeDynamic3.equals(qrCodeDynamic3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic3 = new OASQRCodeDynamic();
        OASQRCodeDynamic qrCodeDynamic4 = new OASQRCodeDynamic();

        System.assert(qrCodeDynamic1.equals(qrCodeDynamic2));
        System.assert(qrCodeDynamic2.equals(qrCodeDynamic1));
        System.assert(qrCodeDynamic3.equals(qrCodeDynamic4));
        System.assert(qrCodeDynamic4.equals(qrCodeDynamic3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = new OASQRCodeDynamic();

        System.assertEquals(false, qrCodeDynamic1.equals('foo'));
        System.assertEquals(false, qrCodeDynamic2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = new OASQRCodeDynamic();
        OASQRCodeDynamic qrCodeDynamic3;

        System.assertEquals(false, qrCodeDynamic1.equals(qrCodeDynamic3));
        System.assertEquals(false, qrCodeDynamic2.equals(qrCodeDynamic3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = new OASQRCodeDynamic();

        System.assertEquals(qrCodeDynamic1.hashCode(), qrCodeDynamic1.hashCode());
        System.assertEquals(qrCodeDynamic2.hashCode(), qrCodeDynamic2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeDynamic qrCodeDynamic1 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic2 = OASQRCodeDynamic.getExample();
        OASQRCodeDynamic qrCodeDynamic3 = new OASQRCodeDynamic();
        OASQRCodeDynamic qrCodeDynamic4 = new OASQRCodeDynamic();

        System.assert(qrCodeDynamic1.equals(qrCodeDynamic2));
        System.assert(qrCodeDynamic3.equals(qrCodeDynamic4));
        System.assertEquals(qrCodeDynamic1.hashCode(), qrCodeDynamic2.hashCode());
        System.assertEquals(qrCodeDynamic3.hashCode(), qrCodeDynamic4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeDynamic qrCodeDynamic = new OASQRCodeDynamic();
        Map<String, String> propertymappings = qrCodeDynamic.getPropertyMappings();
        System.assertEquals('dynamicId', propertymappings.get('dynamic_id'));
        System.assertEquals('shortUrl', propertymappings.get('short_url'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('totalScanCount', propertymappings.get('total_scan_count'));
    }
}