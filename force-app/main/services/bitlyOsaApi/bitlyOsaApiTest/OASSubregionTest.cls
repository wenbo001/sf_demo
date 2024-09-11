@isTest
private class OASSubregionTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = subregion1;
        OASSubregion subregion3 = new OASSubregion();
        OASSubregion subregion4 = subregion3;

        System.assert(subregion1.equals(subregion2));
        System.assert(subregion2.equals(subregion1));
        System.assert(subregion1.equals(subregion1));
        System.assert(subregion3.equals(subregion4));
        System.assert(subregion4.equals(subregion3));
        System.assert(subregion3.equals(subregion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = OASSubregion.getExample();
        OASSubregion subregion3 = new OASSubregion();
        OASSubregion subregion4 = new OASSubregion();

        System.assert(subregion1.equals(subregion2));
        System.assert(subregion2.equals(subregion1));
        System.assert(subregion3.equals(subregion4));
        System.assert(subregion4.equals(subregion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = new OASSubregion();

        System.assertEquals(false, subregion1.equals('foo'));
        System.assertEquals(false, subregion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = new OASSubregion();
        OASSubregion subregion3;

        System.assertEquals(false, subregion1.equals(subregion3));
        System.assertEquals(false, subregion2.equals(subregion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = new OASSubregion();

        System.assertEquals(subregion1.hashCode(), subregion1.hashCode());
        System.assertEquals(subregion2.hashCode(), subregion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubregion subregion1 = OASSubregion.getExample();
        OASSubregion subregion2 = OASSubregion.getExample();
        OASSubregion subregion3 = new OASSubregion();
        OASSubregion subregion4 = new OASSubregion();

        System.assert(subregion1.equals(subregion2));
        System.assert(subregion3.equals(subregion4));
        System.assertEquals(subregion1.hashCode(), subregion2.hashCode());
        System.assertEquals(subregion3.hashCode(), subregion4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSubregion subregion = new OASSubregion();
        Map<String, String> propertymappings = subregion.getPropertyMappings();
        System.assertEquals('subregionName', propertymappings.get('subregion_name'));
    }
}