@isTest
private class OASBitlySiteAppearanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = bitlySiteAppearance1;
        OASBitlySiteAppearance bitlySiteAppearance3 = new OASBitlySiteAppearance();
        OASBitlySiteAppearance bitlySiteAppearance4 = bitlySiteAppearance3;

        System.assert(bitlySiteAppearance1.equals(bitlySiteAppearance2));
        System.assert(bitlySiteAppearance2.equals(bitlySiteAppearance1));
        System.assert(bitlySiteAppearance1.equals(bitlySiteAppearance1));
        System.assert(bitlySiteAppearance3.equals(bitlySiteAppearance4));
        System.assert(bitlySiteAppearance4.equals(bitlySiteAppearance3));
        System.assert(bitlySiteAppearance3.equals(bitlySiteAppearance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance3 = new OASBitlySiteAppearance();
        OASBitlySiteAppearance bitlySiteAppearance4 = new OASBitlySiteAppearance();

        System.assert(bitlySiteAppearance1.equals(bitlySiteAppearance2));
        System.assert(bitlySiteAppearance2.equals(bitlySiteAppearance1));
        System.assert(bitlySiteAppearance3.equals(bitlySiteAppearance4));
        System.assert(bitlySiteAppearance4.equals(bitlySiteAppearance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = new OASBitlySiteAppearance();

        System.assertEquals(false, bitlySiteAppearance1.equals('foo'));
        System.assertEquals(false, bitlySiteAppearance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = new OASBitlySiteAppearance();
        OASBitlySiteAppearance bitlySiteAppearance3;

        System.assertEquals(false, bitlySiteAppearance1.equals(bitlySiteAppearance3));
        System.assertEquals(false, bitlySiteAppearance2.equals(bitlySiteAppearance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = new OASBitlySiteAppearance();

        System.assertEquals(bitlySiteAppearance1.hashCode(), bitlySiteAppearance1.hashCode());
        System.assertEquals(bitlySiteAppearance2.hashCode(), bitlySiteAppearance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySiteAppearance bitlySiteAppearance1 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance2 = OASBitlySiteAppearance.getExample();
        OASBitlySiteAppearance bitlySiteAppearance3 = new OASBitlySiteAppearance();
        OASBitlySiteAppearance bitlySiteAppearance4 = new OASBitlySiteAppearance();

        System.assert(bitlySiteAppearance1.equals(bitlySiteAppearance2));
        System.assert(bitlySiteAppearance3.equals(bitlySiteAppearance4));
        System.assertEquals(bitlySiteAppearance1.hashCode(), bitlySiteAppearance2.hashCode());
        System.assertEquals(bitlySiteAppearance3.hashCode(), bitlySiteAppearance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySiteAppearance bitlySiteAppearance = new OASBitlySiteAppearance();
        Map<String, String> propertymappings = bitlySiteAppearance.getPropertyMappings();
        System.assertEquals('layoutV2', propertymappings.get('layout_v2'));
        System.assertEquals('headerAppearance', propertymappings.get('header_appearance'));
        System.assertEquals('themeId', propertymappings.get('theme_id'));
        System.assertEquals('hideBitlyLogo', propertymappings.get('hide_bitly_logo'));
        System.assertEquals('stylePreference', propertymappings.get('style_preference'));
        System.assertEquals('backgroundColor', propertymappings.get('background_color'));
        System.assertEquals('bottomBackgroundColor', propertymappings.get('bottom_background_color'));
        System.assertEquals('textColor', propertymappings.get('text_color'));
        System.assertEquals('descriptionColor', propertymappings.get('description_color'));
        System.assertEquals('backgroundPreference', propertymappings.get('background_preference'));
        System.assertEquals('backgroundImageAlignment', propertymappings.get('background_image_alignment'));
        System.assertEquals('backgroundImageUrl', propertymappings.get('background_image_url'));
        System.assertEquals('backgroundImageGuid', propertymappings.get('background_image_guid'));
        System.assertEquals('avatarImageUrl', propertymappings.get('avatar_image_url'));
        System.assertEquals('avatarImageGuid', propertymappings.get('avatar_image_guid'));
        System.assertEquals('defaultButtonBackgroundColor', propertymappings.get('default_button_background_color'));
        System.assertEquals('defaultButtonTextColor', propertymappings.get('default_button_text_color'));
        System.assertEquals('defaultButtonShape', propertymappings.get('default_button_shape'));
        System.assertEquals('defaultButtonShadow', propertymappings.get('default_button_shadow'));
        System.assertEquals('defaultSocialIconColor', propertymappings.get('default_social_icon_color'));
        System.assertEquals('defaultSocialIconLayout', propertymappings.get('default_social_icon_layout'));
        System.assertEquals('defaultSocialIconPosition', propertymappings.get('default_social_icon_position'));
    }
}