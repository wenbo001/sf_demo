@isTest
private class OASQRCodeGradientTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = qrCodeGradient1;
        OASQRCodeGradient qrCodeGradient3 = new OASQRCodeGradient();
        OASQRCodeGradient qrCodeGradient4 = qrCodeGradient3;

        System.assert(qrCodeGradient1.equals(qrCodeGradient2));
        System.assert(qrCodeGradient2.equals(qrCodeGradient1));
        System.assert(qrCodeGradient1.equals(qrCodeGradient1));
        System.assert(qrCodeGradient3.equals(qrCodeGradient4));
        System.assert(qrCodeGradient4.equals(qrCodeGradient3));
        System.assert(qrCodeGradient3.equals(qrCodeGradient3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient3 = new OASQRCodeGradient();
        OASQRCodeGradient qrCodeGradient4 = new OASQRCodeGradient();

        System.assert(qrCodeGradient1.equals(qrCodeGradient2));
        System.assert(qrCodeGradient2.equals(qrCodeGradient1));
        System.assert(qrCodeGradient3.equals(qrCodeGradient4));
        System.assert(qrCodeGradient4.equals(qrCodeGradient3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = new OASQRCodeGradient();

        System.assertEquals(false, qrCodeGradient1.equals('foo'));
        System.assertEquals(false, qrCodeGradient2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = new OASQRCodeGradient();
        OASQRCodeGradient qrCodeGradient3;

        System.assertEquals(false, qrCodeGradient1.equals(qrCodeGradient3));
        System.assertEquals(false, qrCodeGradient2.equals(qrCodeGradient3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = new OASQRCodeGradient();

        System.assertEquals(qrCodeGradient1.hashCode(), qrCodeGradient1.hashCode());
        System.assertEquals(qrCodeGradient2.hashCode(), qrCodeGradient2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeGradient qrCodeGradient1 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient2 = OASQRCodeGradient.getExample();
        OASQRCodeGradient qrCodeGradient3 = new OASQRCodeGradient();
        OASQRCodeGradient qrCodeGradient4 = new OASQRCodeGradient();

        System.assert(qrCodeGradient1.equals(qrCodeGradient2));
        System.assert(qrCodeGradient3.equals(qrCodeGradient4));
        System.assertEquals(qrCodeGradient1.hashCode(), qrCodeGradient2.hashCode());
        System.assertEquals(qrCodeGradient3.hashCode(), qrCodeGradient4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeGradient qrCodeGradient = new OASQRCodeGradient();
        Map<String, String> propertymappings = qrCodeGradient.getPropertyMappings();
        System.assertEquals('excludeCorners', propertymappings.get('exclude_corners'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQRCodeGradient qrCodeGradient = new OASQRCodeGradient();
        System.assertEquals(OASQRCodeGradient.StyleEnum.NO_GRADIENT, qrCodeGradient.style);
        System.assertEquals(new List<OASGradientColor>(), qrCodeGradient.colors);
        System.assertEquals(null, qrCodeGradient.angle);
        System.assertEquals(null, qrCodeGradient.excludeCorners);
    }
}