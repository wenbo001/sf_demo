@isTest
private class OASMonthlyLimitExceededTest {
    @isTest
    private static void equalsSameInstance() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = monthlyLimitExceeded1;
        OASMonthlyLimitExceeded monthlyLimitExceeded3 = new OASMonthlyLimitExceeded();
        OASMonthlyLimitExceeded monthlyLimitExceeded4 = monthlyLimitExceeded3;

        System.assert(monthlyLimitExceeded1.equals(monthlyLimitExceeded2));
        System.assert(monthlyLimitExceeded2.equals(monthlyLimitExceeded1));
        System.assert(monthlyLimitExceeded1.equals(monthlyLimitExceeded1));
        System.assert(monthlyLimitExceeded3.equals(monthlyLimitExceeded4));
        System.assert(monthlyLimitExceeded4.equals(monthlyLimitExceeded3));
        System.assert(monthlyLimitExceeded3.equals(monthlyLimitExceeded3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded3 = new OASMonthlyLimitExceeded();
        OASMonthlyLimitExceeded monthlyLimitExceeded4 = new OASMonthlyLimitExceeded();

        System.assert(monthlyLimitExceeded1.equals(monthlyLimitExceeded2));
        System.assert(monthlyLimitExceeded2.equals(monthlyLimitExceeded1));
        System.assert(monthlyLimitExceeded3.equals(monthlyLimitExceeded4));
        System.assert(monthlyLimitExceeded4.equals(monthlyLimitExceeded3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = new OASMonthlyLimitExceeded();

        System.assertEquals(false, monthlyLimitExceeded1.equals('foo'));
        System.assertEquals(false, monthlyLimitExceeded2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = new OASMonthlyLimitExceeded();
        OASMonthlyLimitExceeded monthlyLimitExceeded3;

        System.assertEquals(false, monthlyLimitExceeded1.equals(monthlyLimitExceeded3));
        System.assertEquals(false, monthlyLimitExceeded2.equals(monthlyLimitExceeded3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = new OASMonthlyLimitExceeded();

        System.assertEquals(monthlyLimitExceeded1.hashCode(), monthlyLimitExceeded1.hashCode());
        System.assertEquals(monthlyLimitExceeded2.hashCode(), monthlyLimitExceeded2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASMonthlyLimitExceeded monthlyLimitExceeded1 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded2 = OASMonthlyLimitExceeded.getExample();
        OASMonthlyLimitExceeded monthlyLimitExceeded3 = new OASMonthlyLimitExceeded();
        OASMonthlyLimitExceeded monthlyLimitExceeded4 = new OASMonthlyLimitExceeded();

        System.assert(monthlyLimitExceeded1.equals(monthlyLimitExceeded2));
        System.assert(monthlyLimitExceeded3.equals(monthlyLimitExceeded4));
        System.assertEquals(monthlyLimitExceeded1.hashCode(), monthlyLimitExceeded2.hashCode());
        System.assertEquals(monthlyLimitExceeded3.hashCode(), monthlyLimitExceeded4.hashCode());
    }
}