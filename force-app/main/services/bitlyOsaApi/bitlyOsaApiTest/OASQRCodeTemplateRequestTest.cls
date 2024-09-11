@isTest
private class OASQRCodeTemplateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = qrCodeTemplateRequest1;
        OASQRCodeTemplateRequest qrCodeTemplateRequest3 = new OASQRCodeTemplateRequest();
        OASQRCodeTemplateRequest qrCodeTemplateRequest4 = qrCodeTemplateRequest3;

        System.assert(qrCodeTemplateRequest1.equals(qrCodeTemplateRequest2));
        System.assert(qrCodeTemplateRequest2.equals(qrCodeTemplateRequest1));
        System.assert(qrCodeTemplateRequest1.equals(qrCodeTemplateRequest1));
        System.assert(qrCodeTemplateRequest3.equals(qrCodeTemplateRequest4));
        System.assert(qrCodeTemplateRequest4.equals(qrCodeTemplateRequest3));
        System.assert(qrCodeTemplateRequest3.equals(qrCodeTemplateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest3 = new OASQRCodeTemplateRequest();
        OASQRCodeTemplateRequest qrCodeTemplateRequest4 = new OASQRCodeTemplateRequest();

        System.assert(qrCodeTemplateRequest1.equals(qrCodeTemplateRequest2));
        System.assert(qrCodeTemplateRequest2.equals(qrCodeTemplateRequest1));
        System.assert(qrCodeTemplateRequest3.equals(qrCodeTemplateRequest4));
        System.assert(qrCodeTemplateRequest4.equals(qrCodeTemplateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = new OASQRCodeTemplateRequest();

        System.assertEquals(false, qrCodeTemplateRequest1.equals('foo'));
        System.assertEquals(false, qrCodeTemplateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = new OASQRCodeTemplateRequest();
        OASQRCodeTemplateRequest qrCodeTemplateRequest3;

        System.assertEquals(false, qrCodeTemplateRequest1.equals(qrCodeTemplateRequest3));
        System.assertEquals(false, qrCodeTemplateRequest2.equals(qrCodeTemplateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = new OASQRCodeTemplateRequest();

        System.assertEquals(qrCodeTemplateRequest1.hashCode(), qrCodeTemplateRequest1.hashCode());
        System.assertEquals(qrCodeTemplateRequest2.hashCode(), qrCodeTemplateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest1 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest2 = OASQRCodeTemplateRequest.getExample();
        OASQRCodeTemplateRequest qrCodeTemplateRequest3 = new OASQRCodeTemplateRequest();
        OASQRCodeTemplateRequest qrCodeTemplateRequest4 = new OASQRCodeTemplateRequest();

        System.assert(qrCodeTemplateRequest1.equals(qrCodeTemplateRequest2));
        System.assert(qrCodeTemplateRequest3.equals(qrCodeTemplateRequest4));
        System.assertEquals(qrCodeTemplateRequest1.hashCode(), qrCodeTemplateRequest2.hashCode());
        System.assertEquals(qrCodeTemplateRequest3.hashCode(), qrCodeTemplateRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeTemplateRequest qrCodeTemplateRequest = new OASQRCodeTemplateRequest();
        Map<String, String> propertymappings = qrCodeTemplateRequest.getPropertyMappings();
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }
}