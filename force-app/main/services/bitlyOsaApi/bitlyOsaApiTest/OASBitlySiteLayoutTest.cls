@isTest
private class OASBitlySiteLayoutTest {
    @isTest
    private static void equalsSameInstance() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = bitlySiteLayout1;
        OASBitlySiteLayout bitlySiteLayout3 = new OASBitlySiteLayout();
        OASBitlySiteLayout bitlySiteLayout4 = bitlySiteLayout3;

        System.assert(bitlySiteLayout1.equals(bitlySiteLayout2));
        System.assert(bitlySiteLayout2.equals(bitlySiteLayout1));
        System.assert(bitlySiteLayout1.equals(bitlySiteLayout1));
        System.assert(bitlySiteLayout3.equals(bitlySiteLayout4));
        System.assert(bitlySiteLayout4.equals(bitlySiteLayout3));
        System.assert(bitlySiteLayout3.equals(bitlySiteLayout3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout3 = new OASBitlySiteLayout();
        OASBitlySiteLayout bitlySiteLayout4 = new OASBitlySiteLayout();

        System.assert(bitlySiteLayout1.equals(bitlySiteLayout2));
        System.assert(bitlySiteLayout2.equals(bitlySiteLayout1));
        System.assert(bitlySiteLayout3.equals(bitlySiteLayout4));
        System.assert(bitlySiteLayout4.equals(bitlySiteLayout3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = new OASBitlySiteLayout();

        System.assertEquals(false, bitlySiteLayout1.equals('foo'));
        System.assertEquals(false, bitlySiteLayout2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = new OASBitlySiteLayout();
        OASBitlySiteLayout bitlySiteLayout3;

        System.assertEquals(false, bitlySiteLayout1.equals(bitlySiteLayout3));
        System.assertEquals(false, bitlySiteLayout2.equals(bitlySiteLayout3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = new OASBitlySiteLayout();

        System.assertEquals(bitlySiteLayout1.hashCode(), bitlySiteLayout1.hashCode());
        System.assertEquals(bitlySiteLayout2.hashCode(), bitlySiteLayout2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBitlySiteLayout bitlySiteLayout1 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout2 = OASBitlySiteLayout.getExample();
        OASBitlySiteLayout bitlySiteLayout3 = new OASBitlySiteLayout();
        OASBitlySiteLayout bitlySiteLayout4 = new OASBitlySiteLayout();

        System.assert(bitlySiteLayout1.equals(bitlySiteLayout2));
        System.assert(bitlySiteLayout3.equals(bitlySiteLayout4));
        System.assertEquals(bitlySiteLayout1.hashCode(), bitlySiteLayout2.hashCode());
        System.assertEquals(bitlySiteLayout3.hashCode(), bitlySiteLayout4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBitlySiteLayout bitlySiteLayout = new OASBitlySiteLayout();
        Map<String, String> propertymappings = bitlySiteLayout.getPropertyMappings();
        System.assertEquals('headerAppearance', propertymappings.get('header_appearance'));
        System.assertEquals('isPaid', propertymappings.get('is_paid'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}