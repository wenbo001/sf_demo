@isTest
private class OASApplyDiscountTest {
    @isTest
    private static void equalsSameInstance() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = applyDiscount1;
        OASApplyDiscount applyDiscount3 = new OASApplyDiscount();
        OASApplyDiscount applyDiscount4 = applyDiscount3;

        System.assert(applyDiscount1.equals(applyDiscount2));
        System.assert(applyDiscount2.equals(applyDiscount1));
        System.assert(applyDiscount1.equals(applyDiscount1));
        System.assert(applyDiscount3.equals(applyDiscount4));
        System.assert(applyDiscount4.equals(applyDiscount3));
        System.assert(applyDiscount3.equals(applyDiscount3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount3 = new OASApplyDiscount();
        OASApplyDiscount applyDiscount4 = new OASApplyDiscount();

        System.assert(applyDiscount1.equals(applyDiscount2));
        System.assert(applyDiscount2.equals(applyDiscount1));
        System.assert(applyDiscount3.equals(applyDiscount4));
        System.assert(applyDiscount4.equals(applyDiscount3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = new OASApplyDiscount();

        System.assertEquals(false, applyDiscount1.equals('foo'));
        System.assertEquals(false, applyDiscount2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = new OASApplyDiscount();
        OASApplyDiscount applyDiscount3;

        System.assertEquals(false, applyDiscount1.equals(applyDiscount3));
        System.assertEquals(false, applyDiscount2.equals(applyDiscount3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = new OASApplyDiscount();

        System.assertEquals(applyDiscount1.hashCode(), applyDiscount1.hashCode());
        System.assertEquals(applyDiscount2.hashCode(), applyDiscount2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASApplyDiscount applyDiscount1 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount2 = OASApplyDiscount.getExample();
        OASApplyDiscount applyDiscount3 = new OASApplyDiscount();
        OASApplyDiscount applyDiscount4 = new OASApplyDiscount();

        System.assert(applyDiscount1.equals(applyDiscount2));
        System.assert(applyDiscount3.equals(applyDiscount4));
        System.assertEquals(applyDiscount1.hashCode(), applyDiscount2.hashCode());
        System.assertEquals(applyDiscount3.hashCode(), applyDiscount4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASApplyDiscount applyDiscount = new OASApplyDiscount();
        Map<String, String> propertymappings = applyDiscount.getPropertyMappings();
        System.assertEquals('promoCode', propertymappings.get('promo_code'));
    }
}