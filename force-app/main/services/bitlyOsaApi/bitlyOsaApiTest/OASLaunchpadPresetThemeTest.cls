@isTest
private class OASLaunchpadPresetThemeTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = launchpadPresetTheme1;
        OASLaunchpadPresetTheme launchpadPresetTheme3 = new OASLaunchpadPresetTheme();
        OASLaunchpadPresetTheme launchpadPresetTheme4 = launchpadPresetTheme3;

        System.assert(launchpadPresetTheme1.equals(launchpadPresetTheme2));
        System.assert(launchpadPresetTheme2.equals(launchpadPresetTheme1));
        System.assert(launchpadPresetTheme1.equals(launchpadPresetTheme1));
        System.assert(launchpadPresetTheme3.equals(launchpadPresetTheme4));
        System.assert(launchpadPresetTheme4.equals(launchpadPresetTheme3));
        System.assert(launchpadPresetTheme3.equals(launchpadPresetTheme3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme3 = new OASLaunchpadPresetTheme();
        OASLaunchpadPresetTheme launchpadPresetTheme4 = new OASLaunchpadPresetTheme();

        System.assert(launchpadPresetTheme1.equals(launchpadPresetTheme2));
        System.assert(launchpadPresetTheme2.equals(launchpadPresetTheme1));
        System.assert(launchpadPresetTheme3.equals(launchpadPresetTheme4));
        System.assert(launchpadPresetTheme4.equals(launchpadPresetTheme3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = new OASLaunchpadPresetTheme();

        System.assertEquals(false, launchpadPresetTheme1.equals('foo'));
        System.assertEquals(false, launchpadPresetTheme2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = new OASLaunchpadPresetTheme();
        OASLaunchpadPresetTheme launchpadPresetTheme3;

        System.assertEquals(false, launchpadPresetTheme1.equals(launchpadPresetTheme3));
        System.assertEquals(false, launchpadPresetTheme2.equals(launchpadPresetTheme3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = new OASLaunchpadPresetTheme();

        System.assertEquals(launchpadPresetTheme1.hashCode(), launchpadPresetTheme1.hashCode());
        System.assertEquals(launchpadPresetTheme2.hashCode(), launchpadPresetTheme2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadPresetTheme launchpadPresetTheme1 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme2 = OASLaunchpadPresetTheme.getExample();
        OASLaunchpadPresetTheme launchpadPresetTheme3 = new OASLaunchpadPresetTheme();
        OASLaunchpadPresetTheme launchpadPresetTheme4 = new OASLaunchpadPresetTheme();

        System.assert(launchpadPresetTheme1.equals(launchpadPresetTheme2));
        System.assert(launchpadPresetTheme3.equals(launchpadPresetTheme4));
        System.assertEquals(launchpadPresetTheme1.hashCode(), launchpadPresetTheme2.hashCode());
        System.assertEquals(launchpadPresetTheme3.hashCode(), launchpadPresetTheme4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadPresetTheme launchpadPresetTheme = new OASLaunchpadPresetTheme();
        Map<String, String> propertymappings = launchpadPresetTheme.getPropertyMappings();
        System.assertEquals('themeId', propertymappings.get('theme_id'));
        System.assertEquals('displayName', propertymappings.get('display_name'));
        System.assertEquals('launchpadTextColor', propertymappings.get('launchpad_text_color'));
        System.assertEquals('descriptionColor', propertymappings.get('description_color'));
        System.assertEquals('avatarBackground', propertymappings.get('avatar_background'));
        System.assertEquals('buttonTextColor', propertymappings.get('button_text_color'));
        System.assertEquals('buttonBackground', propertymappings.get('button_background'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('iconGradient', propertymappings.get('icon_gradient'));
    }
}