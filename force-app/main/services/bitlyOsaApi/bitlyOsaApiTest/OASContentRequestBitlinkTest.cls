@isTest
private class OASContentRequestBitlinkTest {
    @isTest
    private static void equalsSameInstance() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = contentRequestBitlink1;
        OASContentRequestBitlink contentRequestBitlink3 = new OASContentRequestBitlink();
        OASContentRequestBitlink contentRequestBitlink4 = contentRequestBitlink3;

        System.assert(contentRequestBitlink1.equals(contentRequestBitlink2));
        System.assert(contentRequestBitlink2.equals(contentRequestBitlink1));
        System.assert(contentRequestBitlink1.equals(contentRequestBitlink1));
        System.assert(contentRequestBitlink3.equals(contentRequestBitlink4));
        System.assert(contentRequestBitlink4.equals(contentRequestBitlink3));
        System.assert(contentRequestBitlink3.equals(contentRequestBitlink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink3 = new OASContentRequestBitlink();
        OASContentRequestBitlink contentRequestBitlink4 = new OASContentRequestBitlink();

        System.assert(contentRequestBitlink1.equals(contentRequestBitlink2));
        System.assert(contentRequestBitlink2.equals(contentRequestBitlink1));
        System.assert(contentRequestBitlink3.equals(contentRequestBitlink4));
        System.assert(contentRequestBitlink4.equals(contentRequestBitlink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = new OASContentRequestBitlink();

        System.assertEquals(false, contentRequestBitlink1.equals('foo'));
        System.assertEquals(false, contentRequestBitlink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = new OASContentRequestBitlink();
        OASContentRequestBitlink contentRequestBitlink3;

        System.assertEquals(false, contentRequestBitlink1.equals(contentRequestBitlink3));
        System.assertEquals(false, contentRequestBitlink2.equals(contentRequestBitlink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = new OASContentRequestBitlink();

        System.assertEquals(contentRequestBitlink1.hashCode(), contentRequestBitlink1.hashCode());
        System.assertEquals(contentRequestBitlink2.hashCode(), contentRequestBitlink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASContentRequestBitlink contentRequestBitlink1 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink2 = OASContentRequestBitlink.getExample();
        OASContentRequestBitlink contentRequestBitlink3 = new OASContentRequestBitlink();
        OASContentRequestBitlink contentRequestBitlink4 = new OASContentRequestBitlink();

        System.assert(contentRequestBitlink1.equals(contentRequestBitlink2));
        System.assert(contentRequestBitlink3.equals(contentRequestBitlink4));
        System.assertEquals(contentRequestBitlink1.hashCode(), contentRequestBitlink2.hashCode());
        System.assertEquals(contentRequestBitlink3.hashCode(), contentRequestBitlink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASContentRequestBitlink contentRequestBitlink = new OASContentRequestBitlink();
        Map<String, String> propertymappings = contentRequestBitlink.getPropertyMappings();
        System.assertEquals('isPinned', propertymappings.get('is_pinned'));
    }
}