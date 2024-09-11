@isTest
private class OASBitlySitesTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = bitlySites1;
        OASBitlySites bitlySites3 = new OASBitlySites();
        OASBitlySites bitlySites4 = bitlySites3;

        System.assert(bitlySites1.equals(bitlySites2));
        System.assert(bitlySites2.equals(bitlySites1));
        System.assert(bitlySites1.equals(bitlySites1));
        System.assert(bitlySites3.equals(bitlySites4));
        System.assert(bitlySites4.equals(bitlySites3));
        System.assert(bitlySites3.equals(bitlySites3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = OASBitlySites.getExample();
        OASBitlySites bitlySites3 = new OASBitlySites();
        OASBitlySites bitlySites4 = new OASBitlySites();

        System.assert(bitlySites1.equals(bitlySites2));
        System.assert(bitlySites2.equals(bitlySites1));
        System.assert(bitlySites3.equals(bitlySites4));
        System.assert(bitlySites4.equals(bitlySites3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = new OASBitlySites();

        System.assertEquals(false, bitlySites1.equals('foo'));
        System.assertEquals(false, bitlySites2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = new OASBitlySites();
        OASBitlySites bitlySites3;

        System.assertEquals(false, bitlySites1.equals(bitlySites3));
        System.assertEquals(false, bitlySites2.equals(bitlySites3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = new OASBitlySites();

        System.assertEquals(bitlySites1.hashCode(), bitlySites1.hashCode());
        System.assertEquals(bitlySites2.hashCode(), bitlySites2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySites bitlySites1 = OASBitlySites.getExample();
        OASBitlySites bitlySites2 = OASBitlySites.getExample();
        OASBitlySites bitlySites3 = new OASBitlySites();
        OASBitlySites bitlySites4 = new OASBitlySites();

        System.assert(bitlySites1.equals(bitlySites2));
        System.assert(bitlySites3.equals(bitlySites4));
        System.assertEquals(bitlySites1.hashCode(), bitlySites2.hashCode());
        System.assertEquals(bitlySites3.hashCode(), bitlySites4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySites bitlySites = new OASBitlySites();
        Map<String, String> propertymappings = bitlySites.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlySites bitlySites = new OASBitlySites();
        System.assertEquals(new List<OASBitlySite>(), bitlySites.sites);
        System.assertEquals(null, bitlySites.groupGuid);
    }
}