@isTest
private class OASLaunchpadButtonSortOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = launchpadButtonSortOrder1;
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder3 = new OASLaunchpadButtonSortOrder();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder4 = launchpadButtonSortOrder3;

        System.assert(launchpadButtonSortOrder1.equals(launchpadButtonSortOrder2));
        System.assert(launchpadButtonSortOrder2.equals(launchpadButtonSortOrder1));
        System.assert(launchpadButtonSortOrder1.equals(launchpadButtonSortOrder1));
        System.assert(launchpadButtonSortOrder3.equals(launchpadButtonSortOrder4));
        System.assert(launchpadButtonSortOrder4.equals(launchpadButtonSortOrder3));
        System.assert(launchpadButtonSortOrder3.equals(launchpadButtonSortOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder3 = new OASLaunchpadButtonSortOrder();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder4 = new OASLaunchpadButtonSortOrder();

        System.assert(launchpadButtonSortOrder1.equals(launchpadButtonSortOrder2));
        System.assert(launchpadButtonSortOrder2.equals(launchpadButtonSortOrder1));
        System.assert(launchpadButtonSortOrder3.equals(launchpadButtonSortOrder4));
        System.assert(launchpadButtonSortOrder4.equals(launchpadButtonSortOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = new OASLaunchpadButtonSortOrder();

        System.assertEquals(false, launchpadButtonSortOrder1.equals('foo'));
        System.assertEquals(false, launchpadButtonSortOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = new OASLaunchpadButtonSortOrder();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder3;

        System.assertEquals(false, launchpadButtonSortOrder1.equals(launchpadButtonSortOrder3));
        System.assertEquals(false, launchpadButtonSortOrder2.equals(launchpadButtonSortOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = new OASLaunchpadButtonSortOrder();

        System.assertEquals(launchpadButtonSortOrder1.hashCode(), launchpadButtonSortOrder1.hashCode());
        System.assertEquals(launchpadButtonSortOrder2.hashCode(), launchpadButtonSortOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder1 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder2 = OASLaunchpadButtonSortOrder.getExample();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder3 = new OASLaunchpadButtonSortOrder();
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder4 = new OASLaunchpadButtonSortOrder();

        System.assert(launchpadButtonSortOrder1.equals(launchpadButtonSortOrder2));
        System.assert(launchpadButtonSortOrder3.equals(launchpadButtonSortOrder4));
        System.assertEquals(launchpadButtonSortOrder1.hashCode(), launchpadButtonSortOrder2.hashCode());
        System.assertEquals(launchpadButtonSortOrder3.hashCode(), launchpadButtonSortOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLaunchpadButtonSortOrder launchpadButtonSortOrder = new OASLaunchpadButtonSortOrder();
        Map<String, String> propertymappings = launchpadButtonSortOrder.getPropertyMappings();
        System.assertEquals('buttonId', propertymappings.get('button_id'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
    }
}