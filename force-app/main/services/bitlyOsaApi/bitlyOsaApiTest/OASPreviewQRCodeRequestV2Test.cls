@isTest
private class OASPreviewQRCodeRequestV2Test {
    @isTest
    private static void equalsSameInstance() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = previewQRCodeRequestV21;
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV23 = new OASPreviewQRCodeRequestV2();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV24 = previewQRCodeRequestV23;

        System.assert(previewQRCodeRequestV21.equals(previewQRCodeRequestV22));
        System.assert(previewQRCodeRequestV22.equals(previewQRCodeRequestV21));
        System.assert(previewQRCodeRequestV21.equals(previewQRCodeRequestV21));
        System.assert(previewQRCodeRequestV23.equals(previewQRCodeRequestV24));
        System.assert(previewQRCodeRequestV24.equals(previewQRCodeRequestV23));
        System.assert(previewQRCodeRequestV23.equals(previewQRCodeRequestV23));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV23 = new OASPreviewQRCodeRequestV2();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV24 = new OASPreviewQRCodeRequestV2();

        System.assert(previewQRCodeRequestV21.equals(previewQRCodeRequestV22));
        System.assert(previewQRCodeRequestV22.equals(previewQRCodeRequestV21));
        System.assert(previewQRCodeRequestV23.equals(previewQRCodeRequestV24));
        System.assert(previewQRCodeRequestV24.equals(previewQRCodeRequestV23));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = new OASPreviewQRCodeRequestV2();

        System.assertEquals(false, previewQRCodeRequestV21.equals('foo'));
        System.assertEquals(false, previewQRCodeRequestV22.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = new OASPreviewQRCodeRequestV2();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV23;

        System.assertEquals(false, previewQRCodeRequestV21.equals(previewQRCodeRequestV23));
        System.assertEquals(false, previewQRCodeRequestV22.equals(previewQRCodeRequestV23));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = new OASPreviewQRCodeRequestV2();

        System.assertEquals(previewQRCodeRequestV21.hashCode(), previewQRCodeRequestV21.hashCode());
        System.assertEquals(previewQRCodeRequestV22.hashCode(), previewQRCodeRequestV22.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV21 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV22 = OASPreviewQRCodeRequestV2.getExample();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV23 = new OASPreviewQRCodeRequestV2();
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV24 = new OASPreviewQRCodeRequestV2();

        System.assert(previewQRCodeRequestV21.equals(previewQRCodeRequestV22));
        System.assert(previewQRCodeRequestV23.equals(previewQRCodeRequestV24));
        System.assertEquals(previewQRCodeRequestV21.hashCode(), previewQRCodeRequestV22.hashCode());
        System.assertEquals(previewQRCodeRequestV23.hashCode(), previewQRCodeRequestV24.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPreviewQRCodeRequestV2 previewQRCodeRequestV2 = new OASPreviewQRCodeRequestV2();
        Map<String, String> propertymappings = previewQRCodeRequestV2.getPropertyMappings();
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
        System.assertEquals('staticContent', propertymappings.get('static_content'));
    }
}