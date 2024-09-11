@isTest
private class OASLaunchpadAppearanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = launchpadAppearance1;
        OASLaunchpadAppearance launchpadAppearance3 = new OASLaunchpadAppearance();
        OASLaunchpadAppearance launchpadAppearance4 = launchpadAppearance3;

        System.assert(launchpadAppearance1.equals(launchpadAppearance2));
        System.assert(launchpadAppearance2.equals(launchpadAppearance1));
        System.assert(launchpadAppearance1.equals(launchpadAppearance1));
        System.assert(launchpadAppearance3.equals(launchpadAppearance4));
        System.assert(launchpadAppearance4.equals(launchpadAppearance3));
        System.assert(launchpadAppearance3.equals(launchpadAppearance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance3 = new OASLaunchpadAppearance();
        OASLaunchpadAppearance launchpadAppearance4 = new OASLaunchpadAppearance();

        System.assert(launchpadAppearance1.equals(launchpadAppearance2));
        System.assert(launchpadAppearance2.equals(launchpadAppearance1));
        System.assert(launchpadAppearance3.equals(launchpadAppearance4));
        System.assert(launchpadAppearance4.equals(launchpadAppearance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = new OASLaunchpadAppearance();

        System.assertEquals(false, launchpadAppearance1.equals('foo'));
        System.assertEquals(false, launchpadAppearance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = new OASLaunchpadAppearance();
        OASLaunchpadAppearance launchpadAppearance3;

        System.assertEquals(false, launchpadAppearance1.equals(launchpadAppearance3));
        System.assertEquals(false, launchpadAppearance2.equals(launchpadAppearance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = new OASLaunchpadAppearance();

        System.assertEquals(launchpadAppearance1.hashCode(), launchpadAppearance1.hashCode());
        System.assertEquals(launchpadAppearance2.hashCode(), launchpadAppearance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadAppearance launchpadAppearance1 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance2 = OASLaunchpadAppearance.getExample();
        OASLaunchpadAppearance launchpadAppearance3 = new OASLaunchpadAppearance();
        OASLaunchpadAppearance launchpadAppearance4 = new OASLaunchpadAppearance();

        System.assert(launchpadAppearance1.equals(launchpadAppearance2));
        System.assert(launchpadAppearance3.equals(launchpadAppearance4));
        System.assertEquals(launchpadAppearance1.hashCode(), launchpadAppearance2.hashCode());
        System.assertEquals(launchpadAppearance3.hashCode(), launchpadAppearance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadAppearance launchpadAppearance = new OASLaunchpadAppearance();
        Map<String, String> propertymappings = launchpadAppearance.getPropertyMappings();
        System.assertEquals('layoutV2', propertymappings.get('layout_v2'));
        System.assertEquals('headerAppearance', propertymappings.get('header_appearance'));
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('bottomBackground', propertymappings.get('bottom_background'));
        System.assertEquals('launchpadTextColor', propertymappings.get('launchpad_text_color'));
        System.assertEquals('descriptionColor', propertymappings.get('description_color'));
        System.assertEquals('avatarImageUrl', propertymappings.get('avatar_image_url'));
        System.assertEquals('backgroundImageUrl', propertymappings.get('background_image_url'));
        System.assertEquals('avatarUploadImage', propertymappings.get('avatar_upload_image'));
        System.assertEquals('backgroundUploadImage', propertymappings.get('background_upload_image'));
        System.assertEquals('displayName', propertymappings.get('display_name'));
        System.assertEquals('hideBitlyLogo', propertymappings.get('hide_bitly_logo'));
        System.assertEquals('themeId', propertymappings.get('theme_id'));
        System.assertEquals('buttonAppearance', propertymappings.get('button_appearance'));
        System.assertEquals('stylePreference', propertymappings.get('style_preference'));
        System.assertEquals('backgroundImageAlignment', propertymappings.get('background_image_alignment'));
        System.assertEquals('socialIconColor', propertymappings.get('social_icon_color'));
        System.assertEquals('socialIconLayoutPosition', propertymappings.get('social_icon_layout_position'));
        System.assertEquals('socialIconPosition', propertymappings.get('social_icon_position'));
    }
}