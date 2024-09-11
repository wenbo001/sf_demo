@isTest
private class OASPublicQrCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = publicQrCode1;
        OASPublicQrCode publicQrCode3 = new OASPublicQrCode();
        OASPublicQrCode publicQrCode4 = publicQrCode3;

        System.assert(publicQrCode1.equals(publicQrCode2));
        System.assert(publicQrCode2.equals(publicQrCode1));
        System.assert(publicQrCode1.equals(publicQrCode1));
        System.assert(publicQrCode3.equals(publicQrCode4));
        System.assert(publicQrCode4.equals(publicQrCode3));
        System.assert(publicQrCode3.equals(publicQrCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode3 = new OASPublicQrCode();
        OASPublicQrCode publicQrCode4 = new OASPublicQrCode();

        System.assert(publicQrCode1.equals(publicQrCode2));
        System.assert(publicQrCode2.equals(publicQrCode1));
        System.assert(publicQrCode3.equals(publicQrCode4));
        System.assert(publicQrCode4.equals(publicQrCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = new OASPublicQrCode();

        System.assertEquals(false, publicQrCode1.equals('foo'));
        System.assertEquals(false, publicQrCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = new OASPublicQrCode();
        OASPublicQrCode publicQrCode3;

        System.assertEquals(false, publicQrCode1.equals(publicQrCode3));
        System.assertEquals(false, publicQrCode2.equals(publicQrCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = new OASPublicQrCode();

        System.assertEquals(publicQrCode1.hashCode(), publicQrCode1.hashCode());
        System.assertEquals(publicQrCode2.hashCode(), publicQrCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicQrCode publicQrCode1 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode2 = OASPublicQrCode.getExample();
        OASPublicQrCode publicQrCode3 = new OASPublicQrCode();
        OASPublicQrCode publicQrCode4 = new OASPublicQrCode();

        System.assert(publicQrCode1.equals(publicQrCode2));
        System.assert(publicQrCode3.equals(publicQrCode4));
        System.assertEquals(publicQrCode1.hashCode(), publicQrCode2.hashCode());
        System.assertEquals(publicQrCode3.hashCode(), publicQrCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicQrCode publicQrCode = new OASPublicQrCode();
        Map<String, String> propertymappings = publicQrCode.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
        System.assertEquals('createdBy', propertymappings.get('created_by'));
        System.assertEquals('clientId', propertymappings.get('client_id'));
        System.assertEquals('isDeleted', propertymappings.get('is_deleted'));
        System.assertEquals('renderCustomizations', propertymappings.get('render_customizations'));
    }
}