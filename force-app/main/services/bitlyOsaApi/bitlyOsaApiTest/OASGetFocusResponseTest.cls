@isTest
private class OASGetFocusResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = getFocusResponse1;
        OASGetFocusResponse getFocusResponse3 = new OASGetFocusResponse();
        OASGetFocusResponse getFocusResponse4 = getFocusResponse3;

        System.assert(getFocusResponse1.equals(getFocusResponse2));
        System.assert(getFocusResponse2.equals(getFocusResponse1));
        System.assert(getFocusResponse1.equals(getFocusResponse1));
        System.assert(getFocusResponse3.equals(getFocusResponse4));
        System.assert(getFocusResponse4.equals(getFocusResponse3));
        System.assert(getFocusResponse3.equals(getFocusResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse3 = new OASGetFocusResponse();
        OASGetFocusResponse getFocusResponse4 = new OASGetFocusResponse();

        System.assert(getFocusResponse1.equals(getFocusResponse2));
        System.assert(getFocusResponse2.equals(getFocusResponse1));
        System.assert(getFocusResponse3.equals(getFocusResponse4));
        System.assert(getFocusResponse4.equals(getFocusResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = new OASGetFocusResponse();

        System.assertEquals(false, getFocusResponse1.equals('foo'));
        System.assertEquals(false, getFocusResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = new OASGetFocusResponse();
        OASGetFocusResponse getFocusResponse3;

        System.assertEquals(false, getFocusResponse1.equals(getFocusResponse3));
        System.assertEquals(false, getFocusResponse2.equals(getFocusResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = new OASGetFocusResponse();

        System.assertEquals(getFocusResponse1.hashCode(), getFocusResponse1.hashCode());
        System.assertEquals(getFocusResponse2.hashCode(), getFocusResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGetFocusResponse getFocusResponse1 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse2 = OASGetFocusResponse.getExample();
        OASGetFocusResponse getFocusResponse3 = new OASGetFocusResponse();
        OASGetFocusResponse getFocusResponse4 = new OASGetFocusResponse();

        System.assert(getFocusResponse1.equals(getFocusResponse2));
        System.assert(getFocusResponse3.equals(getFocusResponse4));
        System.assertEquals(getFocusResponse1.hashCode(), getFocusResponse2.hashCode());
        System.assertEquals(getFocusResponse3.hashCode(), getFocusResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGetFocusResponse getFocusResponse = new OASGetFocusResponse();
        Map<String, String> propertymappings = getFocusResponse.getPropertyMappings();
        System.assertEquals('qrcodeId', propertymappings.get('qrcode_id'));
    }
}