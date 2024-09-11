@isTest
private class OASExpandedBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = expandedBitlink1;
        OASExpandedBitlink expandedBitlink3 = new OASExpandedBitlink();
        OASExpandedBitlink expandedBitlink4 = expandedBitlink3;

        System.assert(expandedBitlink1.equals(expandedBitlink2));
        System.assert(expandedBitlink2.equals(expandedBitlink1));
        System.assert(expandedBitlink1.equals(expandedBitlink1));
        System.assert(expandedBitlink3.equals(expandedBitlink4));
        System.assert(expandedBitlink4.equals(expandedBitlink3));
        System.assert(expandedBitlink3.equals(expandedBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink3 = new OASExpandedBitlink();
        OASExpandedBitlink expandedBitlink4 = new OASExpandedBitlink();

        System.assert(expandedBitlink1.equals(expandedBitlink2));
        System.assert(expandedBitlink2.equals(expandedBitlink1));
        System.assert(expandedBitlink3.equals(expandedBitlink4));
        System.assert(expandedBitlink4.equals(expandedBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = new OASExpandedBitlink();

        System.assertEquals(false, expandedBitlink1.equals('foo'));
        System.assertEquals(false, expandedBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = new OASExpandedBitlink();
        OASExpandedBitlink expandedBitlink3;

        System.assertEquals(false, expandedBitlink1.equals(expandedBitlink3));
        System.assertEquals(false, expandedBitlink2.equals(expandedBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = new OASExpandedBitlink();

        System.assertEquals(expandedBitlink1.hashCode(), expandedBitlink1.hashCode());
        System.assertEquals(expandedBitlink2.hashCode(), expandedBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExpandedBitlink expandedBitlink1 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink2 = OASExpandedBitlink.getExample();
        OASExpandedBitlink expandedBitlink3 = new OASExpandedBitlink();
        OASExpandedBitlink expandedBitlink4 = new OASExpandedBitlink();

        System.assert(expandedBitlink1.equals(expandedBitlink2));
        System.assert(expandedBitlink3.equals(expandedBitlink4));
        System.assertEquals(expandedBitlink1.hashCode(), expandedBitlink2.hashCode());
        System.assertEquals(expandedBitlink3.hashCode(), expandedBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExpandedBitlink expandedBitlink = new OASExpandedBitlink();
        Map<String, String> propertymappings = expandedBitlink.getPropertyMappings();
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('createdAt', propertymappings.get('created_at'));
    }
}