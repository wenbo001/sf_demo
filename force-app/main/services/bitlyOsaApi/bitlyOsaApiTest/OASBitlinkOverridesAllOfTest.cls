@isTest
private class OASBitlinkOverridesAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = bitlinkOverridesAllOf1;
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf3 = new OASBitlinkOverridesAllOf();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf4 = bitlinkOverridesAllOf3;

        System.assert(bitlinkOverridesAllOf1.equals(bitlinkOverridesAllOf2));
        System.assert(bitlinkOverridesAllOf2.equals(bitlinkOverridesAllOf1));
        System.assert(bitlinkOverridesAllOf1.equals(bitlinkOverridesAllOf1));
        System.assert(bitlinkOverridesAllOf3.equals(bitlinkOverridesAllOf4));
        System.assert(bitlinkOverridesAllOf4.equals(bitlinkOverridesAllOf3));
        System.assert(bitlinkOverridesAllOf3.equals(bitlinkOverridesAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf3 = new OASBitlinkOverridesAllOf();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf4 = new OASBitlinkOverridesAllOf();

        System.assert(bitlinkOverridesAllOf1.equals(bitlinkOverridesAllOf2));
        System.assert(bitlinkOverridesAllOf2.equals(bitlinkOverridesAllOf1));
        System.assert(bitlinkOverridesAllOf3.equals(bitlinkOverridesAllOf4));
        System.assert(bitlinkOverridesAllOf4.equals(bitlinkOverridesAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = new OASBitlinkOverridesAllOf();

        System.assertEquals(false, bitlinkOverridesAllOf1.equals('foo'));
        System.assertEquals(false, bitlinkOverridesAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = new OASBitlinkOverridesAllOf();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf3;

        System.assertEquals(false, bitlinkOverridesAllOf1.equals(bitlinkOverridesAllOf3));
        System.assertEquals(false, bitlinkOverridesAllOf2.equals(bitlinkOverridesAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = new OASBitlinkOverridesAllOf();

        System.assertEquals(bitlinkOverridesAllOf1.hashCode(), bitlinkOverridesAllOf1.hashCode());
        System.assertEquals(bitlinkOverridesAllOf2.hashCode(), bitlinkOverridesAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf1 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf2 = OASBitlinkOverridesAllOf.getExample();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf3 = new OASBitlinkOverridesAllOf();
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf4 = new OASBitlinkOverridesAllOf();

        System.assert(bitlinkOverridesAllOf1.equals(bitlinkOverridesAllOf2));
        System.assert(bitlinkOverridesAllOf3.equals(bitlinkOverridesAllOf4));
        System.assertEquals(bitlinkOverridesAllOf1.hashCode(), bitlinkOverridesAllOf2.hashCode());
        System.assertEquals(bitlinkOverridesAllOf3.hashCode(), bitlinkOverridesAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlinkOverridesAllOf bitlinkOverridesAllOf = new OASBitlinkOverridesAllOf();
        Map<String, String> propertymappings = bitlinkOverridesAllOf.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
    }
}