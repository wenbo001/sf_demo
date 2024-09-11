@isTest
private class OASClicksCountTest {
    @isTest
    private static void equalsSameInstance() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = clicksCount1;
        OASClicksCount clicksCount3 = new OASClicksCount();
        OASClicksCount clicksCount4 = clicksCount3;

        System.assert(clicksCount1.equals(clicksCount2));
        System.assert(clicksCount2.equals(clicksCount1));
        System.assert(clicksCount1.equals(clicksCount1));
        System.assert(clicksCount3.equals(clicksCount4));
        System.assert(clicksCount4.equals(clicksCount3));
        System.assert(clicksCount3.equals(clicksCount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = OASClicksCount.getExample();
        OASClicksCount clicksCount3 = new OASClicksCount();
        OASClicksCount clicksCount4 = new OASClicksCount();

        System.assert(clicksCount1.equals(clicksCount2));
        System.assert(clicksCount2.equals(clicksCount1));
        System.assert(clicksCount3.equals(clicksCount4));
        System.assert(clicksCount4.equals(clicksCount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = new OASClicksCount();

        System.assertEquals(false, clicksCount1.equals('foo'));
        System.assertEquals(false, clicksCount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = new OASClicksCount();
        OASClicksCount clicksCount3;

        System.assertEquals(false, clicksCount1.equals(clicksCount3));
        System.assertEquals(false, clicksCount2.equals(clicksCount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = new OASClicksCount();

        System.assertEquals(clicksCount1.hashCode(), clicksCount1.hashCode());
        System.assertEquals(clicksCount2.hashCode(), clicksCount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASClicksCount clicksCount1 = OASClicksCount.getExample();
        OASClicksCount clicksCount2 = OASClicksCount.getExample();
        OASClicksCount clicksCount3 = new OASClicksCount();
        OASClicksCount clicksCount4 = new OASClicksCount();

        System.assert(clicksCount1.equals(clicksCount2));
        System.assert(clicksCount3.equals(clicksCount4));
        System.assertEquals(clicksCount1.hashCode(), clicksCount2.hashCode());
        System.assertEquals(clicksCount3.hashCode(), clicksCount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASClicksCount clicksCount = new OASClicksCount();
        Map<String, String> propertymappings = clicksCount.getPropertyMappings();
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}