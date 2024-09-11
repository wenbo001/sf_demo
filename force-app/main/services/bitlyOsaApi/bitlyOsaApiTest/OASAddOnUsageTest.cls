@isTest
private class OASAddOnUsageTest {
    @isTest
    private static void equalsSameInstance() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = addOnUsage1;
        OASAddOnUsage addOnUsage3 = new OASAddOnUsage();
        OASAddOnUsage addOnUsage4 = addOnUsage3;

        System.assert(addOnUsage1.equals(addOnUsage2));
        System.assert(addOnUsage2.equals(addOnUsage1));
        System.assert(addOnUsage1.equals(addOnUsage1));
        System.assert(addOnUsage3.equals(addOnUsage4));
        System.assert(addOnUsage4.equals(addOnUsage3));
        System.assert(addOnUsage3.equals(addOnUsage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage3 = new OASAddOnUsage();
        OASAddOnUsage addOnUsage4 = new OASAddOnUsage();

        System.assert(addOnUsage1.equals(addOnUsage2));
        System.assert(addOnUsage2.equals(addOnUsage1));
        System.assert(addOnUsage3.equals(addOnUsage4));
        System.assert(addOnUsage4.equals(addOnUsage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = new OASAddOnUsage();

        System.assertEquals(false, addOnUsage1.equals('foo'));
        System.assertEquals(false, addOnUsage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = new OASAddOnUsage();
        OASAddOnUsage addOnUsage3;

        System.assertEquals(false, addOnUsage1.equals(addOnUsage3));
        System.assertEquals(false, addOnUsage2.equals(addOnUsage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = new OASAddOnUsage();

        System.assertEquals(addOnUsage1.hashCode(), addOnUsage1.hashCode());
        System.assertEquals(addOnUsage2.hashCode(), addOnUsage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAddOnUsage addOnUsage1 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage2 = OASAddOnUsage.getExample();
        OASAddOnUsage addOnUsage3 = new OASAddOnUsage();
        OASAddOnUsage addOnUsage4 = new OASAddOnUsage();

        System.assert(addOnUsage1.equals(addOnUsage2));
        System.assert(addOnUsage3.equals(addOnUsage4));
        System.assertEquals(addOnUsage1.hashCode(), addOnUsage2.hashCode());
        System.assertEquals(addOnUsage3.hashCode(), addOnUsage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAddOnUsage addOnUsage = new OASAddOnUsage();
        Map<String, String> propertymappings = addOnUsage.getPropertyMappings();
        System.assertEquals('amountPurchased', propertymappings.get('amount_purchased'));
        System.assertEquals('amountAvailableForPurchase', propertymappings.get('amount_available_for_purchase'));
        System.assertEquals('amountUsed', propertymappings.get('amount_used'));
    }
}