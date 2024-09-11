@isTest
private class OASDeletedQRCodeResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = deletedQRCodeResponse1;
        OASDeletedQRCodeResponse deletedQRCodeResponse3 = new OASDeletedQRCodeResponse();
        OASDeletedQRCodeResponse deletedQRCodeResponse4 = deletedQRCodeResponse3;

        System.assert(deletedQRCodeResponse1.equals(deletedQRCodeResponse2));
        System.assert(deletedQRCodeResponse2.equals(deletedQRCodeResponse1));
        System.assert(deletedQRCodeResponse1.equals(deletedQRCodeResponse1));
        System.assert(deletedQRCodeResponse3.equals(deletedQRCodeResponse4));
        System.assert(deletedQRCodeResponse4.equals(deletedQRCodeResponse3));
        System.assert(deletedQRCodeResponse3.equals(deletedQRCodeResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse3 = new OASDeletedQRCodeResponse();
        OASDeletedQRCodeResponse deletedQRCodeResponse4 = new OASDeletedQRCodeResponse();

        System.assert(deletedQRCodeResponse1.equals(deletedQRCodeResponse2));
        System.assert(deletedQRCodeResponse2.equals(deletedQRCodeResponse1));
        System.assert(deletedQRCodeResponse3.equals(deletedQRCodeResponse4));
        System.assert(deletedQRCodeResponse4.equals(deletedQRCodeResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = new OASDeletedQRCodeResponse();

        System.assertEquals(false, deletedQRCodeResponse1.equals('foo'));
        System.assertEquals(false, deletedQRCodeResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = new OASDeletedQRCodeResponse();
        OASDeletedQRCodeResponse deletedQRCodeResponse3;

        System.assertEquals(false, deletedQRCodeResponse1.equals(deletedQRCodeResponse3));
        System.assertEquals(false, deletedQRCodeResponse2.equals(deletedQRCodeResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = new OASDeletedQRCodeResponse();

        System.assertEquals(deletedQRCodeResponse1.hashCode(), deletedQRCodeResponse1.hashCode());
        System.assertEquals(deletedQRCodeResponse2.hashCode(), deletedQRCodeResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDeletedQRCodeResponse deletedQRCodeResponse1 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse2 = OASDeletedQRCodeResponse.getExample();
        OASDeletedQRCodeResponse deletedQRCodeResponse3 = new OASDeletedQRCodeResponse();
        OASDeletedQRCodeResponse deletedQRCodeResponse4 = new OASDeletedQRCodeResponse();

        System.assert(deletedQRCodeResponse1.equals(deletedQRCodeResponse2));
        System.assert(deletedQRCodeResponse3.equals(deletedQRCodeResponse4));
        System.assertEquals(deletedQRCodeResponse1.hashCode(), deletedQRCodeResponse2.hashCode());
        System.assertEquals(deletedQRCodeResponse3.hashCode(), deletedQRCodeResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDeletedQRCodeResponse deletedQRCodeResponse = new OASDeletedQRCodeResponse();
        Map<String, String> propertymappings = deletedQRCodeResponse.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
    }
}