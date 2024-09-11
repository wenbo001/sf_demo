@isTest
private class OASTimeUnitTest {
    @isTest
    private static void allowableValues() {
        Set<OASTimeUnit> expected = new Set<OASTimeUnit>{
            OASTimeUnit.MINUTE,
            OASTimeUnit.HOUR,
            OASTimeUnit.DAY,
            OASTimeUnit.WEEK,
            OASTimeUnit.MONTH
        };
        Set<OASTimeUnit> actual  = new Set<OASTimeUnit>(OASTimeUnit.values());
        System.assertEquals(expected, actual);
    }
}