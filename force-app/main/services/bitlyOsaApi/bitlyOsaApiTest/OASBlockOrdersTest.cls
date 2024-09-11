@isTest
private class OASBlockOrdersTest {
    @isTest
    private static void equalsSameInstance() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = blockOrders1;
        OASBlockOrders blockOrders3 = new OASBlockOrders();
        OASBlockOrders blockOrders4 = blockOrders3;

        System.assert(blockOrders1.equals(blockOrders2));
        System.assert(blockOrders2.equals(blockOrders1));
        System.assert(blockOrders1.equals(blockOrders1));
        System.assert(blockOrders3.equals(blockOrders4));
        System.assert(blockOrders4.equals(blockOrders3));
        System.assert(blockOrders3.equals(blockOrders3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders3 = new OASBlockOrders();
        OASBlockOrders blockOrders4 = new OASBlockOrders();

        System.assert(blockOrders1.equals(blockOrders2));
        System.assert(blockOrders2.equals(blockOrders1));
        System.assert(blockOrders3.equals(blockOrders4));
        System.assert(blockOrders4.equals(blockOrders3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = new OASBlockOrders();

        System.assertEquals(false, blockOrders1.equals('foo'));
        System.assertEquals(false, blockOrders2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = new OASBlockOrders();
        OASBlockOrders blockOrders3;

        System.assertEquals(false, blockOrders1.equals(blockOrders3));
        System.assertEquals(false, blockOrders2.equals(blockOrders3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = new OASBlockOrders();

        System.assertEquals(blockOrders1.hashCode(), blockOrders1.hashCode());
        System.assertEquals(blockOrders2.hashCode(), blockOrders2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBlockOrders blockOrders1 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders2 = OASBlockOrders.getExample();
        OASBlockOrders blockOrders3 = new OASBlockOrders();
        OASBlockOrders blockOrders4 = new OASBlockOrders();

        System.assert(blockOrders1.equals(blockOrders2));
        System.assert(blockOrders3.equals(blockOrders4));
        System.assertEquals(blockOrders1.hashCode(), blockOrders2.hashCode());
        System.assertEquals(blockOrders3.hashCode(), blockOrders4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBlockOrders blockOrders = new OASBlockOrders();
        Map<String, String> propertymappings = blockOrders.getPropertyMappings();
        System.assertEquals('blockOrder', propertymappings.get('block_order'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBlockOrders blockOrders = new OASBlockOrders();
        System.assertEquals(new List<OASBlockOrder>(), blockOrders.blockOrder);
    }
}