@isTest
private class OASSubscriptionCancelledDateTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = subscriptionCancelledDate1;
        OASSubscriptionCancelledDate subscriptionCancelledDate3 = new OASSubscriptionCancelledDate();
        OASSubscriptionCancelledDate subscriptionCancelledDate4 = subscriptionCancelledDate3;

        System.assert(subscriptionCancelledDate1.equals(subscriptionCancelledDate2));
        System.assert(subscriptionCancelledDate2.equals(subscriptionCancelledDate1));
        System.assert(subscriptionCancelledDate1.equals(subscriptionCancelledDate1));
        System.assert(subscriptionCancelledDate3.equals(subscriptionCancelledDate4));
        System.assert(subscriptionCancelledDate4.equals(subscriptionCancelledDate3));
        System.assert(subscriptionCancelledDate3.equals(subscriptionCancelledDate3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate3 = new OASSubscriptionCancelledDate();
        OASSubscriptionCancelledDate subscriptionCancelledDate4 = new OASSubscriptionCancelledDate();

        System.assert(subscriptionCancelledDate1.equals(subscriptionCancelledDate2));
        System.assert(subscriptionCancelledDate2.equals(subscriptionCancelledDate1));
        System.assert(subscriptionCancelledDate3.equals(subscriptionCancelledDate4));
        System.assert(subscriptionCancelledDate4.equals(subscriptionCancelledDate3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = new OASSubscriptionCancelledDate();

        System.assertEquals(false, subscriptionCancelledDate1.equals('foo'));
        System.assertEquals(false, subscriptionCancelledDate2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = new OASSubscriptionCancelledDate();
        OASSubscriptionCancelledDate subscriptionCancelledDate3;

        System.assertEquals(false, subscriptionCancelledDate1.equals(subscriptionCancelledDate3));
        System.assertEquals(false, subscriptionCancelledDate2.equals(subscriptionCancelledDate3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = new OASSubscriptionCancelledDate();

        System.assertEquals(subscriptionCancelledDate1.hashCode(), subscriptionCancelledDate1.hashCode());
        System.assertEquals(subscriptionCancelledDate2.hashCode(), subscriptionCancelledDate2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubscriptionCancelledDate subscriptionCancelledDate1 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate2 = OASSubscriptionCancelledDate.getExample();
        OASSubscriptionCancelledDate subscriptionCancelledDate3 = new OASSubscriptionCancelledDate();
        OASSubscriptionCancelledDate subscriptionCancelledDate4 = new OASSubscriptionCancelledDate();

        System.assert(subscriptionCancelledDate1.equals(subscriptionCancelledDate2));
        System.assert(subscriptionCancelledDate3.equals(subscriptionCancelledDate4));
        System.assertEquals(subscriptionCancelledDate1.hashCode(), subscriptionCancelledDate2.hashCode());
        System.assertEquals(subscriptionCancelledDate3.hashCode(), subscriptionCancelledDate4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSubscriptionCancelledDate subscriptionCancelledDate = new OASSubscriptionCancelledDate();
        Map<String, String> propertymappings = subscriptionCancelledDate.getPropertyMappings();
        System.assertEquals('subscriptionCancelledDate', propertymappings.get('subscription_cancelled_date'));
    }
}