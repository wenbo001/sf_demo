@isTest
private class OASUpdateButtonSortOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = updateButtonSortOrder1;
        OASUpdateButtonSortOrder updateButtonSortOrder3 = new OASUpdateButtonSortOrder();
        OASUpdateButtonSortOrder updateButtonSortOrder4 = updateButtonSortOrder3;

        System.assert(updateButtonSortOrder1.equals(updateButtonSortOrder2));
        System.assert(updateButtonSortOrder2.equals(updateButtonSortOrder1));
        System.assert(updateButtonSortOrder1.equals(updateButtonSortOrder1));
        System.assert(updateButtonSortOrder3.equals(updateButtonSortOrder4));
        System.assert(updateButtonSortOrder4.equals(updateButtonSortOrder3));
        System.assert(updateButtonSortOrder3.equals(updateButtonSortOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder3 = new OASUpdateButtonSortOrder();
        OASUpdateButtonSortOrder updateButtonSortOrder4 = new OASUpdateButtonSortOrder();

        System.assert(updateButtonSortOrder1.equals(updateButtonSortOrder2));
        System.assert(updateButtonSortOrder2.equals(updateButtonSortOrder1));
        System.assert(updateButtonSortOrder3.equals(updateButtonSortOrder4));
        System.assert(updateButtonSortOrder4.equals(updateButtonSortOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = new OASUpdateButtonSortOrder();

        System.assertEquals(false, updateButtonSortOrder1.equals('foo'));
        System.assertEquals(false, updateButtonSortOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = new OASUpdateButtonSortOrder();
        OASUpdateButtonSortOrder updateButtonSortOrder3;

        System.assertEquals(false, updateButtonSortOrder1.equals(updateButtonSortOrder3));
        System.assertEquals(false, updateButtonSortOrder2.equals(updateButtonSortOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = new OASUpdateButtonSortOrder();

        System.assertEquals(updateButtonSortOrder1.hashCode(), updateButtonSortOrder1.hashCode());
        System.assertEquals(updateButtonSortOrder2.hashCode(), updateButtonSortOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateButtonSortOrder updateButtonSortOrder1 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder2 = OASUpdateButtonSortOrder.getExample();
        OASUpdateButtonSortOrder updateButtonSortOrder3 = new OASUpdateButtonSortOrder();
        OASUpdateButtonSortOrder updateButtonSortOrder4 = new OASUpdateButtonSortOrder();

        System.assert(updateButtonSortOrder1.equals(updateButtonSortOrder2));
        System.assert(updateButtonSortOrder3.equals(updateButtonSortOrder4));
        System.assertEquals(updateButtonSortOrder1.hashCode(), updateButtonSortOrder2.hashCode());
        System.assertEquals(updateButtonSortOrder3.hashCode(), updateButtonSortOrder4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASUpdateButtonSortOrder updateButtonSortOrder = new OASUpdateButtonSortOrder();
        System.assertEquals(new List<OASLaunchpadButtonSortOrder>(), updateButtonSortOrder.buttons);
    }
}