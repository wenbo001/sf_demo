@isTest
private class OASQRCodeBrandingTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = qrCodeBranding1;
        OASQRCodeBranding qrCodeBranding3 = new OASQRCodeBranding();
        OASQRCodeBranding qrCodeBranding4 = qrCodeBranding3;

        System.assert(qrCodeBranding1.equals(qrCodeBranding2));
        System.assert(qrCodeBranding2.equals(qrCodeBranding1));
        System.assert(qrCodeBranding1.equals(qrCodeBranding1));
        System.assert(qrCodeBranding3.equals(qrCodeBranding4));
        System.assert(qrCodeBranding4.equals(qrCodeBranding3));
        System.assert(qrCodeBranding3.equals(qrCodeBranding3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding3 = new OASQRCodeBranding();
        OASQRCodeBranding qrCodeBranding4 = new OASQRCodeBranding();

        System.assert(qrCodeBranding1.equals(qrCodeBranding2));
        System.assert(qrCodeBranding2.equals(qrCodeBranding1));
        System.assert(qrCodeBranding3.equals(qrCodeBranding4));
        System.assert(qrCodeBranding4.equals(qrCodeBranding3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = new OASQRCodeBranding();

        System.assertEquals(false, qrCodeBranding1.equals('foo'));
        System.assertEquals(false, qrCodeBranding2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = new OASQRCodeBranding();
        OASQRCodeBranding qrCodeBranding3;

        System.assertEquals(false, qrCodeBranding1.equals(qrCodeBranding3));
        System.assertEquals(false, qrCodeBranding2.equals(qrCodeBranding3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = new OASQRCodeBranding();

        System.assertEquals(qrCodeBranding1.hashCode(), qrCodeBranding1.hashCode());
        System.assertEquals(qrCodeBranding2.hashCode(), qrCodeBranding2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeBranding qrCodeBranding1 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding2 = OASQRCodeBranding.getExample();
        OASQRCodeBranding qrCodeBranding3 = new OASQRCodeBranding();
        OASQRCodeBranding qrCodeBranding4 = new OASQRCodeBranding();

        System.assert(qrCodeBranding1.equals(qrCodeBranding2));
        System.assert(qrCodeBranding3.equals(qrCodeBranding4));
        System.assertEquals(qrCodeBranding1.hashCode(), qrCodeBranding2.hashCode());
        System.assertEquals(qrCodeBranding3.hashCode(), qrCodeBranding4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeBranding qrCodeBranding = new OASQRCodeBranding();
        Map<String, String> propertymappings = qrCodeBranding.getPropertyMappings();
        System.assertEquals('bitlyBrand', propertymappings.get('bitly_brand'));
    }
}