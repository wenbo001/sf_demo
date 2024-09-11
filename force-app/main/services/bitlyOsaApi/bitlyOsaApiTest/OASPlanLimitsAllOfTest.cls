@isTest
private class OASPlanLimitsAllOfTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = planLimitsAllOf1;
        OASPlanLimitsAllOf planLimitsAllOf3 = new OASPlanLimitsAllOf();
        OASPlanLimitsAllOf planLimitsAllOf4 = planLimitsAllOf3;

        System.assert(planLimitsAllOf1.equals(planLimitsAllOf2));
        System.assert(planLimitsAllOf2.equals(planLimitsAllOf1));
        System.assert(planLimitsAllOf1.equals(planLimitsAllOf1));
        System.assert(planLimitsAllOf3.equals(planLimitsAllOf4));
        System.assert(planLimitsAllOf4.equals(planLimitsAllOf3));
        System.assert(planLimitsAllOf3.equals(planLimitsAllOf3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf3 = new OASPlanLimitsAllOf();
        OASPlanLimitsAllOf planLimitsAllOf4 = new OASPlanLimitsAllOf();

        System.assert(planLimitsAllOf1.equals(planLimitsAllOf2));
        System.assert(planLimitsAllOf2.equals(planLimitsAllOf1));
        System.assert(planLimitsAllOf3.equals(planLimitsAllOf4));
        System.assert(planLimitsAllOf4.equals(planLimitsAllOf3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = new OASPlanLimitsAllOf();

        System.assertEquals(false, planLimitsAllOf1.equals('foo'));
        System.assertEquals(false, planLimitsAllOf2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = new OASPlanLimitsAllOf();
        OASPlanLimitsAllOf planLimitsAllOf3;

        System.assertEquals(false, planLimitsAllOf1.equals(planLimitsAllOf3));
        System.assertEquals(false, planLimitsAllOf2.equals(planLimitsAllOf3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = new OASPlanLimitsAllOf();

        System.assertEquals(planLimitsAllOf1.hashCode(), planLimitsAllOf1.hashCode());
        System.assertEquals(planLimitsAllOf2.hashCode(), planLimitsAllOf2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlanLimitsAllOf planLimitsAllOf1 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf2 = OASPlanLimitsAllOf.getExample();
        OASPlanLimitsAllOf planLimitsAllOf3 = new OASPlanLimitsAllOf();
        OASPlanLimitsAllOf planLimitsAllOf4 = new OASPlanLimitsAllOf();

        System.assert(planLimitsAllOf1.equals(planLimitsAllOf2));
        System.assert(planLimitsAllOf3.equals(planLimitsAllOf4));
        System.assertEquals(planLimitsAllOf1.hashCode(), planLimitsAllOf2.hashCode());
        System.assertEquals(planLimitsAllOf3.hashCode(), planLimitsAllOf4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlanLimitsAllOf planLimitsAllOf = new OASPlanLimitsAllOf();
        Map<String, String> propertymappings = planLimitsAllOf.getPropertyMappings();
        System.assertEquals('organizationGuid', propertymappings.get('organization_guid'));
        System.assertEquals('planLimits', propertymappings.get('plan_limits'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASPlanLimitsAllOf planLimitsAllOf = new OASPlanLimitsAllOf();
        System.assertEquals(new List<OASPlanLimit>(), planLimitsAllOf.planLimits);
        System.assertEquals(null, planLimitsAllOf.organizationGuid);
    }
}