@isTest
private class OASPromoCodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = promoCode1;
        OASPromoCode promoCode3 = new OASPromoCode();
        OASPromoCode promoCode4 = promoCode3;

        System.assert(promoCode1.equals(promoCode2));
        System.assert(promoCode2.equals(promoCode1));
        System.assert(promoCode1.equals(promoCode1));
        System.assert(promoCode3.equals(promoCode4));
        System.assert(promoCode4.equals(promoCode3));
        System.assert(promoCode3.equals(promoCode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = OASPromoCode.getExample();
        OASPromoCode promoCode3 = new OASPromoCode();
        OASPromoCode promoCode4 = new OASPromoCode();

        System.assert(promoCode1.equals(promoCode2));
        System.assert(promoCode2.equals(promoCode1));
        System.assert(promoCode3.equals(promoCode4));
        System.assert(promoCode4.equals(promoCode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = new OASPromoCode();

        System.assertEquals(false, promoCode1.equals('foo'));
        System.assertEquals(false, promoCode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = new OASPromoCode();
        OASPromoCode promoCode3;

        System.assertEquals(false, promoCode1.equals(promoCode3));
        System.assertEquals(false, promoCode2.equals(promoCode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = new OASPromoCode();

        System.assertEquals(promoCode1.hashCode(), promoCode1.hashCode());
        System.assertEquals(promoCode2.hashCode(), promoCode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPromoCode promoCode1 = OASPromoCode.getExample();
        OASPromoCode promoCode2 = OASPromoCode.getExample();
        OASPromoCode promoCode3 = new OASPromoCode();
        OASPromoCode promoCode4 = new OASPromoCode();

        System.assert(promoCode1.equals(promoCode2));
        System.assert(promoCode3.equals(promoCode4));
        System.assertEquals(promoCode1.hashCode(), promoCode2.hashCode());
        System.assertEquals(promoCode3.hashCode(), promoCode4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPromoCode promoCode = new OASPromoCode();
        Map<String, String> propertymappings = promoCode.getPropertyMappings();
        System.assertEquals('promoCode', propertymappings.get('promo_code'));
        System.assertEquals('isValid', propertymappings.get('is_valid'));
        System.assertEquals('discountType', propertymappings.get('discount_type'));
        System.assertEquals('discountAmount', propertymappings.get('discount_amount'));
        System.assertEquals('numPeriodsToApplyDiscount', propertymappings.get('num_periods_to_apply_discount'));
        System.assertEquals('numPeriodsToApplyDiscountType', propertymappings.get('num_periods_to_apply_discount_type'));
        System.assertEquals('validPlans', propertymappings.get('valid_plans'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPromoCode promoCode = new OASPromoCode();
        System.assertEquals(new List<String>(), promoCode.validPlans);
        System.assertEquals(null, promoCode.promoCode);
        System.assertEquals(null, promoCode.isValid);
        System.assertEquals(null, promoCode.discountType);
        System.assertEquals(null, promoCode.discountAmount);
        System.assertEquals(null, promoCode.numPeriodsToApplyDiscount);
        System.assertEquals(null, promoCode.numPeriodsToApplyDiscountType);
    }
}