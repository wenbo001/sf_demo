@isTest
private class OASSubscriptionDiscountTest {
    @isTest
    private static void equalsSameInstance() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = subscriptionDiscount1;
        OASSubscriptionDiscount subscriptionDiscount3 = new OASSubscriptionDiscount();
        OASSubscriptionDiscount subscriptionDiscount4 = subscriptionDiscount3;

        System.assert(subscriptionDiscount1.equals(subscriptionDiscount2));
        System.assert(subscriptionDiscount2.equals(subscriptionDiscount1));
        System.assert(subscriptionDiscount1.equals(subscriptionDiscount1));
        System.assert(subscriptionDiscount3.equals(subscriptionDiscount4));
        System.assert(subscriptionDiscount4.equals(subscriptionDiscount3));
        System.assert(subscriptionDiscount3.equals(subscriptionDiscount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount3 = new OASSubscriptionDiscount();
        OASSubscriptionDiscount subscriptionDiscount4 = new OASSubscriptionDiscount();

        System.assert(subscriptionDiscount1.equals(subscriptionDiscount2));
        System.assert(subscriptionDiscount2.equals(subscriptionDiscount1));
        System.assert(subscriptionDiscount3.equals(subscriptionDiscount4));
        System.assert(subscriptionDiscount4.equals(subscriptionDiscount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = new OASSubscriptionDiscount();

        System.assertEquals(false, subscriptionDiscount1.equals('foo'));
        System.assertEquals(false, subscriptionDiscount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = new OASSubscriptionDiscount();
        OASSubscriptionDiscount subscriptionDiscount3;

        System.assertEquals(false, subscriptionDiscount1.equals(subscriptionDiscount3));
        System.assertEquals(false, subscriptionDiscount2.equals(subscriptionDiscount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = new OASSubscriptionDiscount();

        System.assertEquals(subscriptionDiscount1.hashCode(), subscriptionDiscount1.hashCode());
        System.assertEquals(subscriptionDiscount2.hashCode(), subscriptionDiscount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSubscriptionDiscount subscriptionDiscount1 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount2 = OASSubscriptionDiscount.getExample();
        OASSubscriptionDiscount subscriptionDiscount3 = new OASSubscriptionDiscount();
        OASSubscriptionDiscount subscriptionDiscount4 = new OASSubscriptionDiscount();

        System.assert(subscriptionDiscount1.equals(subscriptionDiscount2));
        System.assert(subscriptionDiscount3.equals(subscriptionDiscount4));
        System.assertEquals(subscriptionDiscount1.hashCode(), subscriptionDiscount2.hashCode());
        System.assertEquals(subscriptionDiscount3.hashCode(), subscriptionDiscount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSubscriptionDiscount subscriptionDiscount = new OASSubscriptionDiscount();
        Map<String, String> propertymappings = subscriptionDiscount.getPropertyMappings();
        System.assertEquals('billingPeriod', propertymappings.get('billing_period'));
        System.assertEquals('effectiveEndDate', propertymappings.get('effective_end_date'));
        System.assertEquals('effectiveStartDate', propertymappings.get('effective_start_date'));
        System.assertEquals('upToPeriodsType', propertymappings.get('up_to_periods_type'));
        System.assertEquals('productRatePlanChargeId', propertymappings.get('product_rate_plan_charge_id'));
        System.assertEquals('endDateCondition', propertymappings.get('end_date_condition'));
        System.assertEquals('upToPeriods', propertymappings.get('up_to_periods'));
        System.assertEquals('discountAmount', propertymappings.get('discount_amount'));
        System.assertEquals('discountPercentage', propertymappings.get('discount_percentage'));
    }
}