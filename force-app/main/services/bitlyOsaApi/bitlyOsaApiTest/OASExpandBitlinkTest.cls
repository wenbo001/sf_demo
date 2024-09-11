@isTest
private class OASExpandBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = expandBitlink1;
        OASExpandBitlink expandBitlink3 = new OASExpandBitlink();
        OASExpandBitlink expandBitlink4 = expandBitlink3;

        System.assert(expandBitlink1.equals(expandBitlink2));
        System.assert(expandBitlink2.equals(expandBitlink1));
        System.assert(expandBitlink1.equals(expandBitlink1));
        System.assert(expandBitlink3.equals(expandBitlink4));
        System.assert(expandBitlink4.equals(expandBitlink3));
        System.assert(expandBitlink3.equals(expandBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink3 = new OASExpandBitlink();
        OASExpandBitlink expandBitlink4 = new OASExpandBitlink();

        System.assert(expandBitlink1.equals(expandBitlink2));
        System.assert(expandBitlink2.equals(expandBitlink1));
        System.assert(expandBitlink3.equals(expandBitlink4));
        System.assert(expandBitlink4.equals(expandBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = new OASExpandBitlink();

        System.assertEquals(false, expandBitlink1.equals('foo'));
        System.assertEquals(false, expandBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = new OASExpandBitlink();
        OASExpandBitlink expandBitlink3;

        System.assertEquals(false, expandBitlink1.equals(expandBitlink3));
        System.assertEquals(false, expandBitlink2.equals(expandBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = new OASExpandBitlink();

        System.assertEquals(expandBitlink1.hashCode(), expandBitlink1.hashCode());
        System.assertEquals(expandBitlink2.hashCode(), expandBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExpandBitlink expandBitlink1 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink2 = OASExpandBitlink.getExample();
        OASExpandBitlink expandBitlink3 = new OASExpandBitlink();
        OASExpandBitlink expandBitlink4 = new OASExpandBitlink();

        System.assert(expandBitlink1.equals(expandBitlink2));
        System.assert(expandBitlink3.equals(expandBitlink4));
        System.assertEquals(expandBitlink1.hashCode(), expandBitlink2.hashCode());
        System.assertEquals(expandBitlink3.hashCode(), expandBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExpandBitlink expandBitlink = new OASExpandBitlink();
        Map<String, String> propertymappings = expandBitlink.getPropertyMappings();
        System.assertEquals('bitlinkId', propertymappings.get('bitlink_id'));
    }
}