@isTest
private class OASInterventionTest {
    @isTest
    private static void equalsSameInstance() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = intervention1;
        OASIntervention intervention3 = new OASIntervention();
        OASIntervention intervention4 = intervention3;

        System.assert(intervention1.equals(intervention2));
        System.assert(intervention2.equals(intervention1));
        System.assert(intervention1.equals(intervention1));
        System.assert(intervention3.equals(intervention4));
        System.assert(intervention4.equals(intervention3));
        System.assert(intervention3.equals(intervention3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = OASIntervention.getExample();
        OASIntervention intervention3 = new OASIntervention();
        OASIntervention intervention4 = new OASIntervention();

        System.assert(intervention1.equals(intervention2));
        System.assert(intervention2.equals(intervention1));
        System.assert(intervention3.equals(intervention4));
        System.assert(intervention4.equals(intervention3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = new OASIntervention();

        System.assertEquals(false, intervention1.equals('foo'));
        System.assertEquals(false, intervention2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = new OASIntervention();
        OASIntervention intervention3;

        System.assertEquals(false, intervention1.equals(intervention3));
        System.assertEquals(false, intervention2.equals(intervention3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = new OASIntervention();

        System.assertEquals(intervention1.hashCode(), intervention1.hashCode());
        System.assertEquals(intervention2.hashCode(), intervention2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASIntervention intervention1 = OASIntervention.getExample();
        OASIntervention intervention2 = OASIntervention.getExample();
        OASIntervention intervention3 = new OASIntervention();
        OASIntervention intervention4 = new OASIntervention();

        System.assert(intervention1.equals(intervention2));
        System.assert(intervention3.equals(intervention4));
        System.assertEquals(intervention1.hashCode(), intervention2.hashCode());
        System.assertEquals(intervention3.hashCode(), intervention4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASIntervention intervention = new OASIntervention();
        Map<String, String> propertymappings = intervention.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('interventionAction', propertymappings.get('intervention_action'));
        System.assertEquals('interventionDate', propertymappings.get('intervention_date'));
        System.assertEquals('interventionsOffered', propertymappings.get('interventions_offered'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASIntervention intervention = new OASIntervention();
        System.assertEquals(new List<OASInterventionsOffered>(), intervention.interventionsOffered);
        System.assertEquals(null, intervention.guid);
        System.assertEquals(null, intervention.login);
        System.assertEquals(null, intervention.orgGuid);
        System.assertEquals(null, intervention.interventionAction);
        System.assertEquals(null, intervention.interventionDate);
    }
}