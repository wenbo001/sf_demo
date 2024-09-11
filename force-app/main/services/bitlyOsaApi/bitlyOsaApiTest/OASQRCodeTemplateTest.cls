@isTest
private class OASQRCodeTemplateTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = qrCodeTemplate1;
        OASQRCodeTemplate qrCodeTemplate3 = new OASQRCodeTemplate();
        OASQRCodeTemplate qrCodeTemplate4 = qrCodeTemplate3;

        System.assert(qrCodeTemplate1.equals(qrCodeTemplate2));
        System.assert(qrCodeTemplate2.equals(qrCodeTemplate1));
        System.assert(qrCodeTemplate1.equals(qrCodeTemplate1));
        System.assert(qrCodeTemplate3.equals(qrCodeTemplate4));
        System.assert(qrCodeTemplate4.equals(qrCodeTemplate3));
        System.assert(qrCodeTemplate3.equals(qrCodeTemplate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate3 = new OASQRCodeTemplate();
        OASQRCodeTemplate qrCodeTemplate4 = new OASQRCodeTemplate();

        System.assert(qrCodeTemplate1.equals(qrCodeTemplate2));
        System.assert(qrCodeTemplate2.equals(qrCodeTemplate1));
        System.assert(qrCodeTemplate3.equals(qrCodeTemplate4));
        System.assert(qrCodeTemplate4.equals(qrCodeTemplate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = new OASQRCodeTemplate();

        System.assertEquals(false, qrCodeTemplate1.equals('foo'));
        System.assertEquals(false, qrCodeTemplate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = new OASQRCodeTemplate();
        OASQRCodeTemplate qrCodeTemplate3;

        System.assertEquals(false, qrCodeTemplate1.equals(qrCodeTemplate3));
        System.assertEquals(false, qrCodeTemplate2.equals(qrCodeTemplate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = new OASQRCodeTemplate();

        System.assertEquals(qrCodeTemplate1.hashCode(), qrCodeTemplate1.hashCode());
        System.assertEquals(qrCodeTemplate2.hashCode(), qrCodeTemplate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTemplate qrCodeTemplate1 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate2 = OASQRCodeTemplate.getExample();
        OASQRCodeTemplate qrCodeTemplate3 = new OASQRCodeTemplate();
        OASQRCodeTemplate qrCodeTemplate4 = new OASQRCodeTemplate();

        System.assert(qrCodeTemplate1.equals(qrCodeTemplate2));
        System.assert(qrCodeTemplate3.equals(qrCodeTemplate4));
        System.assertEquals(qrCodeTemplate1.hashCode(), qrCodeTemplate2.hashCode());
        System.assertEquals(qrCodeTemplate3.hashCode(), qrCodeTemplate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTemplate qrCodeTemplate = new OASQRCodeTemplate();
        Map<String, String> propertymappings = qrCodeTemplate.getPropertyMappings();
        System.assertEquals('brandGuid', propertymappings.get('brand_guid'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
        System.assertEquals('customizationHash', propertymappings.get('customization_hash'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('createdTs', propertymappings.get('created_ts'));
        System.assertEquals('modifiedTs', propertymappings.get('modified_ts'));
    }
}