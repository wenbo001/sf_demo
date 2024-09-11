@isTest
private class OASLaunchpadButtonAppearanceTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = launchpadButtonAppearance1;
        OASLaunchpadButtonAppearance launchpadButtonAppearance3 = new OASLaunchpadButtonAppearance();
        OASLaunchpadButtonAppearance launchpadButtonAppearance4 = launchpadButtonAppearance3;

        System.assert(launchpadButtonAppearance1.equals(launchpadButtonAppearance2));
        System.assert(launchpadButtonAppearance2.equals(launchpadButtonAppearance1));
        System.assert(launchpadButtonAppearance1.equals(launchpadButtonAppearance1));
        System.assert(launchpadButtonAppearance3.equals(launchpadButtonAppearance4));
        System.assert(launchpadButtonAppearance4.equals(launchpadButtonAppearance3));
        System.assert(launchpadButtonAppearance3.equals(launchpadButtonAppearance3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance3 = new OASLaunchpadButtonAppearance();
        OASLaunchpadButtonAppearance launchpadButtonAppearance4 = new OASLaunchpadButtonAppearance();

        System.assert(launchpadButtonAppearance1.equals(launchpadButtonAppearance2));
        System.assert(launchpadButtonAppearance2.equals(launchpadButtonAppearance1));
        System.assert(launchpadButtonAppearance3.equals(launchpadButtonAppearance4));
        System.assert(launchpadButtonAppearance4.equals(launchpadButtonAppearance3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = new OASLaunchpadButtonAppearance();

        System.assertEquals(false, launchpadButtonAppearance1.equals('foo'));
        System.assertEquals(false, launchpadButtonAppearance2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = new OASLaunchpadButtonAppearance();
        OASLaunchpadButtonAppearance launchpadButtonAppearance3;

        System.assertEquals(false, launchpadButtonAppearance1.equals(launchpadButtonAppearance3));
        System.assertEquals(false, launchpadButtonAppearance2.equals(launchpadButtonAppearance3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = new OASLaunchpadButtonAppearance();

        System.assertEquals(launchpadButtonAppearance1.hashCode(), launchpadButtonAppearance1.hashCode());
        System.assertEquals(launchpadButtonAppearance2.hashCode(), launchpadButtonAppearance2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance1 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance2 = OASLaunchpadButtonAppearance.getExample();
        OASLaunchpadButtonAppearance launchpadButtonAppearance3 = new OASLaunchpadButtonAppearance();
        OASLaunchpadButtonAppearance launchpadButtonAppearance4 = new OASLaunchpadButtonAppearance();

        System.assert(launchpadButtonAppearance1.equals(launchpadButtonAppearance2));
        System.assert(launchpadButtonAppearance3.equals(launchpadButtonAppearance4));
        System.assertEquals(launchpadButtonAppearance1.hashCode(), launchpadButtonAppearance2.hashCode());
        System.assertEquals(launchpadButtonAppearance3.hashCode(), launchpadButtonAppearance4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonAppearance launchpadButtonAppearance = new OASLaunchpadButtonAppearance();
        Map<String, String> propertymappings = launchpadButtonAppearance.getPropertyMappings();
        System.assertEquals('buttonBackground', propertymappings.get('button_background'));
        System.assertEquals('buttonTextColor', propertymappings.get('button_text_color'));
    }
}