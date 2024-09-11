@isTest
private class OASGroupClicksByFacetTest {
    @isTest
    private static void equalsSameInstance() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = groupClicksByFacet1;
        OASGroupClicksByFacet groupClicksByFacet3 = new OASGroupClicksByFacet();
        OASGroupClicksByFacet groupClicksByFacet4 = groupClicksByFacet3;

        System.assert(groupClicksByFacet1.equals(groupClicksByFacet2));
        System.assert(groupClicksByFacet2.equals(groupClicksByFacet1));
        System.assert(groupClicksByFacet1.equals(groupClicksByFacet1));
        System.assert(groupClicksByFacet3.equals(groupClicksByFacet4));
        System.assert(groupClicksByFacet4.equals(groupClicksByFacet3));
        System.assert(groupClicksByFacet3.equals(groupClicksByFacet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet3 = new OASGroupClicksByFacet();
        OASGroupClicksByFacet groupClicksByFacet4 = new OASGroupClicksByFacet();

        System.assert(groupClicksByFacet1.equals(groupClicksByFacet2));
        System.assert(groupClicksByFacet2.equals(groupClicksByFacet1));
        System.assert(groupClicksByFacet3.equals(groupClicksByFacet4));
        System.assert(groupClicksByFacet4.equals(groupClicksByFacet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = new OASGroupClicksByFacet();

        System.assertEquals(false, groupClicksByFacet1.equals('foo'));
        System.assertEquals(false, groupClicksByFacet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = new OASGroupClicksByFacet();
        OASGroupClicksByFacet groupClicksByFacet3;

        System.assertEquals(false, groupClicksByFacet1.equals(groupClicksByFacet3));
        System.assertEquals(false, groupClicksByFacet2.equals(groupClicksByFacet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = new OASGroupClicksByFacet();

        System.assertEquals(groupClicksByFacet1.hashCode(), groupClicksByFacet1.hashCode());
        System.assertEquals(groupClicksByFacet2.hashCode(), groupClicksByFacet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASGroupClicksByFacet groupClicksByFacet1 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet2 = OASGroupClicksByFacet.getExample();
        OASGroupClicksByFacet groupClicksByFacet3 = new OASGroupClicksByFacet();
        OASGroupClicksByFacet groupClicksByFacet4 = new OASGroupClicksByFacet();

        System.assert(groupClicksByFacet1.equals(groupClicksByFacet2));
        System.assert(groupClicksByFacet3.equals(groupClicksByFacet4));
        System.assertEquals(groupClicksByFacet1.hashCode(), groupClicksByFacet2.hashCode());
        System.assertEquals(groupClicksByFacet3.hashCode(), groupClicksByFacet4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASGroupClicksByFacet groupClicksByFacet = new OASGroupClicksByFacet();
        Map<String, String> propertymappings = groupClicksByFacet.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASGroupClicksByFacet groupClicksByFacet = new OASGroupClicksByFacet();
        System.assertEquals(new List<OASFacetCountData>(), groupClicksByFacet.data);
        System.assertEquals(null, groupClicksByFacet.unit);
        System.assertEquals(null, groupClicksByFacet.units);
        System.assertEquals(null, groupClicksByFacet.unitReference);
    }
}