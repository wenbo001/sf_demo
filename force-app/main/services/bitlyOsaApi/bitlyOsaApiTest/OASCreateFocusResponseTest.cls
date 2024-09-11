@isTest
private class OASCreateFocusResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = createFocusResponse1;
        OASCreateFocusResponse createFocusResponse3 = new OASCreateFocusResponse();
        OASCreateFocusResponse createFocusResponse4 = createFocusResponse3;

        System.assert(createFocusResponse1.equals(createFocusResponse2));
        System.assert(createFocusResponse2.equals(createFocusResponse1));
        System.assert(createFocusResponse1.equals(createFocusResponse1));
        System.assert(createFocusResponse3.equals(createFocusResponse4));
        System.assert(createFocusResponse4.equals(createFocusResponse3));
        System.assert(createFocusResponse3.equals(createFocusResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse3 = new OASCreateFocusResponse();
        OASCreateFocusResponse createFocusResponse4 = new OASCreateFocusResponse();

        System.assert(createFocusResponse1.equals(createFocusResponse2));
        System.assert(createFocusResponse2.equals(createFocusResponse1));
        System.assert(createFocusResponse3.equals(createFocusResponse4));
        System.assert(createFocusResponse4.equals(createFocusResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = new OASCreateFocusResponse();

        System.assertEquals(false, createFocusResponse1.equals('foo'));
        System.assertEquals(false, createFocusResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = new OASCreateFocusResponse();
        OASCreateFocusResponse createFocusResponse3;

        System.assertEquals(false, createFocusResponse1.equals(createFocusResponse3));
        System.assertEquals(false, createFocusResponse2.equals(createFocusResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = new OASCreateFocusResponse();

        System.assertEquals(createFocusResponse1.hashCode(), createFocusResponse1.hashCode());
        System.assertEquals(createFocusResponse2.hashCode(), createFocusResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateFocusResponse createFocusResponse1 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse2 = OASCreateFocusResponse.getExample();
        OASCreateFocusResponse createFocusResponse3 = new OASCreateFocusResponse();
        OASCreateFocusResponse createFocusResponse4 = new OASCreateFocusResponse();

        System.assert(createFocusResponse1.equals(createFocusResponse2));
        System.assert(createFocusResponse3.equals(createFocusResponse4));
        System.assertEquals(createFocusResponse1.hashCode(), createFocusResponse2.hashCode());
        System.assertEquals(createFocusResponse3.hashCode(), createFocusResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateFocusResponse createFocusResponse = new OASCreateFocusResponse();
        Map<String, String> propertymappings = createFocusResponse.getPropertyMappings();
        System.assertEquals('continueUrl', propertymappings.get('continue_url'));
    }
}