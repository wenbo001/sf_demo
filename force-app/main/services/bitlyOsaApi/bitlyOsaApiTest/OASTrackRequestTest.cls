@isTest
private class OASTrackRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = trackRequest1;
        OASTrackRequest trackRequest3 = new OASTrackRequest();
        OASTrackRequest trackRequest4 = trackRequest3;

        System.assert(trackRequest1.equals(trackRequest2));
        System.assert(trackRequest2.equals(trackRequest1));
        System.assert(trackRequest1.equals(trackRequest1));
        System.assert(trackRequest3.equals(trackRequest4));
        System.assert(trackRequest4.equals(trackRequest3));
        System.assert(trackRequest3.equals(trackRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest3 = new OASTrackRequest();
        OASTrackRequest trackRequest4 = new OASTrackRequest();

        System.assert(trackRequest1.equals(trackRequest2));
        System.assert(trackRequest2.equals(trackRequest1));
        System.assert(trackRequest3.equals(trackRequest4));
        System.assert(trackRequest4.equals(trackRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = new OASTrackRequest();

        System.assertEquals(false, trackRequest1.equals('foo'));
        System.assertEquals(false, trackRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = new OASTrackRequest();
        OASTrackRequest trackRequest3;

        System.assertEquals(false, trackRequest1.equals(trackRequest3));
        System.assertEquals(false, trackRequest2.equals(trackRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = new OASTrackRequest();

        System.assertEquals(trackRequest1.hashCode(), trackRequest1.hashCode());
        System.assertEquals(trackRequest2.hashCode(), trackRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTrackRequest trackRequest1 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest2 = OASTrackRequest.getExample();
        OASTrackRequest trackRequest3 = new OASTrackRequest();
        OASTrackRequest trackRequest4 = new OASTrackRequest();

        System.assert(trackRequest1.equals(trackRequest2));
        System.assert(trackRequest3.equals(trackRequest4));
        System.assertEquals(trackRequest1.hashCode(), trackRequest2.hashCode());
        System.assertEquals(trackRequest3.hashCode(), trackRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTrackRequest trackRequest = new OASTrackRequest();
        Map<String, String> propertymappings = trackRequest.getPropertyMappings();
        System.assertEquals('eventKey', propertymappings.get('event_key'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
    }
}