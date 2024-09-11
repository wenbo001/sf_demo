@isTest
private class OASYoutubeVideoRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = youtubeVideoRequest1;
        OASYoutubeVideoRequest youtubeVideoRequest3 = new OASYoutubeVideoRequest();
        OASYoutubeVideoRequest youtubeVideoRequest4 = youtubeVideoRequest3;

        System.assert(youtubeVideoRequest1.equals(youtubeVideoRequest2));
        System.assert(youtubeVideoRequest2.equals(youtubeVideoRequest1));
        System.assert(youtubeVideoRequest1.equals(youtubeVideoRequest1));
        System.assert(youtubeVideoRequest3.equals(youtubeVideoRequest4));
        System.assert(youtubeVideoRequest4.equals(youtubeVideoRequest3));
        System.assert(youtubeVideoRequest3.equals(youtubeVideoRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest3 = new OASYoutubeVideoRequest();
        OASYoutubeVideoRequest youtubeVideoRequest4 = new OASYoutubeVideoRequest();

        System.assert(youtubeVideoRequest1.equals(youtubeVideoRequest2));
        System.assert(youtubeVideoRequest2.equals(youtubeVideoRequest1));
        System.assert(youtubeVideoRequest3.equals(youtubeVideoRequest4));
        System.assert(youtubeVideoRequest4.equals(youtubeVideoRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = new OASYoutubeVideoRequest();

        System.assertEquals(false, youtubeVideoRequest1.equals('foo'));
        System.assertEquals(false, youtubeVideoRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = new OASYoutubeVideoRequest();
        OASYoutubeVideoRequest youtubeVideoRequest3;

        System.assertEquals(false, youtubeVideoRequest1.equals(youtubeVideoRequest3));
        System.assertEquals(false, youtubeVideoRequest2.equals(youtubeVideoRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = new OASYoutubeVideoRequest();

        System.assertEquals(youtubeVideoRequest1.hashCode(), youtubeVideoRequest1.hashCode());
        System.assertEquals(youtubeVideoRequest2.hashCode(), youtubeVideoRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASYoutubeVideoRequest youtubeVideoRequest1 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest2 = OASYoutubeVideoRequest.getExample();
        OASYoutubeVideoRequest youtubeVideoRequest3 = new OASYoutubeVideoRequest();
        OASYoutubeVideoRequest youtubeVideoRequest4 = new OASYoutubeVideoRequest();

        System.assert(youtubeVideoRequest1.equals(youtubeVideoRequest2));
        System.assert(youtubeVideoRequest3.equals(youtubeVideoRequest4));
        System.assertEquals(youtubeVideoRequest1.hashCode(), youtubeVideoRequest2.hashCode());
        System.assertEquals(youtubeVideoRequest3.hashCode(), youtubeVideoRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASYoutubeVideoRequest youtubeVideoRequest = new OASYoutubeVideoRequest();
        Map<String, String> propertymappings = youtubeVideoRequest.getPropertyMappings();
        System.assertEquals('videoUrl', propertymappings.get('video_url'));
        System.assertEquals('thumbnailUrl', propertymappings.get('thumbnail_url'));
        System.assertEquals('linkTitle', propertymappings.get('link_title'));
    }
}