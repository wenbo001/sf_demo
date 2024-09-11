@isTest
private class OASPromoCodeValidPlansTest {
    @isTest
    private static void equalsSameInstance() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = promoCodeValidPlans1;
        OASPromoCodeValidPlans promoCodeValidPlans3 = new OASPromoCodeValidPlans();
        OASPromoCodeValidPlans promoCodeValidPlans4 = promoCodeValidPlans3;

        System.assert(promoCodeValidPlans1.equals(promoCodeValidPlans2));
        System.assert(promoCodeValidPlans2.equals(promoCodeValidPlans1));
        System.assert(promoCodeValidPlans1.equals(promoCodeValidPlans1));
        System.assert(promoCodeValidPlans3.equals(promoCodeValidPlans4));
        System.assert(promoCodeValidPlans4.equals(promoCodeValidPlans3));
        System.assert(promoCodeValidPlans3.equals(promoCodeValidPlans3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans3 = new OASPromoCodeValidPlans();
        OASPromoCodeValidPlans promoCodeValidPlans4 = new OASPromoCodeValidPlans();

        System.assert(promoCodeValidPlans1.equals(promoCodeValidPlans2));
        System.assert(promoCodeValidPlans2.equals(promoCodeValidPlans1));
        System.assert(promoCodeValidPlans3.equals(promoCodeValidPlans4));
        System.assert(promoCodeValidPlans4.equals(promoCodeValidPlans3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = new OASPromoCodeValidPlans();

        System.assertEquals(false, promoCodeValidPlans1.equals('foo'));
        System.assertEquals(false, promoCodeValidPlans2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = new OASPromoCodeValidPlans();
        OASPromoCodeValidPlans promoCodeValidPlans3;

        System.assertEquals(false, promoCodeValidPlans1.equals(promoCodeValidPlans3));
        System.assertEquals(false, promoCodeValidPlans2.equals(promoCodeValidPlans3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = new OASPromoCodeValidPlans();

        System.assertEquals(promoCodeValidPlans1.hashCode(), promoCodeValidPlans1.hashCode());
        System.assertEquals(promoCodeValidPlans2.hashCode(), promoCodeValidPlans2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPromoCodeValidPlans promoCodeValidPlans1 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans2 = OASPromoCodeValidPlans.getExample();
        OASPromoCodeValidPlans promoCodeValidPlans3 = new OASPromoCodeValidPlans();
        OASPromoCodeValidPlans promoCodeValidPlans4 = new OASPromoCodeValidPlans();

        System.assert(promoCodeValidPlans1.equals(promoCodeValidPlans2));
        System.assert(promoCodeValidPlans3.equals(promoCodeValidPlans4));
        System.assertEquals(promoCodeValidPlans1.hashCode(), promoCodeValidPlans2.hashCode());
        System.assertEquals(promoCodeValidPlans3.hashCode(), promoCodeValidPlans4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPromoCodeValidPlans promoCodeValidPlans = new OASPromoCodeValidPlans();
        Map<String, String> propertymappings = promoCodeValidPlans.getPropertyMappings();
        System.assertEquals('validPlans', propertymappings.get('valid_plans'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPromoCodeValidPlans promoCodeValidPlans = new OASPromoCodeValidPlans();
        System.assertEquals(new List<String>(), promoCodeValidPlans.validPlans);
    }
}