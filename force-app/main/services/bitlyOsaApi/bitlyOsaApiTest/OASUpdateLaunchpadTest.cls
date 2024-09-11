@isTest
private class OASUpdateLaunchpadTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = updateLaunchpad1;
        OASUpdateLaunchpad updateLaunchpad3 = new OASUpdateLaunchpad();
        OASUpdateLaunchpad updateLaunchpad4 = updateLaunchpad3;

        System.assert(updateLaunchpad1.equals(updateLaunchpad2));
        System.assert(updateLaunchpad2.equals(updateLaunchpad1));
        System.assert(updateLaunchpad1.equals(updateLaunchpad1));
        System.assert(updateLaunchpad3.equals(updateLaunchpad4));
        System.assert(updateLaunchpad4.equals(updateLaunchpad3));
        System.assert(updateLaunchpad3.equals(updateLaunchpad3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad3 = new OASUpdateLaunchpad();
        OASUpdateLaunchpad updateLaunchpad4 = new OASUpdateLaunchpad();

        System.assert(updateLaunchpad1.equals(updateLaunchpad2));
        System.assert(updateLaunchpad2.equals(updateLaunchpad1));
        System.assert(updateLaunchpad3.equals(updateLaunchpad4));
        System.assert(updateLaunchpad4.equals(updateLaunchpad3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = new OASUpdateLaunchpad();

        System.assertEquals(false, updateLaunchpad1.equals('foo'));
        System.assertEquals(false, updateLaunchpad2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = new OASUpdateLaunchpad();
        OASUpdateLaunchpad updateLaunchpad3;

        System.assertEquals(false, updateLaunchpad1.equals(updateLaunchpad3));
        System.assertEquals(false, updateLaunchpad2.equals(updateLaunchpad3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = new OASUpdateLaunchpad();

        System.assertEquals(updateLaunchpad1.hashCode(), updateLaunchpad1.hashCode());
        System.assertEquals(updateLaunchpad2.hashCode(), updateLaunchpad2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateLaunchpad updateLaunchpad1 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad2 = OASUpdateLaunchpad.getExample();
        OASUpdateLaunchpad updateLaunchpad3 = new OASUpdateLaunchpad();
        OASUpdateLaunchpad updateLaunchpad4 = new OASUpdateLaunchpad();

        System.assert(updateLaunchpad1.equals(updateLaunchpad2));
        System.assert(updateLaunchpad3.equals(updateLaunchpad4));
        System.assertEquals(updateLaunchpad1.hashCode(), updateLaunchpad2.hashCode());
        System.assertEquals(updateLaunchpad3.hashCode(), updateLaunchpad4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateLaunchpad updateLaunchpad = new OASUpdateLaunchpad();
        Map<String, String> propertymappings = updateLaunchpad.getPropertyMappings();
        System.assertEquals('launchpadId', propertymappings.get('launchpad_id'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
        System.assertEquals('launchpadAppearance', propertymappings.get('launchpad_appearance'));
    }
}