@isTest
private class OASLinkDeletionResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = linkDeletionResponse1;
        OASLinkDeletionResponse linkDeletionResponse3 = new OASLinkDeletionResponse();
        OASLinkDeletionResponse linkDeletionResponse4 = linkDeletionResponse3;

        System.assert(linkDeletionResponse1.equals(linkDeletionResponse2));
        System.assert(linkDeletionResponse2.equals(linkDeletionResponse1));
        System.assert(linkDeletionResponse1.equals(linkDeletionResponse1));
        System.assert(linkDeletionResponse3.equals(linkDeletionResponse4));
        System.assert(linkDeletionResponse4.equals(linkDeletionResponse3));
        System.assert(linkDeletionResponse3.equals(linkDeletionResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse3 = new OASLinkDeletionResponse();
        OASLinkDeletionResponse linkDeletionResponse4 = new OASLinkDeletionResponse();

        System.assert(linkDeletionResponse1.equals(linkDeletionResponse2));
        System.assert(linkDeletionResponse2.equals(linkDeletionResponse1));
        System.assert(linkDeletionResponse3.equals(linkDeletionResponse4));
        System.assert(linkDeletionResponse4.equals(linkDeletionResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = new OASLinkDeletionResponse();

        System.assertEquals(false, linkDeletionResponse1.equals('foo'));
        System.assertEquals(false, linkDeletionResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = new OASLinkDeletionResponse();
        OASLinkDeletionResponse linkDeletionResponse3;

        System.assertEquals(false, linkDeletionResponse1.equals(linkDeletionResponse3));
        System.assertEquals(false, linkDeletionResponse2.equals(linkDeletionResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = new OASLinkDeletionResponse();

        System.assertEquals(linkDeletionResponse1.hashCode(), linkDeletionResponse1.hashCode());
        System.assertEquals(linkDeletionResponse2.hashCode(), linkDeletionResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLinkDeletionResponse linkDeletionResponse1 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse2 = OASLinkDeletionResponse.getExample();
        OASLinkDeletionResponse linkDeletionResponse3 = new OASLinkDeletionResponse();
        OASLinkDeletionResponse linkDeletionResponse4 = new OASLinkDeletionResponse();

        System.assert(linkDeletionResponse1.equals(linkDeletionResponse2));
        System.assert(linkDeletionResponse3.equals(linkDeletionResponse4));
        System.assertEquals(linkDeletionResponse1.hashCode(), linkDeletionResponse2.hashCode());
        System.assertEquals(linkDeletionResponse3.hashCode(), linkDeletionResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLinkDeletionResponse linkDeletionResponse = new OASLinkDeletionResponse();
        Map<String, String> propertymappings = linkDeletionResponse.getPropertyMappings();
        System.assertEquals('linksDeleted', propertymappings.get('links_deleted'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLinkDeletionResponse linkDeletionResponse = new OASLinkDeletionResponse();
        System.assertEquals(new List<OASDeletedLink>(), linkDeletionResponse.linksDeleted);
    }
}