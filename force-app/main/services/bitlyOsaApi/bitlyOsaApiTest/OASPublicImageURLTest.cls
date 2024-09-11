@isTest
private class OASPublicImageURLTest {
    @isTest
    private static void equalsSameInstance() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = publicImageURL1;
        OASPublicImageURL publicImageURL3 = new OASPublicImageURL();
        OASPublicImageURL publicImageURL4 = publicImageURL3;

        System.assert(publicImageURL1.equals(publicImageURL2));
        System.assert(publicImageURL2.equals(publicImageURL1));
        System.assert(publicImageURL1.equals(publicImageURL1));
        System.assert(publicImageURL3.equals(publicImageURL4));
        System.assert(publicImageURL4.equals(publicImageURL3));
        System.assert(publicImageURL3.equals(publicImageURL3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL3 = new OASPublicImageURL();
        OASPublicImageURL publicImageURL4 = new OASPublicImageURL();

        System.assert(publicImageURL1.equals(publicImageURL2));
        System.assert(publicImageURL2.equals(publicImageURL1));
        System.assert(publicImageURL3.equals(publicImageURL4));
        System.assert(publicImageURL4.equals(publicImageURL3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = new OASPublicImageURL();

        System.assertEquals(false, publicImageURL1.equals('foo'));
        System.assertEquals(false, publicImageURL2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = new OASPublicImageURL();
        OASPublicImageURL publicImageURL3;

        System.assertEquals(false, publicImageURL1.equals(publicImageURL3));
        System.assertEquals(false, publicImageURL2.equals(publicImageURL3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = new OASPublicImageURL();

        System.assertEquals(publicImageURL1.hashCode(), publicImageURL1.hashCode());
        System.assertEquals(publicImageURL2.hashCode(), publicImageURL2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPublicImageURL publicImageURL1 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL2 = OASPublicImageURL.getExample();
        OASPublicImageURL publicImageURL3 = new OASPublicImageURL();
        OASPublicImageURL publicImageURL4 = new OASPublicImageURL();

        System.assert(publicImageURL1.equals(publicImageURL2));
        System.assert(publicImageURL3.equals(publicImageURL4));
        System.assertEquals(publicImageURL1.hashCode(), publicImageURL2.hashCode());
        System.assertEquals(publicImageURL3.hashCode(), publicImageURL4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPublicImageURL publicImageURL = new OASPublicImageURL();
        Map<String, String> propertymappings = publicImageURL.getPropertyMappings();
        System.assertEquals('publicImageUrl', propertymappings.get('public_image_url'));
    }
}