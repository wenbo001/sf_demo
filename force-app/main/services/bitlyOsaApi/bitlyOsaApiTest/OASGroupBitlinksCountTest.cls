@isTest
private class OASGroupBitlinksCountTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = groupBitlinksCount1;
        OASGroupBitlinksCount groupBitlinksCount3 = new OASGroupBitlinksCount();
        OASGroupBitlinksCount groupBitlinksCount4 = groupBitlinksCount3;

        System.assert(groupBitlinksCount1.equals(groupBitlinksCount2));
        System.assert(groupBitlinksCount2.equals(groupBitlinksCount1));
        System.assert(groupBitlinksCount1.equals(groupBitlinksCount1));
        System.assert(groupBitlinksCount3.equals(groupBitlinksCount4));
        System.assert(groupBitlinksCount4.equals(groupBitlinksCount3));
        System.assert(groupBitlinksCount3.equals(groupBitlinksCount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount3 = new OASGroupBitlinksCount();
        OASGroupBitlinksCount groupBitlinksCount4 = new OASGroupBitlinksCount();

        System.assert(groupBitlinksCount1.equals(groupBitlinksCount2));
        System.assert(groupBitlinksCount2.equals(groupBitlinksCount1));
        System.assert(groupBitlinksCount3.equals(groupBitlinksCount4));
        System.assert(groupBitlinksCount4.equals(groupBitlinksCount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = new OASGroupBitlinksCount();

        System.assertEquals(false, groupBitlinksCount1.equals('foo'));
        System.assertEquals(false, groupBitlinksCount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = new OASGroupBitlinksCount();
        OASGroupBitlinksCount groupBitlinksCount3;

        System.assertEquals(false, groupBitlinksCount1.equals(groupBitlinksCount3));
        System.assertEquals(false, groupBitlinksCount2.equals(groupBitlinksCount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = new OASGroupBitlinksCount();

        System.assertEquals(groupBitlinksCount1.hashCode(), groupBitlinksCount1.hashCode());
        System.assertEquals(groupBitlinksCount2.hashCode(), groupBitlinksCount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupBitlinksCount groupBitlinksCount1 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount2 = OASGroupBitlinksCount.getExample();
        OASGroupBitlinksCount groupBitlinksCount3 = new OASGroupBitlinksCount();
        OASGroupBitlinksCount groupBitlinksCount4 = new OASGroupBitlinksCount();

        System.assert(groupBitlinksCount1.equals(groupBitlinksCount2));
        System.assert(groupBitlinksCount3.equals(groupBitlinksCount4));
        System.assertEquals(groupBitlinksCount1.hashCode(), groupBitlinksCount2.hashCode());
        System.assertEquals(groupBitlinksCount3.hashCode(), groupBitlinksCount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupBitlinksCount groupBitlinksCount = new OASGroupBitlinksCount();
        Map<String, String> propertymappings = groupBitlinksCount.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupBitlinksCount groupBitlinksCount = new OASGroupBitlinksCount();
        System.assertEquals(new List<OASCountItem>(), groupBitlinksCount.data);
        System.assertEquals(null, groupBitlinksCount.unit);
        System.assertEquals(null, groupBitlinksCount.units);
        System.assertEquals(null, groupBitlinksCount.unitReference);
    }
}