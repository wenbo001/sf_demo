@isTest
private class OASGroupClicksByFacetRollupTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = groupClicksByFacetRollup1;
        OASGroupClicksByFacetRollup groupClicksByFacetRollup3 = new OASGroupClicksByFacetRollup();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup4 = groupClicksByFacetRollup3;

        System.assert(groupClicksByFacetRollup1.equals(groupClicksByFacetRollup2));
        System.assert(groupClicksByFacetRollup2.equals(groupClicksByFacetRollup1));
        System.assert(groupClicksByFacetRollup1.equals(groupClicksByFacetRollup1));
        System.assert(groupClicksByFacetRollup3.equals(groupClicksByFacetRollup4));
        System.assert(groupClicksByFacetRollup4.equals(groupClicksByFacetRollup3));
        System.assert(groupClicksByFacetRollup3.equals(groupClicksByFacetRollup3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup3 = new OASGroupClicksByFacetRollup();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup4 = new OASGroupClicksByFacetRollup();

        System.assert(groupClicksByFacetRollup1.equals(groupClicksByFacetRollup2));
        System.assert(groupClicksByFacetRollup2.equals(groupClicksByFacetRollup1));
        System.assert(groupClicksByFacetRollup3.equals(groupClicksByFacetRollup4));
        System.assert(groupClicksByFacetRollup4.equals(groupClicksByFacetRollup3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = new OASGroupClicksByFacetRollup();

        System.assertEquals(false, groupClicksByFacetRollup1.equals('foo'));
        System.assertEquals(false, groupClicksByFacetRollup2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = new OASGroupClicksByFacetRollup();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup3;

        System.assertEquals(false, groupClicksByFacetRollup1.equals(groupClicksByFacetRollup3));
        System.assertEquals(false, groupClicksByFacetRollup2.equals(groupClicksByFacetRollup3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = new OASGroupClicksByFacetRollup();

        System.assertEquals(groupClicksByFacetRollup1.hashCode(), groupClicksByFacetRollup1.hashCode());
        System.assertEquals(groupClicksByFacetRollup2.hashCode(), groupClicksByFacetRollup2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup1 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup2 = OASGroupClicksByFacetRollup.getExample();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup3 = new OASGroupClicksByFacetRollup();
        OASGroupClicksByFacetRollup groupClicksByFacetRollup4 = new OASGroupClicksByFacetRollup();

        System.assert(groupClicksByFacetRollup1.equals(groupClicksByFacetRollup2));
        System.assert(groupClicksByFacetRollup3.equals(groupClicksByFacetRollup4));
        System.assertEquals(groupClicksByFacetRollup1.hashCode(), groupClicksByFacetRollup2.hashCode());
        System.assertEquals(groupClicksByFacetRollup3.hashCode(), groupClicksByFacetRollup4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup = new OASGroupClicksByFacetRollup();
        Map<String, String> propertymappings = groupClicksByFacetRollup.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupClicksByFacetRollup groupClicksByFacetRollup = new OASGroupClicksByFacetRollup();
        System.assertEquals(new List<OASFacetCountItem>(), groupClicksByFacetRollup.data);
        System.assertEquals(null, groupClicksByFacetRollup.unit);
        System.assertEquals(null, groupClicksByFacetRollup.units);
        System.assertEquals(null, groupClicksByFacetRollup.unitReference);
    }
}