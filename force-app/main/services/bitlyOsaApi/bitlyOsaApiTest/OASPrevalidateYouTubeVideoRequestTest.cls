@isTest
private class OASPrevalidateYouTubeVideoRequestTest {
    @isTest
    private static void equalsSameInstance() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = prevalidateYouTubeVideoRequest1;
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest3 = new OASPrevalidateYouTubeVideoRequest();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest4 = prevalidateYouTubeVideoRequest3;

        System.assert(prevalidateYouTubeVideoRequest1.equals(prevalidateYouTubeVideoRequest2));
        System.assert(prevalidateYouTubeVideoRequest2.equals(prevalidateYouTubeVideoRequest1));
        System.assert(prevalidateYouTubeVideoRequest1.equals(prevalidateYouTubeVideoRequest1));
        System.assert(prevalidateYouTubeVideoRequest3.equals(prevalidateYouTubeVideoRequest4));
        System.assert(prevalidateYouTubeVideoRequest4.equals(prevalidateYouTubeVideoRequest3));
        System.assert(prevalidateYouTubeVideoRequest3.equals(prevalidateYouTubeVideoRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest3 = new OASPrevalidateYouTubeVideoRequest();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest4 = new OASPrevalidateYouTubeVideoRequest();

        System.assert(prevalidateYouTubeVideoRequest1.equals(prevalidateYouTubeVideoRequest2));
        System.assert(prevalidateYouTubeVideoRequest2.equals(prevalidateYouTubeVideoRequest1));
        System.assert(prevalidateYouTubeVideoRequest3.equals(prevalidateYouTubeVideoRequest4));
        System.assert(prevalidateYouTubeVideoRequest4.equals(prevalidateYouTubeVideoRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = new OASPrevalidateYouTubeVideoRequest();

        System.assertEquals(false, prevalidateYouTubeVideoRequest1.equals('foo'));
        System.assertEquals(false, prevalidateYouTubeVideoRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = new OASPrevalidateYouTubeVideoRequest();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest3;

        System.assertEquals(false, prevalidateYouTubeVideoRequest1.equals(prevalidateYouTubeVideoRequest3));
        System.assertEquals(false, prevalidateYouTubeVideoRequest2.equals(prevalidateYouTubeVideoRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = new OASPrevalidateYouTubeVideoRequest();

        System.assertEquals(prevalidateYouTubeVideoRequest1.hashCode(), prevalidateYouTubeVideoRequest1.hashCode());
        System.assertEquals(prevalidateYouTubeVideoRequest2.hashCode(), prevalidateYouTubeVideoRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest1 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest2 = OASPrevalidateYouTubeVideoRequest.getExample();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest3 = new OASPrevalidateYouTubeVideoRequest();
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest4 = new OASPrevalidateYouTubeVideoRequest();

        System.assert(prevalidateYouTubeVideoRequest1.equals(prevalidateYouTubeVideoRequest2));
        System.assert(prevalidateYouTubeVideoRequest3.equals(prevalidateYouTubeVideoRequest4));
        System.assertEquals(prevalidateYouTubeVideoRequest1.hashCode(), prevalidateYouTubeVideoRequest2.hashCode());
        System.assertEquals(prevalidateYouTubeVideoRequest3.hashCode(), prevalidateYouTubeVideoRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPrevalidateYouTubeVideoRequest prevalidateYouTubeVideoRequest = new OASPrevalidateYouTubeVideoRequest();
        Map<String, String> propertymappings = prevalidateYouTubeVideoRequest.getPropertyMappings();
        System.assertEquals('videoId', propertymappings.get('video_id'));
    }
}