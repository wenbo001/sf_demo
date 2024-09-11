@isTest
private class OASPlanLimitTest {
    @isTest
    private static void equalsSameInstance() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = planLimit1;
        OASPlanLimit planLimit3 = new OASPlanLimit();
        OASPlanLimit planLimit4 = planLimit3;

        System.assert(planLimit1.equals(planLimit2));
        System.assert(planLimit2.equals(planLimit1));
        System.assert(planLimit1.equals(planLimit1));
        System.assert(planLimit3.equals(planLimit4));
        System.assert(planLimit4.equals(planLimit3));
        System.assert(planLimit3.equals(planLimit3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = OASPlanLimit.getExample();
        OASPlanLimit planLimit3 = new OASPlanLimit();
        OASPlanLimit planLimit4 = new OASPlanLimit();

        System.assert(planLimit1.equals(planLimit2));
        System.assert(planLimit2.equals(planLimit1));
        System.assert(planLimit3.equals(planLimit4));
        System.assert(planLimit4.equals(planLimit3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = new OASPlanLimit();

        System.assertEquals(false, planLimit1.equals('foo'));
        System.assertEquals(false, planLimit2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = new OASPlanLimit();
        OASPlanLimit planLimit3;

        System.assertEquals(false, planLimit1.equals(planLimit3));
        System.assertEquals(false, planLimit2.equals(planLimit3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = new OASPlanLimit();

        System.assertEquals(planLimit1.hashCode(), planLimit1.hashCode());
        System.assertEquals(planLimit2.hashCode(), planLimit2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASPlanLimit planLimit1 = OASPlanLimit.getExample();
        OASPlanLimit planLimit2 = OASPlanLimit.getExample();
        OASPlanLimit planLimit3 = new OASPlanLimit();
        OASPlanLimit planLimit4 = new OASPlanLimit();

        System.assert(planLimit1.equals(planLimit2));
        System.assert(planLimit3.equals(planLimit4));
        System.assertEquals(planLimit1.hashCode(), planLimit2.hashCode());
        System.assertEquals(planLimit3.hashCode(), planLimit4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASPlanLimit planLimit = new OASPlanLimit();
        Map<String, String> propertymappings = planLimit.getPropertyMappings();
        System.assertEquals('r_limit', propertymappings.get('limit'));
    }
}