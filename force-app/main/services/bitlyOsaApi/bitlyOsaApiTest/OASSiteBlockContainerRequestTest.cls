@isTest
private class OASSiteBlockContainerRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = siteBlockContainerRequest1;
        OASSiteBlockContainerRequest siteBlockContainerRequest3 = new OASSiteBlockContainerRequest();
        OASSiteBlockContainerRequest siteBlockContainerRequest4 = siteBlockContainerRequest3;

        System.assert(siteBlockContainerRequest1.equals(siteBlockContainerRequest2));
        System.assert(siteBlockContainerRequest2.equals(siteBlockContainerRequest1));
        System.assert(siteBlockContainerRequest1.equals(siteBlockContainerRequest1));
        System.assert(siteBlockContainerRequest3.equals(siteBlockContainerRequest4));
        System.assert(siteBlockContainerRequest4.equals(siteBlockContainerRequest3));
        System.assert(siteBlockContainerRequest3.equals(siteBlockContainerRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest3 = new OASSiteBlockContainerRequest();
        OASSiteBlockContainerRequest siteBlockContainerRequest4 = new OASSiteBlockContainerRequest();

        System.assert(siteBlockContainerRequest1.equals(siteBlockContainerRequest2));
        System.assert(siteBlockContainerRequest2.equals(siteBlockContainerRequest1));
        System.assert(siteBlockContainerRequest3.equals(siteBlockContainerRequest4));
        System.assert(siteBlockContainerRequest4.equals(siteBlockContainerRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = new OASSiteBlockContainerRequest();

        System.assertEquals(false, siteBlockContainerRequest1.equals('foo'));
        System.assertEquals(false, siteBlockContainerRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = new OASSiteBlockContainerRequest();
        OASSiteBlockContainerRequest siteBlockContainerRequest3;

        System.assertEquals(false, siteBlockContainerRequest1.equals(siteBlockContainerRequest3));
        System.assertEquals(false, siteBlockContainerRequest2.equals(siteBlockContainerRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = new OASSiteBlockContainerRequest();

        System.assertEquals(siteBlockContainerRequest1.hashCode(), siteBlockContainerRequest1.hashCode());
        System.assertEquals(siteBlockContainerRequest2.hashCode(), siteBlockContainerRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteBlockContainerRequest siteBlockContainerRequest1 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest2 = OASSiteBlockContainerRequest.getExample();
        OASSiteBlockContainerRequest siteBlockContainerRequest3 = new OASSiteBlockContainerRequest();
        OASSiteBlockContainerRequest siteBlockContainerRequest4 = new OASSiteBlockContainerRequest();

        System.assert(siteBlockContainerRequest1.equals(siteBlockContainerRequest2));
        System.assert(siteBlockContainerRequest3.equals(siteBlockContainerRequest4));
        System.assertEquals(siteBlockContainerRequest1.hashCode(), siteBlockContainerRequest2.hashCode());
        System.assertEquals(siteBlockContainerRequest3.hashCode(), siteBlockContainerRequest4.hashCode());
    }
}