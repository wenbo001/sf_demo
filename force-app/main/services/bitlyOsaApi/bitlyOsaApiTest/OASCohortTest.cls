@isTest
private class OASCohortTest {
    @isTest
    private static void equalsSameInstance() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = cohort1;
        OASCohort cohort3 = new OASCohort();
        OASCohort cohort4 = cohort3;

        System.assert(cohort1.equals(cohort2));
        System.assert(cohort2.equals(cohort1));
        System.assert(cohort1.equals(cohort1));
        System.assert(cohort3.equals(cohort4));
        System.assert(cohort4.equals(cohort3));
        System.assert(cohort3.equals(cohort3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = OASCohort.getExample();
        OASCohort cohort3 = new OASCohort();
        OASCohort cohort4 = new OASCohort();

        System.assert(cohort1.equals(cohort2));
        System.assert(cohort2.equals(cohort1));
        System.assert(cohort3.equals(cohort4));
        System.assert(cohort4.equals(cohort3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = new OASCohort();

        System.assertEquals(false, cohort1.equals('foo'));
        System.assertEquals(false, cohort2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = new OASCohort();
        OASCohort cohort3;

        System.assertEquals(false, cohort1.equals(cohort3));
        System.assertEquals(false, cohort2.equals(cohort3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = new OASCohort();

        System.assertEquals(cohort1.hashCode(), cohort1.hashCode());
        System.assertEquals(cohort2.hashCode(), cohort2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCohort cohort1 = OASCohort.getExample();
        OASCohort cohort2 = OASCohort.getExample();
        OASCohort cohort3 = new OASCohort();
        OASCohort cohort4 = new OASCohort();

        System.assert(cohort1.equals(cohort2));
        System.assert(cohort3.equals(cohort4));
        System.assertEquals(cohort1.hashCode(), cohort2.hashCode());
        System.assertEquals(cohort3.hashCode(), cohort4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCohort cohort = new OASCohort();
        Map<String, String> propertymappings = cohort.getPropertyMappings();
        System.assertEquals('cohortNumber', propertymappings.get('cohort_number'));
        System.assertEquals('cohortDescription', propertymappings.get('cohort_description'));
    }
}