@isTest
private class OASEventTest {
    @isTest
    private static void equalsSameInstance() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = event1;
        OASEvent event3 = new OASEvent();
        OASEvent event4 = event3;

        System.assert(event1.equals(event2));
        System.assert(event2.equals(event1));
        System.assert(event1.equals(event1));
        System.assert(event3.equals(event4));
        System.assert(event4.equals(event3));
        System.assert(event3.equals(event3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = OASEvent.getExample();
        OASEvent event3 = new OASEvent();
        OASEvent event4 = new OASEvent();

        System.assert(event1.equals(event2));
        System.assert(event2.equals(event1));
        System.assert(event3.equals(event4));
        System.assert(event4.equals(event3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = new OASEvent();

        System.assertEquals(false, event1.equals('foo'));
        System.assertEquals(false, event2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = new OASEvent();
        OASEvent event3;

        System.assertEquals(false, event1.equals(event3));
        System.assertEquals(false, event2.equals(event3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = new OASEvent();

        System.assertEquals(event1.hashCode(), event1.hashCode());
        System.assertEquals(event2.hashCode(), event2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASEvent event1 = OASEvent.getExample();
        OASEvent event2 = OASEvent.getExample();
        OASEvent event3 = new OASEvent();
        OASEvent event4 = new OASEvent();

        System.assert(event1.equals(event2));
        System.assert(event3.equals(event4));
        System.assertEquals(event1.hashCode(), event2.hashCode());
        System.assertEquals(event3.hashCode(), event4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASEvent event = new OASEvent();
        Map<String, String> propertymappings = event.getPropertyMappings();
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('uiAction', propertymappings.get('ui_action'));
        System.assertEquals('uiActionDate', propertymappings.get('ui_action_date'));
        System.assertEquals('initiatedBy', propertymappings.get('initiated_by'));
    }
}