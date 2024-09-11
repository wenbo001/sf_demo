@isTest
private class OASTotalEngagementsTest {
    @isTest
    private static void equalsSameInstance() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = totalEngagements1;
        OASTotalEngagements totalEngagements3 = new OASTotalEngagements();
        OASTotalEngagements totalEngagements4 = totalEngagements3;

        System.assert(totalEngagements1.equals(totalEngagements2));
        System.assert(totalEngagements2.equals(totalEngagements1));
        System.assert(totalEngagements1.equals(totalEngagements1));
        System.assert(totalEngagements3.equals(totalEngagements4));
        System.assert(totalEngagements4.equals(totalEngagements3));
        System.assert(totalEngagements3.equals(totalEngagements3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements3 = new OASTotalEngagements();
        OASTotalEngagements totalEngagements4 = new OASTotalEngagements();

        System.assert(totalEngagements1.equals(totalEngagements2));
        System.assert(totalEngagements2.equals(totalEngagements1));
        System.assert(totalEngagements3.equals(totalEngagements4));
        System.assert(totalEngagements4.equals(totalEngagements3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = new OASTotalEngagements();

        System.assertEquals(false, totalEngagements1.equals('foo'));
        System.assertEquals(false, totalEngagements2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = new OASTotalEngagements();
        OASTotalEngagements totalEngagements3;

        System.assertEquals(false, totalEngagements1.equals(totalEngagements3));
        System.assertEquals(false, totalEngagements2.equals(totalEngagements3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = new OASTotalEngagements();

        System.assertEquals(totalEngagements1.hashCode(), totalEngagements1.hashCode());
        System.assertEquals(totalEngagements2.hashCode(), totalEngagements2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASTotalEngagements totalEngagements1 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements2 = OASTotalEngagements.getExample();
        OASTotalEngagements totalEngagements3 = new OASTotalEngagements();
        OASTotalEngagements totalEngagements4 = new OASTotalEngagements();

        System.assert(totalEngagements1.equals(totalEngagements2));
        System.assert(totalEngagements3.equals(totalEngagements4));
        System.assertEquals(totalEngagements1.hashCode(), totalEngagements2.hashCode());
        System.assertEquals(totalEngagements3.hashCode(), totalEngagements4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASTotalEngagements totalEngagements = new OASTotalEngagements();
        Map<String, String> propertymappings = totalEngagements.getPropertyMappings();
        System.assertEquals('unitReference', propertymappings.get('unit_reference'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASTotalEngagements totalEngagements = new OASTotalEngagements();
        System.assertEquals(new List<OASEngagements>(), totalEngagements.engagements);
        System.assertEquals(null, totalEngagements.units);
        System.assertEquals(null, totalEngagements.unit);
        System.assertEquals(null, totalEngagements.unitReference);
    }
}