@isTest
private class OASChargesTest {
    @isTest
    private static void equalsSameInstance() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = charges1;
        OASCharges charges3 = new OASCharges();
        OASCharges charges4 = charges3;

        System.assert(charges1.equals(charges2));
        System.assert(charges2.equals(charges1));
        System.assert(charges1.equals(charges1));
        System.assert(charges3.equals(charges4));
        System.assert(charges4.equals(charges3));
        System.assert(charges3.equals(charges3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = OASCharges.getExample();
        OASCharges charges3 = new OASCharges();
        OASCharges charges4 = new OASCharges();

        System.assert(charges1.equals(charges2));
        System.assert(charges2.equals(charges1));
        System.assert(charges3.equals(charges4));
        System.assert(charges4.equals(charges3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = new OASCharges();

        System.assertEquals(false, charges1.equals('foo'));
        System.assertEquals(false, charges2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = new OASCharges();
        OASCharges charges3;

        System.assertEquals(false, charges1.equals(charges3));
        System.assertEquals(false, charges2.equals(charges3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = new OASCharges();

        System.assertEquals(charges1.hashCode(), charges1.hashCode());
        System.assertEquals(charges2.hashCode(), charges2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCharges charges1 = OASCharges.getExample();
        OASCharges charges2 = OASCharges.getExample();
        OASCharges charges3 = new OASCharges();
        OASCharges charges4 = new OASCharges();

        System.assert(charges1.equals(charges2));
        System.assert(charges3.equals(charges4));
        System.assertEquals(charges1.hashCode(), charges2.hashCode());
        System.assertEquals(charges3.hashCode(), charges4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCharges charges = new OASCharges();
        Map<String, String> propertymappings = charges.getPropertyMappings();
        System.assertEquals('chargeAmount', propertymappings.get('charge_amount'));
        System.assertEquals('chargeName', propertymappings.get('charge_name'));
        System.assertEquals('processingType', propertymappings.get('processing_type'));
        System.assertEquals('taxAmount', propertymappings.get('tax_amount'));
    }
}