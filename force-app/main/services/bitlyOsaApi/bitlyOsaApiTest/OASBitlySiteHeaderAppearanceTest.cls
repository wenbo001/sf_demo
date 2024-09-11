@isTest
private class OASBitlySiteHeaderAppearanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = bitlySiteHeaderAppearance1;
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance3 = new OASBitlySiteHeaderAppearance();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance4 = bitlySiteHeaderAppearance3;

        System.assert(bitlySiteHeaderAppearance1.equals(bitlySiteHeaderAppearance2));
        System.assert(bitlySiteHeaderAppearance2.equals(bitlySiteHeaderAppearance1));
        System.assert(bitlySiteHeaderAppearance1.equals(bitlySiteHeaderAppearance1));
        System.assert(bitlySiteHeaderAppearance3.equals(bitlySiteHeaderAppearance4));
        System.assert(bitlySiteHeaderAppearance4.equals(bitlySiteHeaderAppearance3));
        System.assert(bitlySiteHeaderAppearance3.equals(bitlySiteHeaderAppearance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance3 = new OASBitlySiteHeaderAppearance();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance4 = new OASBitlySiteHeaderAppearance();

        System.assert(bitlySiteHeaderAppearance1.equals(bitlySiteHeaderAppearance2));
        System.assert(bitlySiteHeaderAppearance2.equals(bitlySiteHeaderAppearance1));
        System.assert(bitlySiteHeaderAppearance3.equals(bitlySiteHeaderAppearance4));
        System.assert(bitlySiteHeaderAppearance4.equals(bitlySiteHeaderAppearance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = new OASBitlySiteHeaderAppearance();

        System.assertEquals(false, bitlySiteHeaderAppearance1.equals('foo'));
        System.assertEquals(false, bitlySiteHeaderAppearance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = new OASBitlySiteHeaderAppearance();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance3;

        System.assertEquals(false, bitlySiteHeaderAppearance1.equals(bitlySiteHeaderAppearance3));
        System.assertEquals(false, bitlySiteHeaderAppearance2.equals(bitlySiteHeaderAppearance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = new OASBitlySiteHeaderAppearance();

        System.assertEquals(bitlySiteHeaderAppearance1.hashCode(), bitlySiteHeaderAppearance1.hashCode());
        System.assertEquals(bitlySiteHeaderAppearance2.hashCode(), bitlySiteHeaderAppearance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance1 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance2 = OASBitlySiteHeaderAppearance.getExample();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance3 = new OASBitlySiteHeaderAppearance();
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance4 = new OASBitlySiteHeaderAppearance();

        System.assert(bitlySiteHeaderAppearance1.equals(bitlySiteHeaderAppearance2));
        System.assert(bitlySiteHeaderAppearance3.equals(bitlySiteHeaderAppearance4));
        System.assertEquals(bitlySiteHeaderAppearance1.hashCode(), bitlySiteHeaderAppearance2.hashCode());
        System.assertEquals(bitlySiteHeaderAppearance3.hashCode(), bitlySiteHeaderAppearance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySiteHeaderAppearance bitlySiteHeaderAppearance = new OASBitlySiteHeaderAppearance();
        Map<String, String> propertymappings = bitlySiteHeaderAppearance.getPropertyMappings();
        System.assertEquals('bannerType', propertymappings.get('banner_type'));
        System.assertEquals('profileImageSize', propertymappings.get('profile_image_size'));
        System.assertEquals('profileImageShape', propertymappings.get('profile_image_shape'));
        System.assertEquals('profileImageBorderSize', propertymappings.get('profile_image_border_size'));
        System.assertEquals('profileImageType', propertymappings.get('profile_image_type'));
        System.assertEquals('profileImageLocation', propertymappings.get('profile_image_location'));
        System.assertEquals('profileImageOverflow', propertymappings.get('profile_image_overflow'));
        System.assertEquals('textLocation', propertymappings.get('text_location'));
        System.assertEquals('titleSize', propertymappings.get('title_size'));
        System.assertEquals('titleAlignment', propertymappings.get('title_alignment'));
        System.assertEquals('titleWeight', propertymappings.get('title_weight'));
        System.assertEquals('titleBorderType', propertymappings.get('title_border_type'));
        System.assertEquals('descriptionSize', propertymappings.get('description_size'));
        System.assertEquals('descriptionAlignment', propertymappings.get('description_alignment'));
        System.assertEquals('descriptionWeight', propertymappings.get('description_weight'));
        System.assertEquals('descriptionBorderType', propertymappings.get('description_border_type'));
        System.assertEquals('headerBackgroundColor', propertymappings.get('header_background_color'));
        System.assertEquals('bannerImageUrl', propertymappings.get('banner_image_url'));
        System.assertEquals('headerStylePreference', propertymappings.get('header_style_preference'));
        System.assertEquals('bannerImageAlignment', propertymappings.get('banner_image_alignment'));
    }
}