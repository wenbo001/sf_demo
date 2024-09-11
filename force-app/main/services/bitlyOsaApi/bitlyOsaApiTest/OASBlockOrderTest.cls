@isTest
private class OASBlockOrderTest {
    @isTest
    private static void equalsSameInstance() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = blockOrder1;
        OASBlockOrder blockOrder3 = new OASBlockOrder();
        OASBlockOrder blockOrder4 = blockOrder3;

        System.assert(blockOrder1.equals(blockOrder2));
        System.assert(blockOrder2.equals(blockOrder1));
        System.assert(blockOrder1.equals(blockOrder1));
        System.assert(blockOrder3.equals(blockOrder4));
        System.assert(blockOrder4.equals(blockOrder3));
        System.assert(blockOrder3.equals(blockOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder3 = new OASBlockOrder();
        OASBlockOrder blockOrder4 = new OASBlockOrder();

        System.assert(blockOrder1.equals(blockOrder2));
        System.assert(blockOrder2.equals(blockOrder1));
        System.assert(blockOrder3.equals(blockOrder4));
        System.assert(blockOrder4.equals(blockOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = new OASBlockOrder();

        System.assertEquals(false, blockOrder1.equals('foo'));
        System.assertEquals(false, blockOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = new OASBlockOrder();
        OASBlockOrder blockOrder3;

        System.assertEquals(false, blockOrder1.equals(blockOrder3));
        System.assertEquals(false, blockOrder2.equals(blockOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = new OASBlockOrder();

        System.assertEquals(blockOrder1.hashCode(), blockOrder1.hashCode());
        System.assertEquals(blockOrder2.hashCode(), blockOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBlockOrder blockOrder1 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder2 = OASBlockOrder.getExample();
        OASBlockOrder blockOrder3 = new OASBlockOrder();
        OASBlockOrder blockOrder4 = new OASBlockOrder();

        System.assert(blockOrder1.equals(blockOrder2));
        System.assert(blockOrder3.equals(blockOrder4));
        System.assertEquals(blockOrder1.hashCode(), blockOrder2.hashCode());
        System.assertEquals(blockOrder3.hashCode(), blockOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBlockOrder blockOrder = new OASBlockOrder();
        Map<String, String> propertymappings = blockOrder.getPropertyMappings();
        System.assertEquals('blockId', propertymappings.get('block_id'));
        System.assertEquals('sortOrder', propertymappings.get('sort_order'));
    }
}