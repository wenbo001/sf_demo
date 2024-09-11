@isTest
private class OASBitlySiteContentTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = bitlySiteContent1;
        OASBitlySiteContent bitlySiteContent3 = new OASBitlySiteContent();
        OASBitlySiteContent bitlySiteContent4 = bitlySiteContent3;

        System.assert(bitlySiteContent1.equals(bitlySiteContent2));
        System.assert(bitlySiteContent2.equals(bitlySiteContent1));
        System.assert(bitlySiteContent1.equals(bitlySiteContent1));
        System.assert(bitlySiteContent3.equals(bitlySiteContent4));
        System.assert(bitlySiteContent4.equals(bitlySiteContent3));
        System.assert(bitlySiteContent3.equals(bitlySiteContent3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent3 = new OASBitlySiteContent();
        OASBitlySiteContent bitlySiteContent4 = new OASBitlySiteContent();

        System.assert(bitlySiteContent1.equals(bitlySiteContent2));
        System.assert(bitlySiteContent2.equals(bitlySiteContent1));
        System.assert(bitlySiteContent3.equals(bitlySiteContent4));
        System.assert(bitlySiteContent4.equals(bitlySiteContent3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = new OASBitlySiteContent();

        System.assertEquals(false, bitlySiteContent1.equals('foo'));
        System.assertEquals(false, bitlySiteContent2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = new OASBitlySiteContent();
        OASBitlySiteContent bitlySiteContent3;

        System.assertEquals(false, bitlySiteContent1.equals(bitlySiteContent3));
        System.assertEquals(false, bitlySiteContent2.equals(bitlySiteContent3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = new OASBitlySiteContent();

        System.assertEquals(bitlySiteContent1.hashCode(), bitlySiteContent1.hashCode());
        System.assertEquals(bitlySiteContent2.hashCode(), bitlySiteContent2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySiteContent bitlySiteContent1 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent2 = OASBitlySiteContent.getExample();
        OASBitlySiteContent bitlySiteContent3 = new OASBitlySiteContent();
        OASBitlySiteContent bitlySiteContent4 = new OASBitlySiteContent();

        System.assert(bitlySiteContent1.equals(bitlySiteContent2));
        System.assert(bitlySiteContent3.equals(bitlySiteContent4));
        System.assertEquals(bitlySiteContent1.hashCode(), bitlySiteContent2.hashCode());
        System.assertEquals(bitlySiteContent3.hashCode(), bitlySiteContent4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySiteContent bitlySiteContent = new OASBitlySiteContent();
        Map<String, String> propertymappings = bitlySiteContent.getPropertyMappings();
        System.assertEquals('displayName', propertymappings.get('display_name'));
    }
}