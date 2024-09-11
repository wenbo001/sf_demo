@isTest
private class OASGroupClicksTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = groupClicks1;
        OASGroupClicks groupClicks3 = new OASGroupClicks();
        OASGroupClicks groupClicks4 = groupClicks3;

        System.assert(groupClicks1.equals(groupClicks2));
        System.assert(groupClicks2.equals(groupClicks1));
        System.assert(groupClicks1.equals(groupClicks1));
        System.assert(groupClicks3.equals(groupClicks4));
        System.assert(groupClicks4.equals(groupClicks3));
        System.assert(groupClicks3.equals(groupClicks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks3 = new OASGroupClicks();
        OASGroupClicks groupClicks4 = new OASGroupClicks();

        System.assert(groupClicks1.equals(groupClicks2));
        System.assert(groupClicks2.equals(groupClicks1));
        System.assert(groupClicks3.equals(groupClicks4));
        System.assert(groupClicks4.equals(groupClicks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = new OASGroupClicks();

        System.assertEquals(false, groupClicks1.equals('foo'));
        System.assertEquals(false, groupClicks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = new OASGroupClicks();
        OASGroupClicks groupClicks3;

        System.assertEquals(false, groupClicks1.equals(groupClicks3));
        System.assertEquals(false, groupClicks2.equals(groupClicks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = new OASGroupClicks();

        System.assertEquals(groupClicks1.hashCode(), groupClicks1.hashCode());
        System.assertEquals(groupClicks2.hashCode(), groupClicks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupClicks groupClicks1 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks2 = OASGroupClicks.getExample();
        OASGroupClicks groupClicks3 = new OASGroupClicks();
        OASGroupClicks groupClicks4 = new OASGroupClicks();

        System.assert(groupClicks1.equals(groupClicks2));
        System.assert(groupClicks3.equals(groupClicks4));
        System.assertEquals(groupClicks1.hashCode(), groupClicks2.hashCode());
        System.assertEquals(groupClicks3.hashCode(), groupClicks4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupClicks groupClicks = new OASGroupClicks();
        Map<String, String> propertymappings = groupClicks.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupClicks groupClicks = new OASGroupClicks();
        System.assertEquals(new List<OASCountItem>(), groupClicks.data);
        System.assertEquals(null, groupClicks.unit);
        System.assertEquals(null, groupClicks.units);
        System.assertEquals(null, groupClicks.unitReference);
    }
}