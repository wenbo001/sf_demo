@isTest
private class OASUpdateCustomBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = updateCustomBitlink1;
        OASUpdateCustomBitlink updateCustomBitlink3 = new OASUpdateCustomBitlink();
        OASUpdateCustomBitlink updateCustomBitlink4 = updateCustomBitlink3;

        System.assert(updateCustomBitlink1.equals(updateCustomBitlink2));
        System.assert(updateCustomBitlink2.equals(updateCustomBitlink1));
        System.assert(updateCustomBitlink1.equals(updateCustomBitlink1));
        System.assert(updateCustomBitlink3.equals(updateCustomBitlink4));
        System.assert(updateCustomBitlink4.equals(updateCustomBitlink3));
        System.assert(updateCustomBitlink3.equals(updateCustomBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink3 = new OASUpdateCustomBitlink();
        OASUpdateCustomBitlink updateCustomBitlink4 = new OASUpdateCustomBitlink();

        System.assert(updateCustomBitlink1.equals(updateCustomBitlink2));
        System.assert(updateCustomBitlink2.equals(updateCustomBitlink1));
        System.assert(updateCustomBitlink3.equals(updateCustomBitlink4));
        System.assert(updateCustomBitlink4.equals(updateCustomBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = new OASUpdateCustomBitlink();

        System.assertEquals(false, updateCustomBitlink1.equals('foo'));
        System.assertEquals(false, updateCustomBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = new OASUpdateCustomBitlink();
        OASUpdateCustomBitlink updateCustomBitlink3;

        System.assertEquals(false, updateCustomBitlink1.equals(updateCustomBitlink3));
        System.assertEquals(false, updateCustomBitlink2.equals(updateCustomBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = new OASUpdateCustomBitlink();

        System.assertEquals(updateCustomBitlink1.hashCode(), updateCustomBitlink1.hashCode());
        System.assertEquals(updateCustomBitlink2.hashCode(), updateCustomBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASUpdateCustomBitlink updateCustomBitlink1 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink2 = OASUpdateCustomBitlink.getExample();
        OASUpdateCustomBitlink updateCustomBitlink3 = new OASUpdateCustomBitlink();
        OASUpdateCustomBitlink updateCustomBitlink4 = new OASUpdateCustomBitlink();

        System.assert(updateCustomBitlink1.equals(updateCustomBitlink2));
        System.assert(updateCustomBitlink3.equals(updateCustomBitlink4));
        System.assertEquals(updateCustomBitlink1.hashCode(), updateCustomBitlink2.hashCode());
        System.assertEquals(updateCustomBitlink3.hashCode(), updateCustomBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASUpdateCustomBitlink updateCustomBitlink = new OASUpdateCustomBitlink();
        Map<String, String> propertymappings = updateCustomBitlink.getPropertyMappings();
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}