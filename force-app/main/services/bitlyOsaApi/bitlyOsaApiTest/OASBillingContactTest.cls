@isTest
private class OASBillingContactTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = billingContact1;
        OASBillingContact billingContact3 = new OASBillingContact();
        OASBillingContact billingContact4 = billingContact3;

        System.assert(billingContact1.equals(billingContact2));
        System.assert(billingContact2.equals(billingContact1));
        System.assert(billingContact1.equals(billingContact1));
        System.assert(billingContact3.equals(billingContact4));
        System.assert(billingContact4.equals(billingContact3));
        System.assert(billingContact3.equals(billingContact3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = OASBillingContact.getExample();
        OASBillingContact billingContact3 = new OASBillingContact();
        OASBillingContact billingContact4 = new OASBillingContact();

        System.assert(billingContact1.equals(billingContact2));
        System.assert(billingContact2.equals(billingContact1));
        System.assert(billingContact3.equals(billingContact4));
        System.assert(billingContact4.equals(billingContact3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = new OASBillingContact();

        System.assertEquals(false, billingContact1.equals('foo'));
        System.assertEquals(false, billingContact2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = new OASBillingContact();
        OASBillingContact billingContact3;

        System.assertEquals(false, billingContact1.equals(billingContact3));
        System.assertEquals(false, billingContact2.equals(billingContact3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = new OASBillingContact();

        System.assertEquals(billingContact1.hashCode(), billingContact1.hashCode());
        System.assertEquals(billingContact2.hashCode(), billingContact2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingContact billingContact1 = OASBillingContact.getExample();
        OASBillingContact billingContact2 = OASBillingContact.getExample();
        OASBillingContact billingContact3 = new OASBillingContact();
        OASBillingContact billingContact4 = new OASBillingContact();

        System.assert(billingContact1.equals(billingContact2));
        System.assert(billingContact3.equals(billingContact4));
        System.assertEquals(billingContact1.hashCode(), billingContact2.hashCode());
        System.assertEquals(billingContact3.hashCode(), billingContact4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingContact billingContact = new OASBillingContact();
        Map<String, String> propertymappings = billingContact.getPropertyMappings();
        System.assertEquals('billingContactId', propertymappings.get('billing_contact_id'));
        System.assertEquals('firstName', propertymappings.get('first_name'));
        System.assertEquals('lastName', propertymappings.get('last_name'));
    }
}