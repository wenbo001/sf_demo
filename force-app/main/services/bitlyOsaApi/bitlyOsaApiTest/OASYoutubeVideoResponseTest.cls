@isTest
private class OASYoutubeVideoResponseTest {
    @isTest
    private static void equalsSameInstance() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = youtubeVideoResponse1;
        OASYoutubeVideoResponse youtubeVideoResponse3 = new OASYoutubeVideoResponse();
        OASYoutubeVideoResponse youtubeVideoResponse4 = youtubeVideoResponse3;

        System.assert(youtubeVideoResponse1.equals(youtubeVideoResponse2));
        System.assert(youtubeVideoResponse2.equals(youtubeVideoResponse1));
        System.assert(youtubeVideoResponse1.equals(youtubeVideoResponse1));
        System.assert(youtubeVideoResponse3.equals(youtubeVideoResponse4));
        System.assert(youtubeVideoResponse4.equals(youtubeVideoResponse3));
        System.assert(youtubeVideoResponse3.equals(youtubeVideoResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse3 = new OASYoutubeVideoResponse();
        OASYoutubeVideoResponse youtubeVideoResponse4 = new OASYoutubeVideoResponse();

        System.assert(youtubeVideoResponse1.equals(youtubeVideoResponse2));
        System.assert(youtubeVideoResponse2.equals(youtubeVideoResponse1));
        System.assert(youtubeVideoResponse3.equals(youtubeVideoResponse4));
        System.assert(youtubeVideoResponse4.equals(youtubeVideoResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = new OASYoutubeVideoResponse();

        System.assertEquals(false, youtubeVideoResponse1.equals('foo'));
        System.assertEquals(false, youtubeVideoResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = new OASYoutubeVideoResponse();
        OASYoutubeVideoResponse youtubeVideoResponse3;

        System.assertEquals(false, youtubeVideoResponse1.equals(youtubeVideoResponse3));
        System.assertEquals(false, youtubeVideoResponse2.equals(youtubeVideoResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = new OASYoutubeVideoResponse();

        System.assertEquals(youtubeVideoResponse1.hashCode(), youtubeVideoResponse1.hashCode());
        System.assertEquals(youtubeVideoResponse2.hashCode(), youtubeVideoResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASYoutubeVideoResponse youtubeVideoResponse1 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse2 = OASYoutubeVideoResponse.getExample();
        OASYoutubeVideoResponse youtubeVideoResponse3 = new OASYoutubeVideoResponse();
        OASYoutubeVideoResponse youtubeVideoResponse4 = new OASYoutubeVideoResponse();

        System.assert(youtubeVideoResponse1.equals(youtubeVideoResponse2));
        System.assert(youtubeVideoResponse3.equals(youtubeVideoResponse4));
        System.assertEquals(youtubeVideoResponse1.hashCode(), youtubeVideoResponse2.hashCode());
        System.assertEquals(youtubeVideoResponse3.hashCode(), youtubeVideoResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASYoutubeVideoResponse youtubeVideoResponse = new OASYoutubeVideoResponse();
        Map<String, String> propertymappings = youtubeVideoResponse.getPropertyMappings();
        System.assertEquals('videoUrl', propertymappings.get('video_url'));
        System.assertEquals('thumbnailUrl', propertymappings.get('thumbnail_url'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}