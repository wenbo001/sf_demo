@isTest
private class OASGroupBitlinksCountRollupTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = groupBitlinksCountRollup1;
        OASGroupBitlinksCountRollup groupBitlinksCountRollup3 = new OASGroupBitlinksCountRollup();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup4 = groupBitlinksCountRollup3;

        System.assert(groupBitlinksCountRollup1.equals(groupBitlinksCountRollup2));
        System.assert(groupBitlinksCountRollup2.equals(groupBitlinksCountRollup1));
        System.assert(groupBitlinksCountRollup1.equals(groupBitlinksCountRollup1));
        System.assert(groupBitlinksCountRollup3.equals(groupBitlinksCountRollup4));
        System.assert(groupBitlinksCountRollup4.equals(groupBitlinksCountRollup3));
        System.assert(groupBitlinksCountRollup3.equals(groupBitlinksCountRollup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup3 = new OASGroupBitlinksCountRollup();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup4 = new OASGroupBitlinksCountRollup();

        System.assert(groupBitlinksCountRollup1.equals(groupBitlinksCountRollup2));
        System.assert(groupBitlinksCountRollup2.equals(groupBitlinksCountRollup1));
        System.assert(groupBitlinksCountRollup3.equals(groupBitlinksCountRollup4));
        System.assert(groupBitlinksCountRollup4.equals(groupBitlinksCountRollup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = new OASGroupBitlinksCountRollup();

        System.assertEquals(false, groupBitlinksCountRollup1.equals('foo'));
        System.assertEquals(false, groupBitlinksCountRollup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = new OASGroupBitlinksCountRollup();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup3;

        System.assertEquals(false, groupBitlinksCountRollup1.equals(groupBitlinksCountRollup3));
        System.assertEquals(false, groupBitlinksCountRollup2.equals(groupBitlinksCountRollup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = new OASGroupBitlinksCountRollup();

        System.assertEquals(groupBitlinksCountRollup1.hashCode(), groupBitlinksCountRollup1.hashCode());
        System.assertEquals(groupBitlinksCountRollup2.hashCode(), groupBitlinksCountRollup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup1 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup2 = OASGroupBitlinksCountRollup.getExample();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup3 = new OASGroupBitlinksCountRollup();
        OASGroupBitlinksCountRollup groupBitlinksCountRollup4 = new OASGroupBitlinksCountRollup();

        System.assert(groupBitlinksCountRollup1.equals(groupBitlinksCountRollup2));
        System.assert(groupBitlinksCountRollup3.equals(groupBitlinksCountRollup4));
        System.assertEquals(groupBitlinksCountRollup1.hashCode(), groupBitlinksCountRollup2.hashCode());
        System.assertEquals(groupBitlinksCountRollup3.hashCode(), groupBitlinksCountRollup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupBitlinksCountRollup groupBitlinksCountRollup = new OASGroupBitlinksCountRollup();
        Map<String, String> propertymappings = groupBitlinksCountRollup.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
        System.assertEquals('totalClicks', propertymappings.get('total_clicks'));
    }
}