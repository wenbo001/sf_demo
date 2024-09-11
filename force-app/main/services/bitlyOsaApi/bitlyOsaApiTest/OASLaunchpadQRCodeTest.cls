@isTest
private class OASLaunchpadQRCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = launchpadQRCode1;
        OASLaunchpadQRCode launchpadQRCode3 = new OASLaunchpadQRCode();
        OASLaunchpadQRCode launchpadQRCode4 = launchpadQRCode3;

        System.assert(launchpadQRCode1.equals(launchpadQRCode2));
        System.assert(launchpadQRCode2.equals(launchpadQRCode1));
        System.assert(launchpadQRCode1.equals(launchpadQRCode1));
        System.assert(launchpadQRCode3.equals(launchpadQRCode4));
        System.assert(launchpadQRCode4.equals(launchpadQRCode3));
        System.assert(launchpadQRCode3.equals(launchpadQRCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode3 = new OASLaunchpadQRCode();
        OASLaunchpadQRCode launchpadQRCode4 = new OASLaunchpadQRCode();

        System.assert(launchpadQRCode1.equals(launchpadQRCode2));
        System.assert(launchpadQRCode2.equals(launchpadQRCode1));
        System.assert(launchpadQRCode3.equals(launchpadQRCode4));
        System.assert(launchpadQRCode4.equals(launchpadQRCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = new OASLaunchpadQRCode();

        System.assertEquals(false, launchpadQRCode1.equals('foo'));
        System.assertEquals(false, launchpadQRCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = new OASLaunchpadQRCode();
        OASLaunchpadQRCode launchpadQRCode3;

        System.assertEquals(false, launchpadQRCode1.equals(launchpadQRCode3));
        System.assertEquals(false, launchpadQRCode2.equals(launchpadQRCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = new OASLaunchpadQRCode();

        System.assertEquals(launchpadQRCode1.hashCode(), launchpadQRCode1.hashCode());
        System.assertEquals(launchpadQRCode2.hashCode(), launchpadQRCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadQRCode launchpadQRCode1 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode2 = OASLaunchpadQRCode.getExample();
        OASLaunchpadQRCode launchpadQRCode3 = new OASLaunchpadQRCode();
        OASLaunchpadQRCode launchpadQRCode4 = new OASLaunchpadQRCode();

        System.assert(launchpadQRCode1.equals(launchpadQRCode2));
        System.assert(launchpadQRCode3.equals(launchpadQRCode4));
        System.assertEquals(launchpadQRCode1.hashCode(), launchpadQRCode2.hashCode());
        System.assertEquals(launchpadQRCode3.hashCode(), launchpadQRCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadQRCode launchpadQRCode = new OASLaunchpadQRCode();
        Map<String, String> propertymappings = launchpadQRCode.getPropertyMappings();
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('qrCode', propertymappings.get('qr_code'));
        System.assertEquals('qrCodeId', propertymappings.get('qr_code_id'));
    }
}