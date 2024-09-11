@isTest
private class OASBillingAccountIDTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = billingAccountID1;
        OASBillingAccountID billingAccountID3 = new OASBillingAccountID();
        OASBillingAccountID billingAccountID4 = billingAccountID3;

        System.assert(billingAccountID1.equals(billingAccountID2));
        System.assert(billingAccountID2.equals(billingAccountID1));
        System.assert(billingAccountID1.equals(billingAccountID1));
        System.assert(billingAccountID3.equals(billingAccountID4));
        System.assert(billingAccountID4.equals(billingAccountID3));
        System.assert(billingAccountID3.equals(billingAccountID3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID3 = new OASBillingAccountID();
        OASBillingAccountID billingAccountID4 = new OASBillingAccountID();

        System.assert(billingAccountID1.equals(billingAccountID2));
        System.assert(billingAccountID2.equals(billingAccountID1));
        System.assert(billingAccountID3.equals(billingAccountID4));
        System.assert(billingAccountID4.equals(billingAccountID3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = new OASBillingAccountID();

        System.assertEquals(false, billingAccountID1.equals('foo'));
        System.assertEquals(false, billingAccountID2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = new OASBillingAccountID();
        OASBillingAccountID billingAccountID3;

        System.assertEquals(false, billingAccountID1.equals(billingAccountID3));
        System.assertEquals(false, billingAccountID2.equals(billingAccountID3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = new OASBillingAccountID();

        System.assertEquals(billingAccountID1.hashCode(), billingAccountID1.hashCode());
        System.assertEquals(billingAccountID2.hashCode(), billingAccountID2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingAccountID billingAccountID1 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID2 = OASBillingAccountID.getExample();
        OASBillingAccountID billingAccountID3 = new OASBillingAccountID();
        OASBillingAccountID billingAccountID4 = new OASBillingAccountID();

        System.assert(billingAccountID1.equals(billingAccountID2));
        System.assert(billingAccountID3.equals(billingAccountID4));
        System.assertEquals(billingAccountID1.hashCode(), billingAccountID2.hashCode());
        System.assertEquals(billingAccountID3.hashCode(), billingAccountID4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingAccountID billingAccountID = new OASBillingAccountID();
        Map<String, String> propertymappings = billingAccountID.getPropertyMappings();
        System.assertEquals('billingAccountId', propertymappings.get('billing_account_id'));
    }
}