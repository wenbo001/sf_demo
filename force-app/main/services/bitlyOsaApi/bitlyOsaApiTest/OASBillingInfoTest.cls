@isTest
private class OASBillingInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = billingInfo1;
        OASBillingInfo billingInfo3 = new OASBillingInfo();
        OASBillingInfo billingInfo4 = billingInfo3;

        System.assert(billingInfo1.equals(billingInfo2));
        System.assert(billingInfo2.equals(billingInfo1));
        System.assert(billingInfo1.equals(billingInfo1));
        System.assert(billingInfo3.equals(billingInfo4));
        System.assert(billingInfo4.equals(billingInfo3));
        System.assert(billingInfo3.equals(billingInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo3 = new OASBillingInfo();
        OASBillingInfo billingInfo4 = new OASBillingInfo();

        System.assert(billingInfo1.equals(billingInfo2));
        System.assert(billingInfo2.equals(billingInfo1));
        System.assert(billingInfo3.equals(billingInfo4));
        System.assert(billingInfo4.equals(billingInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = new OASBillingInfo();

        System.assertEquals(false, billingInfo1.equals('foo'));
        System.assertEquals(false, billingInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = new OASBillingInfo();
        OASBillingInfo billingInfo3;

        System.assertEquals(false, billingInfo1.equals(billingInfo3));
        System.assertEquals(false, billingInfo2.equals(billingInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = new OASBillingInfo();

        System.assertEquals(billingInfo1.hashCode(), billingInfo1.hashCode());
        System.assertEquals(billingInfo2.hashCode(), billingInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASBillingInfo billingInfo1 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo2 = OASBillingInfo.getExample();
        OASBillingInfo billingInfo3 = new OASBillingInfo();
        OASBillingInfo billingInfo4 = new OASBillingInfo();

        System.assert(billingInfo1.equals(billingInfo2));
        System.assert(billingInfo3.equals(billingInfo4));
        System.assertEquals(billingInfo1.hashCode(), billingInfo2.hashCode());
        System.assertEquals(billingInfo3.hashCode(), billingInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASBillingInfo billingInfo = new OASBillingInfo();
        Map<String, String> propertymappings = billingInfo.getPropertyMappings();
        System.assertEquals('billingContact', propertymappings.get('billing_contact'));
        System.assertEquals('basicInfo', propertymappings.get('basic_info'));
        System.assertEquals('billingAddress', propertymappings.get('billing_address'));
    }
}