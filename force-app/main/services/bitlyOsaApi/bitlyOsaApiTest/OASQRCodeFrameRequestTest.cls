@isTest
private class OASQRCodeFrameRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = qrCodeFrameRequest1;
        OASQRCodeFrameRequest qrCodeFrameRequest3 = new OASQRCodeFrameRequest();
        OASQRCodeFrameRequest qrCodeFrameRequest4 = qrCodeFrameRequest3;

        System.assert(qrCodeFrameRequest1.equals(qrCodeFrameRequest2));
        System.assert(qrCodeFrameRequest2.equals(qrCodeFrameRequest1));
        System.assert(qrCodeFrameRequest1.equals(qrCodeFrameRequest1));
        System.assert(qrCodeFrameRequest3.equals(qrCodeFrameRequest4));
        System.assert(qrCodeFrameRequest4.equals(qrCodeFrameRequest3));
        System.assert(qrCodeFrameRequest3.equals(qrCodeFrameRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest3 = new OASQRCodeFrameRequest();
        OASQRCodeFrameRequest qrCodeFrameRequest4 = new OASQRCodeFrameRequest();

        System.assert(qrCodeFrameRequest1.equals(qrCodeFrameRequest2));
        System.assert(qrCodeFrameRequest2.equals(qrCodeFrameRequest1));
        System.assert(qrCodeFrameRequest3.equals(qrCodeFrameRequest4));
        System.assert(qrCodeFrameRequest4.equals(qrCodeFrameRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = new OASQRCodeFrameRequest();

        System.assertEquals(false, qrCodeFrameRequest1.equals('foo'));
        System.assertEquals(false, qrCodeFrameRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = new OASQRCodeFrameRequest();
        OASQRCodeFrameRequest qrCodeFrameRequest3;

        System.assertEquals(false, qrCodeFrameRequest1.equals(qrCodeFrameRequest3));
        System.assertEquals(false, qrCodeFrameRequest2.equals(qrCodeFrameRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = new OASQRCodeFrameRequest();

        System.assertEquals(qrCodeFrameRequest1.hashCode(), qrCodeFrameRequest1.hashCode());
        System.assertEquals(qrCodeFrameRequest2.hashCode(), qrCodeFrameRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeFrameRequest qrCodeFrameRequest1 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest2 = OASQRCodeFrameRequest.getExample();
        OASQRCodeFrameRequest qrCodeFrameRequest3 = new OASQRCodeFrameRequest();
        OASQRCodeFrameRequest qrCodeFrameRequest4 = new OASQRCodeFrameRequest();

        System.assert(qrCodeFrameRequest1.equals(qrCodeFrameRequest2));
        System.assert(qrCodeFrameRequest3.equals(qrCodeFrameRequest4));
        System.assertEquals(qrCodeFrameRequest1.hashCode(), qrCodeFrameRequest2.hashCode());
        System.assertEquals(qrCodeFrameRequest3.hashCode(), qrCodeFrameRequest4.hashCode());
    }
}