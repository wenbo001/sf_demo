@isTest
private class OASQRCodeSpecSettingsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = qrCodeSpecSettings1;
        OASQRCodeSpecSettings qrCodeSpecSettings3 = new OASQRCodeSpecSettings();
        OASQRCodeSpecSettings qrCodeSpecSettings4 = qrCodeSpecSettings3;

        System.assert(qrCodeSpecSettings1.equals(qrCodeSpecSettings2));
        System.assert(qrCodeSpecSettings2.equals(qrCodeSpecSettings1));
        System.assert(qrCodeSpecSettings1.equals(qrCodeSpecSettings1));
        System.assert(qrCodeSpecSettings3.equals(qrCodeSpecSettings4));
        System.assert(qrCodeSpecSettings4.equals(qrCodeSpecSettings3));
        System.assert(qrCodeSpecSettings3.equals(qrCodeSpecSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings3 = new OASQRCodeSpecSettings();
        OASQRCodeSpecSettings qrCodeSpecSettings4 = new OASQRCodeSpecSettings();

        System.assert(qrCodeSpecSettings1.equals(qrCodeSpecSettings2));
        System.assert(qrCodeSpecSettings2.equals(qrCodeSpecSettings1));
        System.assert(qrCodeSpecSettings3.equals(qrCodeSpecSettings4));
        System.assert(qrCodeSpecSettings4.equals(qrCodeSpecSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = new OASQRCodeSpecSettings();

        System.assertEquals(false, qrCodeSpecSettings1.equals('foo'));
        System.assertEquals(false, qrCodeSpecSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = new OASQRCodeSpecSettings();
        OASQRCodeSpecSettings qrCodeSpecSettings3;

        System.assertEquals(false, qrCodeSpecSettings1.equals(qrCodeSpecSettings3));
        System.assertEquals(false, qrCodeSpecSettings2.equals(qrCodeSpecSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = new OASQRCodeSpecSettings();

        System.assertEquals(qrCodeSpecSettings1.hashCode(), qrCodeSpecSettings1.hashCode());
        System.assertEquals(qrCodeSpecSettings2.hashCode(), qrCodeSpecSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeSpecSettings qrCodeSpecSettings1 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings2 = OASQRCodeSpecSettings.getExample();
        OASQRCodeSpecSettings qrCodeSpecSettings3 = new OASQRCodeSpecSettings();
        OASQRCodeSpecSettings qrCodeSpecSettings4 = new OASQRCodeSpecSettings();

        System.assert(qrCodeSpecSettings1.equals(qrCodeSpecSettings2));
        System.assert(qrCodeSpecSettings3.equals(qrCodeSpecSettings4));
        System.assertEquals(qrCodeSpecSettings1.hashCode(), qrCodeSpecSettings2.hashCode());
        System.assertEquals(qrCodeSpecSettings3.hashCode(), qrCodeSpecSettings4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeSpecSettings qrCodeSpecSettings = new OASQRCodeSpecSettings();
        Map<String, String> propertymappings = qrCodeSpecSettings.getPropertyMappings();
        System.assertEquals('errorCorrection', propertymappings.get('error_correction'));
    }
}