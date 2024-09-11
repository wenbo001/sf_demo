@isTest
private class OASActivityLogsTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = activityLogs1;
        OASActivityLogs activityLogs3 = new OASActivityLogs();
        OASActivityLogs activityLogs4 = activityLogs3;

        System.assert(activityLogs1.equals(activityLogs2));
        System.assert(activityLogs2.equals(activityLogs1));
        System.assert(activityLogs1.equals(activityLogs1));
        System.assert(activityLogs3.equals(activityLogs4));
        System.assert(activityLogs4.equals(activityLogs3));
        System.assert(activityLogs3.equals(activityLogs3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs3 = new OASActivityLogs();
        OASActivityLogs activityLogs4 = new OASActivityLogs();

        System.assert(activityLogs1.equals(activityLogs2));
        System.assert(activityLogs2.equals(activityLogs1));
        System.assert(activityLogs3.equals(activityLogs4));
        System.assert(activityLogs4.equals(activityLogs3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = new OASActivityLogs();

        System.assertEquals(false, activityLogs1.equals('foo'));
        System.assertEquals(false, activityLogs2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = new OASActivityLogs();
        OASActivityLogs activityLogs3;

        System.assertEquals(false, activityLogs1.equals(activityLogs3));
        System.assertEquals(false, activityLogs2.equals(activityLogs3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = new OASActivityLogs();

        System.assertEquals(activityLogs1.hashCode(), activityLogs1.hashCode());
        System.assertEquals(activityLogs2.hashCode(), activityLogs2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivityLogs activityLogs1 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs2 = OASActivityLogs.getExample();
        OASActivityLogs activityLogs3 = new OASActivityLogs();
        OASActivityLogs activityLogs4 = new OASActivityLogs();

        System.assert(activityLogs1.equals(activityLogs2));
        System.assert(activityLogs3.equals(activityLogs4));
        System.assertEquals(activityLogs1.hashCode(), activityLogs2.hashCode());
        System.assertEquals(activityLogs3.hashCode(), activityLogs4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASActivityLogs activityLogs = new OASActivityLogs();
        Map<String, String> propertymappings = activityLogs.getPropertyMappings();
        System.assertEquals('nextPage', propertymappings.get('next_page'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASActivityLogs activityLogs = new OASActivityLogs();
        System.assertEquals(new List<OASActivityLog>(), activityLogs.activity);
        System.assertEquals(null, activityLogs.nextPage);
    }
}