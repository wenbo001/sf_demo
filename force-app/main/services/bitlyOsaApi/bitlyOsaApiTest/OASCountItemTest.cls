@isTest
private class OASCountItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = countItem1;
        OASCountItem countItem3 = new OASCountItem();
        OASCountItem countItem4 = countItem3;

        System.assert(countItem1.equals(countItem2));
        System.assert(countItem2.equals(countItem1));
        System.assert(countItem1.equals(countItem1));
        System.assert(countItem3.equals(countItem4));
        System.assert(countItem4.equals(countItem3));
        System.assert(countItem3.equals(countItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = OASCountItem.getExample();
        OASCountItem countItem3 = new OASCountItem();
        OASCountItem countItem4 = new OASCountItem();

        System.assert(countItem1.equals(countItem2));
        System.assert(countItem2.equals(countItem1));
        System.assert(countItem3.equals(countItem4));
        System.assert(countItem4.equals(countItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = new OASCountItem();

        System.assertEquals(false, countItem1.equals('foo'));
        System.assertEquals(false, countItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = new OASCountItem();
        OASCountItem countItem3;

        System.assertEquals(false, countItem1.equals(countItem3));
        System.assertEquals(false, countItem2.equals(countItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = new OASCountItem();

        System.assertEquals(countItem1.hashCode(), countItem1.hashCode());
        System.assertEquals(countItem2.hashCode(), countItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCountItem countItem1 = OASCountItem.getExample();
        OASCountItem countItem2 = OASCountItem.getExample();
        OASCountItem countItem3 = new OASCountItem();
        OASCountItem countItem4 = new OASCountItem();

        System.assert(countItem1.equals(countItem2));
        System.assert(countItem3.equals(countItem4));
        System.assertEquals(countItem1.hashCode(), countItem2.hashCode());
        System.assertEquals(countItem3.hashCode(), countItem4.hashCode());
    }
}