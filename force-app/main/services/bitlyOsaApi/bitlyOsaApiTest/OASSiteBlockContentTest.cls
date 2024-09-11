@isTest
private class OASSiteBlockContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = siteBlockContent1;
        OASSiteBlockContent siteBlockContent3 = new OASSiteBlockContent();
        OASSiteBlockContent siteBlockContent4 = siteBlockContent3;

        System.assert(siteBlockContent1.equals(siteBlockContent2));
        System.assert(siteBlockContent2.equals(siteBlockContent1));
        System.assert(siteBlockContent1.equals(siteBlockContent1));
        System.assert(siteBlockContent3.equals(siteBlockContent4));
        System.assert(siteBlockContent4.equals(siteBlockContent3));
        System.assert(siteBlockContent3.equals(siteBlockContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent3 = new OASSiteBlockContent();
        OASSiteBlockContent siteBlockContent4 = new OASSiteBlockContent();

        System.assert(siteBlockContent1.equals(siteBlockContent2));
        System.assert(siteBlockContent2.equals(siteBlockContent1));
        System.assert(siteBlockContent3.equals(siteBlockContent4));
        System.assert(siteBlockContent4.equals(siteBlockContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = new OASSiteBlockContent();

        System.assertEquals(false, siteBlockContent1.equals('foo'));
        System.assertEquals(false, siteBlockContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = new OASSiteBlockContent();
        OASSiteBlockContent siteBlockContent3;

        System.assertEquals(false, siteBlockContent1.equals(siteBlockContent3));
        System.assertEquals(false, siteBlockContent2.equals(siteBlockContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = new OASSiteBlockContent();

        System.assertEquals(siteBlockContent1.hashCode(), siteBlockContent1.hashCode());
        System.assertEquals(siteBlockContent2.hashCode(), siteBlockContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSiteBlockContent siteBlockContent1 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent2 = OASSiteBlockContent.getExample();
        OASSiteBlockContent siteBlockContent3 = new OASSiteBlockContent();
        OASSiteBlockContent siteBlockContent4 = new OASSiteBlockContent();

        System.assert(siteBlockContent1.equals(siteBlockContent2));
        System.assert(siteBlockContent3.equals(siteBlockContent4));
        System.assertEquals(siteBlockContent1.hashCode(), siteBlockContent2.hashCode());
        System.assertEquals(siteBlockContent3.hashCode(), siteBlockContent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSiteBlockContent siteBlockContent = new OASSiteBlockContent();
        Map<String, String> propertymappings = siteBlockContent.getPropertyMappings();
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
        System.assertEquals('imageGuid', propertymappings.get('image_guid'));
        System.assertEquals('imageUrl', propertymappings.get('image_url'));
        System.assertEquals('aspectRatio', propertymappings.get('aspect_ratio'));
        System.assertEquals('thumbnailUrl', propertymappings.get('thumbnail_url'));
        System.assertEquals('channelUrl', propertymappings.get('channel_url'));
    }
}