@isTest
private class OASInterventionsOfferedTest {
    @isTest
    private static void equalsSameInstance() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = interventionsOffered1;
        OASInterventionsOffered interventionsOffered3 = new OASInterventionsOffered();
        OASInterventionsOffered interventionsOffered4 = interventionsOffered3;

        System.assert(interventionsOffered1.equals(interventionsOffered2));
        System.assert(interventionsOffered2.equals(interventionsOffered1));
        System.assert(interventionsOffered1.equals(interventionsOffered1));
        System.assert(interventionsOffered3.equals(interventionsOffered4));
        System.assert(interventionsOffered4.equals(interventionsOffered3));
        System.assert(interventionsOffered3.equals(interventionsOffered3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered3 = new OASInterventionsOffered();
        OASInterventionsOffered interventionsOffered4 = new OASInterventionsOffered();

        System.assert(interventionsOffered1.equals(interventionsOffered2));
        System.assert(interventionsOffered2.equals(interventionsOffered1));
        System.assert(interventionsOffered3.equals(interventionsOffered4));
        System.assert(interventionsOffered4.equals(interventionsOffered3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = new OASInterventionsOffered();

        System.assertEquals(false, interventionsOffered1.equals('foo'));
        System.assertEquals(false, interventionsOffered2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = new OASInterventionsOffered();
        OASInterventionsOffered interventionsOffered3;

        System.assertEquals(false, interventionsOffered1.equals(interventionsOffered3));
        System.assertEquals(false, interventionsOffered2.equals(interventionsOffered3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = new OASInterventionsOffered();

        System.assertEquals(interventionsOffered1.hashCode(), interventionsOffered1.hashCode());
        System.assertEquals(interventionsOffered2.hashCode(), interventionsOffered2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASInterventionsOffered interventionsOffered1 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered2 = OASInterventionsOffered.getExample();
        OASInterventionsOffered interventionsOffered3 = new OASInterventionsOffered();
        OASInterventionsOffered interventionsOffered4 = new OASInterventionsOffered();

        System.assert(interventionsOffered1.equals(interventionsOffered2));
        System.assert(interventionsOffered3.equals(interventionsOffered4));
        System.assertEquals(interventionsOffered1.hashCode(), interventionsOffered2.hashCode());
        System.assertEquals(interventionsOffered3.hashCode(), interventionsOffered4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASInterventionsOffered interventionsOffered = new OASInterventionsOffered();
        Map<String, String> propertymappings = interventionsOffered.getPropertyMappings();
        System.assertEquals('interventionType', propertymappings.get('intervention_type'));
        System.assertEquals('interventionValue', propertymappings.get('intervention_value'));
        System.assertEquals('interventionResponse', propertymappings.get('intervention_response'));
    }
}