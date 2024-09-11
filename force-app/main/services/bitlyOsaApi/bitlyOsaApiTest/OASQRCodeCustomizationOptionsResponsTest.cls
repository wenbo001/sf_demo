@isTest
private class OASQRCodeCustomizationOptionsResponsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = qrCodeCustomizationOptionsResponse1;
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse3 = new OASQRCodeCustomizationOptionsRespons();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse4 = qrCodeCustomizationOptionsResponse3;

        System.assert(qrCodeCustomizationOptionsResponse1.equals(qrCodeCustomizationOptionsResponse2));
        System.assert(qrCodeCustomizationOptionsResponse2.equals(qrCodeCustomizationOptionsResponse1));
        System.assert(qrCodeCustomizationOptionsResponse1.equals(qrCodeCustomizationOptionsResponse1));
        System.assert(qrCodeCustomizationOptionsResponse3.equals(qrCodeCustomizationOptionsResponse4));
        System.assert(qrCodeCustomizationOptionsResponse4.equals(qrCodeCustomizationOptionsResponse3));
        System.assert(qrCodeCustomizationOptionsResponse3.equals(qrCodeCustomizationOptionsResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse3 = new OASQRCodeCustomizationOptionsRespons();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse4 = new OASQRCodeCustomizationOptionsRespons();

        System.assert(qrCodeCustomizationOptionsResponse1.equals(qrCodeCustomizationOptionsResponse2));
        System.assert(qrCodeCustomizationOptionsResponse2.equals(qrCodeCustomizationOptionsResponse1));
        System.assert(qrCodeCustomizationOptionsResponse3.equals(qrCodeCustomizationOptionsResponse4));
        System.assert(qrCodeCustomizationOptionsResponse4.equals(qrCodeCustomizationOptionsResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = new OASQRCodeCustomizationOptionsRespons();

        System.assertEquals(false, qrCodeCustomizationOptionsResponse1.equals('foo'));
        System.assertEquals(false, qrCodeCustomizationOptionsResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = new OASQRCodeCustomizationOptionsRespons();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse3;

        System.assertEquals(false, qrCodeCustomizationOptionsResponse1.equals(qrCodeCustomizationOptionsResponse3));
        System.assertEquals(false, qrCodeCustomizationOptionsResponse2.equals(qrCodeCustomizationOptionsResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = new OASQRCodeCustomizationOptionsRespons();

        System.assertEquals(qrCodeCustomizationOptionsResponse1.hashCode(), qrCodeCustomizationOptionsResponse1.hashCode());
        System.assertEquals(qrCodeCustomizationOptionsResponse2.hashCode(), qrCodeCustomizationOptionsResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse1 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse2 = OASQRCodeCustomizationOptionsRespons.getExample();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse3 = new OASQRCodeCustomizationOptionsRespons();
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse4 = new OASQRCodeCustomizationOptionsRespons();

        System.assert(qrCodeCustomizationOptionsResponse1.equals(qrCodeCustomizationOptionsResponse2));
        System.assert(qrCodeCustomizationOptionsResponse3.equals(qrCodeCustomizationOptionsResponse4));
        System.assertEquals(qrCodeCustomizationOptionsResponse1.hashCode(), qrCodeCustomizationOptionsResponse2.hashCode());
        System.assertEquals(qrCodeCustomizationOptionsResponse3.hashCode(), qrCodeCustomizationOptionsResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse = new OASQRCodeCustomizationOptionsRespons();
        Map<String, String> propertymappings = qrCodeCustomizationOptionsResponse.getPropertyMappings();
        System.assertEquals('dotPatterns', propertymappings.get('dot_patterns'));
        System.assertEquals('dynamicTypes', propertymappings.get('dynamic_types'));
        System.assertEquals('staticTypes', propertymappings.get('static_types'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeCustomizationOptionsRespons qrCodeCustomizationOptionsResponse = new OASQRCodeCustomizationOptionsRespons();
        System.assertEquals(new List<OASQRCodeFrameResponseItem>(), qrCodeCustomizationOptionsResponse.frames);
        System.assertEquals(new List<OASQRCodeDotPattern>(), qrCodeCustomizationOptionsResponse.dotPatterns);
        System.assertEquals(new List<OASQRCodeCornerResponseItem>(), qrCodeCustomizationOptionsResponse.corners);
        System.assertEquals(new List<OASQRCodeShapeItem>(), qrCodeCustomizationOptionsResponse.shapes);
        System.assertEquals(new List<String>(), qrCodeCustomizationOptionsResponse.formats);
        System.assertEquals(new List<OASQRCodeTypeItem>(), qrCodeCustomizationOptionsResponse.dynamicTypes);
        System.assertEquals(new List<OASQRCodeTypeItem>(), qrCodeCustomizationOptionsResponse.staticTypes);
        System.assertEquals(new List<OASQRCodeLogoImage>(), qrCodeCustomizationOptionsResponse.logos);
    }
}