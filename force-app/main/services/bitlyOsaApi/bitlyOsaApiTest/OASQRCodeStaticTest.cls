@isTest
private class OASQRCodeStaticTest {
    @isTest
    private static void equalsSameInstance() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = qrCodeStatic1;
        OASQRCodeStatic qrCodeStatic3 = new OASQRCodeStatic();
        OASQRCodeStatic qrCodeStatic4 = qrCodeStatic3;

        System.assert(qrCodeStatic1.equals(qrCodeStatic2));
        System.assert(qrCodeStatic2.equals(qrCodeStatic1));
        System.assert(qrCodeStatic1.equals(qrCodeStatic1));
        System.assert(qrCodeStatic3.equals(qrCodeStatic4));
        System.assert(qrCodeStatic4.equals(qrCodeStatic3));
        System.assert(qrCodeStatic3.equals(qrCodeStatic3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic3 = new OASQRCodeStatic();
        OASQRCodeStatic qrCodeStatic4 = new OASQRCodeStatic();

        System.assert(qrCodeStatic1.equals(qrCodeStatic2));
        System.assert(qrCodeStatic2.equals(qrCodeStatic1));
        System.assert(qrCodeStatic3.equals(qrCodeStatic4));
        System.assert(qrCodeStatic4.equals(qrCodeStatic3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = new OASQRCodeStatic();

        System.assertEquals(false, qrCodeStatic1.equals('foo'));
        System.assertEquals(false, qrCodeStatic2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = new OASQRCodeStatic();
        OASQRCodeStatic qrCodeStatic3;

        System.assertEquals(false, qrCodeStatic1.equals(qrCodeStatic3));
        System.assertEquals(false, qrCodeStatic2.equals(qrCodeStatic3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = new OASQRCodeStatic();

        System.assertEquals(qrCodeStatic1.hashCode(), qrCodeStatic1.hashCode());
        System.assertEquals(qrCodeStatic2.hashCode(), qrCodeStatic2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQRCodeStatic qrCodeStatic1 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic2 = OASQRCodeStatic.getExample();
        OASQRCodeStatic qrCodeStatic3 = new OASQRCodeStatic();
        OASQRCodeStatic qrCodeStatic4 = new OASQRCodeStatic();

        System.assert(qrCodeStatic1.equals(qrCodeStatic2));
        System.assert(qrCodeStatic3.equals(qrCodeStatic4));
        System.assertEquals(qrCodeStatic1.hashCode(), qrCodeStatic2.hashCode());
        System.assertEquals(qrCodeStatic3.hashCode(), qrCodeStatic4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQRCodeStatic qrCodeStatic = new OASQRCodeStatic();
        Map<String, String> propertymappings = qrCodeStatic.getPropertyMappings();
        System.assertEquals('staticType', propertymappings.get('static_type'));
        System.assertEquals('vCard', propertymappings.get('v_card'));
    }
}