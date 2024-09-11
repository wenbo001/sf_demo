@isTest
private class OASSiteCloneRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = siteCloneRequest1;
        OASSiteCloneRequest siteCloneRequest3 = new OASSiteCloneRequest();
        OASSiteCloneRequest siteCloneRequest4 = siteCloneRequest3;

        System.assert(siteCloneRequest1.equals(siteCloneRequest2));
        System.assert(siteCloneRequest2.equals(siteCloneRequest1));
        System.assert(siteCloneRequest1.equals(siteCloneRequest1));
        System.assert(siteCloneRequest3.equals(siteCloneRequest4));
        System.assert(siteCloneRequest4.equals(siteCloneRequest3));
        System.assert(siteCloneRequest3.equals(siteCloneRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest3 = new OASSiteCloneRequest();
        OASSiteCloneRequest siteCloneRequest4 = new OASSiteCloneRequest();

        System.assert(siteCloneRequest1.equals(siteCloneRequest2));
        System.assert(siteCloneRequest2.equals(siteCloneRequest1));
        System.assert(siteCloneRequest3.equals(siteCloneRequest4));
        System.assert(siteCloneRequest4.equals(siteCloneRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = new OASSiteCloneRequest();

        System.assertEquals(false, siteCloneRequest1.equals('foo'));
        System.assertEquals(false, siteCloneRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = new OASSiteCloneRequest();
        OASSiteCloneRequest siteCloneRequest3;

        System.assertEquals(false, siteCloneRequest1.equals(siteCloneRequest3));
        System.assertEquals(false, siteCloneRequest2.equals(siteCloneRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = new OASSiteCloneRequest();

        System.assertEquals(siteCloneRequest1.hashCode(), siteCloneRequest1.hashCode());
        System.assertEquals(siteCloneRequest2.hashCode(), siteCloneRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteCloneRequest siteCloneRequest1 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest2 = OASSiteCloneRequest.getExample();
        OASSiteCloneRequest siteCloneRequest3 = new OASSiteCloneRequest();
        OASSiteCloneRequest siteCloneRequest4 = new OASSiteCloneRequest();

        System.assert(siteCloneRequest1.equals(siteCloneRequest2));
        System.assert(siteCloneRequest3.equals(siteCloneRequest4));
        System.assertEquals(siteCloneRequest1.hashCode(), siteCloneRequest2.hashCode());
        System.assertEquals(siteCloneRequest3.hashCode(), siteCloneRequest4.hashCode());
    }
}