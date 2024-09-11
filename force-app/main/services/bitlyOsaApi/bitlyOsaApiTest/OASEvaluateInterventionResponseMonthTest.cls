@isTest
private class OASEvaluateInterventionResponseMonthTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = evaluateInterventionResponseMonthlyPromo1;
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo3 = new OASEvaluateInterventionResponseMonth();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo4 = evaluateInterventionResponseMonthlyPromo3;

        System.assert(evaluateInterventionResponseMonthlyPromo1.equals(evaluateInterventionResponseMonthlyPromo2));
        System.assert(evaluateInterventionResponseMonthlyPromo2.equals(evaluateInterventionResponseMonthlyPromo1));
        System.assert(evaluateInterventionResponseMonthlyPromo1.equals(evaluateInterventionResponseMonthlyPromo1));
        System.assert(evaluateInterventionResponseMonthlyPromo3.equals(evaluateInterventionResponseMonthlyPromo4));
        System.assert(evaluateInterventionResponseMonthlyPromo4.equals(evaluateInterventionResponseMonthlyPromo3));
        System.assert(evaluateInterventionResponseMonthlyPromo3.equals(evaluateInterventionResponseMonthlyPromo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo3 = new OASEvaluateInterventionResponseMonth();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo4 = new OASEvaluateInterventionResponseMonth();

        System.assert(evaluateInterventionResponseMonthlyPromo1.equals(evaluateInterventionResponseMonthlyPromo2));
        System.assert(evaluateInterventionResponseMonthlyPromo2.equals(evaluateInterventionResponseMonthlyPromo1));
        System.assert(evaluateInterventionResponseMonthlyPromo3.equals(evaluateInterventionResponseMonthlyPromo4));
        System.assert(evaluateInterventionResponseMonthlyPromo4.equals(evaluateInterventionResponseMonthlyPromo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = new OASEvaluateInterventionResponseMonth();

        System.assertEquals(false, evaluateInterventionResponseMonthlyPromo1.equals('foo'));
        System.assertEquals(false, evaluateInterventionResponseMonthlyPromo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = new OASEvaluateInterventionResponseMonth();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo3;

        System.assertEquals(false, evaluateInterventionResponseMonthlyPromo1.equals(evaluateInterventionResponseMonthlyPromo3));
        System.assertEquals(false, evaluateInterventionResponseMonthlyPromo2.equals(evaluateInterventionResponseMonthlyPromo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = new OASEvaluateInterventionResponseMonth();

        System.assertEquals(evaluateInterventionResponseMonthlyPromo1.hashCode(), evaluateInterventionResponseMonthlyPromo1.hashCode());
        System.assertEquals(evaluateInterventionResponseMonthlyPromo2.hashCode(), evaluateInterventionResponseMonthlyPromo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo1 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo2 = OASEvaluateInterventionResponseMonth.getExample();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo3 = new OASEvaluateInterventionResponseMonth();
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo4 = new OASEvaluateInterventionResponseMonth();

        System.assert(evaluateInterventionResponseMonthlyPromo1.equals(evaluateInterventionResponseMonthlyPromo2));
        System.assert(evaluateInterventionResponseMonthlyPromo3.equals(evaluateInterventionResponseMonthlyPromo4));
        System.assertEquals(evaluateInterventionResponseMonthlyPromo1.hashCode(), evaluateInterventionResponseMonthlyPromo2.hashCode());
        System.assertEquals(evaluateInterventionResponseMonthlyPromo3.hashCode(), evaluateInterventionResponseMonthlyPromo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo = new OASEvaluateInterventionResponseMonth();
        Map<String, String> propertymappings = evaluateInterventionResponseMonthlyPromo.getPropertyMappings();
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
        OASEvaluateInterventionResponseMonth evaluateInterventionResponseMonthlyPromo = new OASEvaluateInterventionResponseMonth();
        System.assertEquals(new List<String>(), evaluateInterventionResponseMonthlyPromo.validPlans);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.promoCode);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.isValid);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.discountType);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.discountAmount);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.numPeriodsToApplyDiscount);
        System.assertEquals(null, evaluateInterventionResponseMonthlyPromo.numPeriodsToApplyDiscountType);
    }
}