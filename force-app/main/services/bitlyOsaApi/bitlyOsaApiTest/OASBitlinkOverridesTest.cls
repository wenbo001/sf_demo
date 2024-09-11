@isTest
private class OASBitlinkOverridesTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = bitlinkOverrides1;
        OASBitlinkOverrides bitlinkOverrides3 = new OASBitlinkOverrides();
        OASBitlinkOverrides bitlinkOverrides4 = bitlinkOverrides3;

        System.assert(bitlinkOverrides1.equals(bitlinkOverrides2));
        System.assert(bitlinkOverrides2.equals(bitlinkOverrides1));
        System.assert(bitlinkOverrides1.equals(bitlinkOverrides1));
        System.assert(bitlinkOverrides3.equals(bitlinkOverrides4));
        System.assert(bitlinkOverrides4.equals(bitlinkOverrides3));
        System.assert(bitlinkOverrides3.equals(bitlinkOverrides3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides3 = new OASBitlinkOverrides();
        OASBitlinkOverrides bitlinkOverrides4 = new OASBitlinkOverrides();

        System.assert(bitlinkOverrides1.equals(bitlinkOverrides2));
        System.assert(bitlinkOverrides2.equals(bitlinkOverrides1));
        System.assert(bitlinkOverrides3.equals(bitlinkOverrides4));
        System.assert(bitlinkOverrides4.equals(bitlinkOverrides3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = new OASBitlinkOverrides();

        System.assertEquals(false, bitlinkOverrides1.equals('foo'));
        System.assertEquals(false, bitlinkOverrides2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = new OASBitlinkOverrides();
        OASBitlinkOverrides bitlinkOverrides3;

        System.assertEquals(false, bitlinkOverrides1.equals(bitlinkOverrides3));
        System.assertEquals(false, bitlinkOverrides2.equals(bitlinkOverrides3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = new OASBitlinkOverrides();

        System.assertEquals(bitlinkOverrides1.hashCode(), bitlinkOverrides1.hashCode());
        System.assertEquals(bitlinkOverrides2.hashCode(), bitlinkOverrides2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkOverrides bitlinkOverrides1 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides2 = OASBitlinkOverrides.getExample();
        OASBitlinkOverrides bitlinkOverrides3 = new OASBitlinkOverrides();
        OASBitlinkOverrides bitlinkOverrides4 = new OASBitlinkOverrides();

        System.assert(bitlinkOverrides1.equals(bitlinkOverrides2));
        System.assert(bitlinkOverrides3.equals(bitlinkOverrides4));
        System.assertEquals(bitlinkOverrides1.hashCode(), bitlinkOverrides2.hashCode());
        System.assertEquals(bitlinkOverrides3.hashCode(), bitlinkOverrides4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkOverrides bitlinkOverrides = new OASBitlinkOverrides();
        Map<String, String> propertymappings = bitlinkOverrides.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASBitlinkOverrides bitlinkOverrides = new OASBitlinkOverrides();
        System.assertEquals(new Map<String, String>(), bitlinkOverrides.references);
        System.assertEquals(null, bitlinkOverrides.id);
        System.assertEquals(null, bitlinkOverrides.rules);
        System.assertEquals(null, bitlinkOverrides.version);
        System.assertEquals(null, bitlinkOverrides.created);
        System.assertEquals(null, bitlinkOverrides.modified);
        System.assertEquals(null, bitlinkOverrides.link);
        System.assertEquals(null, bitlinkOverrides.groupGuid);
    }
}