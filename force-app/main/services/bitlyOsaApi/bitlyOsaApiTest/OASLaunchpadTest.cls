@isTest
private class OASLaunchpadTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = launchpad1;
        OASLaunchpad launchpad3 = new OASLaunchpad();
        OASLaunchpad launchpad4 = launchpad3;

        System.assert(launchpad1.equals(launchpad2));
        System.assert(launchpad2.equals(launchpad1));
        System.assert(launchpad1.equals(launchpad1));
        System.assert(launchpad3.equals(launchpad4));
        System.assert(launchpad4.equals(launchpad3));
        System.assert(launchpad3.equals(launchpad3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = OASLaunchpad.getExample();
        OASLaunchpad launchpad3 = new OASLaunchpad();
        OASLaunchpad launchpad4 = new OASLaunchpad();

        System.assert(launchpad1.equals(launchpad2));
        System.assert(launchpad2.equals(launchpad1));
        System.assert(launchpad3.equals(launchpad4));
        System.assert(launchpad4.equals(launchpad3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = new OASLaunchpad();

        System.assertEquals(false, launchpad1.equals('foo'));
        System.assertEquals(false, launchpad2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = new OASLaunchpad();
        OASLaunchpad launchpad3;

        System.assertEquals(false, launchpad1.equals(launchpad3));
        System.assertEquals(false, launchpad2.equals(launchpad3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = new OASLaunchpad();

        System.assertEquals(launchpad1.hashCode(), launchpad1.hashCode());
        System.assertEquals(launchpad2.hashCode(), launchpad2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpad launchpad1 = OASLaunchpad.getExample();
        OASLaunchpad launchpad2 = OASLaunchpad.getExample();
        OASLaunchpad launchpad3 = new OASLaunchpad();
        OASLaunchpad launchpad4 = new OASLaunchpad();

        System.assert(launchpad1.equals(launchpad2));
        System.assert(launchpad3.equals(launchpad4));
        System.assertEquals(launchpad1.hashCode(), launchpad2.hashCode());
        System.assertEquals(launchpad3.hashCode(), launchpad4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpad launchpad = new OASLaunchpad();
        Map<String, String> propertymappings = launchpad.getPropertyMappings();
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('draftId', propertymappings.get('draft_id'));
        System.assertEquals('isEdited', propertymappings.get('is_edited'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('launchpadAppearance', propertymappings.get('launchpad_appearance'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASLaunchpad launchpad = new OASLaunchpad();
        System.assertEquals(new List<OASLaunchpadButton>(), launchpad.buttons);
        System.assertEquals(new List<OASLaunchpadSocial>(), launchpad.socials);
        System.assertEquals(null, launchpad.launchpadId);
        System.assertEquals(null, launchpad.draftId);
        System.assertEquals(null, launchpad.isEdited);
        System.assertEquals(null, launchpad.domain);
        System.assertEquals(null, launchpad.keyword);
        System.assertEquals(null, launchpad.uri);
        System.assertEquals(null, launchpad.isActive);
        System.assertEquals(null, launchpad.launchpadAppearance);
        System.assertEquals(null, launchpad.images);
        System.assertEquals(null, launchpad.scheme);
    }
}