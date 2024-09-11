@isTest
private class OASCreateLaunchpadTest {
    @isTest
    private static void equalsSameInstance() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = createLaunchpad1;
        OASCreateLaunchpad createLaunchpad3 = new OASCreateLaunchpad();
        OASCreateLaunchpad createLaunchpad4 = createLaunchpad3;

        System.assert(createLaunchpad1.equals(createLaunchpad2));
        System.assert(createLaunchpad2.equals(createLaunchpad1));
        System.assert(createLaunchpad1.equals(createLaunchpad1));
        System.assert(createLaunchpad3.equals(createLaunchpad4));
        System.assert(createLaunchpad4.equals(createLaunchpad3));
        System.assert(createLaunchpad3.equals(createLaunchpad3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad3 = new OASCreateLaunchpad();
        OASCreateLaunchpad createLaunchpad4 = new OASCreateLaunchpad();

        System.assert(createLaunchpad1.equals(createLaunchpad2));
        System.assert(createLaunchpad2.equals(createLaunchpad1));
        System.assert(createLaunchpad3.equals(createLaunchpad4));
        System.assert(createLaunchpad4.equals(createLaunchpad3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = new OASCreateLaunchpad();

        System.assertEquals(false, createLaunchpad1.equals('foo'));
        System.assertEquals(false, createLaunchpad2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = new OASCreateLaunchpad();
        OASCreateLaunchpad createLaunchpad3;

        System.assertEquals(false, createLaunchpad1.equals(createLaunchpad3));
        System.assertEquals(false, createLaunchpad2.equals(createLaunchpad3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = new OASCreateLaunchpad();

        System.assertEquals(createLaunchpad1.hashCode(), createLaunchpad1.hashCode());
        System.assertEquals(createLaunchpad2.hashCode(), createLaunchpad2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCreateLaunchpad createLaunchpad1 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad2 = OASCreateLaunchpad.getExample();
        OASCreateLaunchpad createLaunchpad3 = new OASCreateLaunchpad();
        OASCreateLaunchpad createLaunchpad4 = new OASCreateLaunchpad();

        System.assert(createLaunchpad1.equals(createLaunchpad2));
        System.assert(createLaunchpad3.equals(createLaunchpad4));
        System.assertEquals(createLaunchpad1.hashCode(), createLaunchpad2.hashCode());
        System.assertEquals(createLaunchpad3.hashCode(), createLaunchpad4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCreateLaunchpad createLaunchpad = new OASCreateLaunchpad();
        Map<String, String> propertymappings = createLaunchpad.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}