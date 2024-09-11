@isTest
private class OASLaunchpadsPaginationTest {
    @isTest
    private static void equalsSameInstance() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = launchpadsPagination1;
        OASLaunchpadsPagination launchpadsPagination3 = new OASLaunchpadsPagination();
        OASLaunchpadsPagination launchpadsPagination4 = launchpadsPagination3;

        System.assert(launchpadsPagination1.equals(launchpadsPagination2));
        System.assert(launchpadsPagination2.equals(launchpadsPagination1));
        System.assert(launchpadsPagination1.equals(launchpadsPagination1));
        System.assert(launchpadsPagination3.equals(launchpadsPagination4));
        System.assert(launchpadsPagination4.equals(launchpadsPagination3));
        System.assert(launchpadsPagination3.equals(launchpadsPagination3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination3 = new OASLaunchpadsPagination();
        OASLaunchpadsPagination launchpadsPagination4 = new OASLaunchpadsPagination();

        System.assert(launchpadsPagination1.equals(launchpadsPagination2));
        System.assert(launchpadsPagination2.equals(launchpadsPagination1));
        System.assert(launchpadsPagination3.equals(launchpadsPagination4));
        System.assert(launchpadsPagination4.equals(launchpadsPagination3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = new OASLaunchpadsPagination();

        System.assertEquals(false, launchpadsPagination1.equals('foo'));
        System.assertEquals(false, launchpadsPagination2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = new OASLaunchpadsPagination();
        OASLaunchpadsPagination launchpadsPagination3;

        System.assertEquals(false, launchpadsPagination1.equals(launchpadsPagination3));
        System.assertEquals(false, launchpadsPagination2.equals(launchpadsPagination3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = new OASLaunchpadsPagination();

        System.assertEquals(launchpadsPagination1.hashCode(), launchpadsPagination1.hashCode());
        System.assertEquals(launchpadsPagination2.hashCode(), launchpadsPagination2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLaunchpadsPagination launchpadsPagination1 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination2 = OASLaunchpadsPagination.getExample();
        OASLaunchpadsPagination launchpadsPagination3 = new OASLaunchpadsPagination();
        OASLaunchpadsPagination launchpadsPagination4 = new OASLaunchpadsPagination();

        System.assert(launchpadsPagination1.equals(launchpadsPagination2));
        System.assert(launchpadsPagination3.equals(launchpadsPagination4));
        System.assertEquals(launchpadsPagination1.hashCode(), launchpadsPagination2.hashCode());
        System.assertEquals(launchpadsPagination3.hashCode(), launchpadsPagination4.hashCode());
    }
}