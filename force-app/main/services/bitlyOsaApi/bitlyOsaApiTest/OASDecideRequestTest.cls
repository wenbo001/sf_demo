@isTest
private class OASDecideRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = decideRequest1;
        OASDecideRequest decideRequest3 = new OASDecideRequest();
        OASDecideRequest decideRequest4 = decideRequest3;

        System.assert(decideRequest1.equals(decideRequest2));
        System.assert(decideRequest2.equals(decideRequest1));
        System.assert(decideRequest1.equals(decideRequest1));
        System.assert(decideRequest3.equals(decideRequest4));
        System.assert(decideRequest4.equals(decideRequest3));
        System.assert(decideRequest3.equals(decideRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest3 = new OASDecideRequest();
        OASDecideRequest decideRequest4 = new OASDecideRequest();

        System.assert(decideRequest1.equals(decideRequest2));
        System.assert(decideRequest2.equals(decideRequest1));
        System.assert(decideRequest3.equals(decideRequest4));
        System.assert(decideRequest4.equals(decideRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = new OASDecideRequest();

        System.assertEquals(false, decideRequest1.equals('foo'));
        System.assertEquals(false, decideRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = new OASDecideRequest();
        OASDecideRequest decideRequest3;

        System.assertEquals(false, decideRequest1.equals(decideRequest3));
        System.assertEquals(false, decideRequest2.equals(decideRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = new OASDecideRequest();

        System.assertEquals(decideRequest1.hashCode(), decideRequest1.hashCode());
        System.assertEquals(decideRequest2.hashCode(), decideRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASDecideRequest decideRequest1 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest2 = OASDecideRequest.getExample();
        OASDecideRequest decideRequest3 = new OASDecideRequest();
        OASDecideRequest decideRequest4 = new OASDecideRequest();

        System.assert(decideRequest1.equals(decideRequest2));
        System.assert(decideRequest3.equals(decideRequest4));
        System.assertEquals(decideRequest1.hashCode(), decideRequest2.hashCode());
        System.assertEquals(decideRequest3.hashCode(), decideRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASDecideRequest decideRequest = new OASDecideRequest();
        Map<String, String> propertymappings = decideRequest.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}