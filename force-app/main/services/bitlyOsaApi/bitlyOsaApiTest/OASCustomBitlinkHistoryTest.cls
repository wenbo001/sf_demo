@isTest
private class OASCustomBitlinkHistoryTest {
    @isTest
    private static void equalsSameInstance() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = customBitlinkHistory1;
        OASCustomBitlinkHistory customBitlinkHistory3 = new OASCustomBitlinkHistory();
        OASCustomBitlinkHistory customBitlinkHistory4 = customBitlinkHistory3;

        System.assert(customBitlinkHistory1.equals(customBitlinkHistory2));
        System.assert(customBitlinkHistory2.equals(customBitlinkHistory1));
        System.assert(customBitlinkHistory1.equals(customBitlinkHistory1));
        System.assert(customBitlinkHistory3.equals(customBitlinkHistory4));
        System.assert(customBitlinkHistory4.equals(customBitlinkHistory3));
        System.assert(customBitlinkHistory3.equals(customBitlinkHistory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory3 = new OASCustomBitlinkHistory();
        OASCustomBitlinkHistory customBitlinkHistory4 = new OASCustomBitlinkHistory();

        System.assert(customBitlinkHistory1.equals(customBitlinkHistory2));
        System.assert(customBitlinkHistory2.equals(customBitlinkHistory1));
        System.assert(customBitlinkHistory3.equals(customBitlinkHistory4));
        System.assert(customBitlinkHistory4.equals(customBitlinkHistory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = new OASCustomBitlinkHistory();

        System.assertEquals(false, customBitlinkHistory1.equals('foo'));
        System.assertEquals(false, customBitlinkHistory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = new OASCustomBitlinkHistory();
        OASCustomBitlinkHistory customBitlinkHistory3;

        System.assertEquals(false, customBitlinkHistory1.equals(customBitlinkHistory3));
        System.assertEquals(false, customBitlinkHistory2.equals(customBitlinkHistory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = new OASCustomBitlinkHistory();

        System.assertEquals(customBitlinkHistory1.hashCode(), customBitlinkHistory1.hashCode());
        System.assertEquals(customBitlinkHistory2.hashCode(), customBitlinkHistory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCustomBitlinkHistory customBitlinkHistory1 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory2 = OASCustomBitlinkHistory.getExample();
        OASCustomBitlinkHistory customBitlinkHistory3 = new OASCustomBitlinkHistory();
        OASCustomBitlinkHistory customBitlinkHistory4 = new OASCustomBitlinkHistory();

        System.assert(customBitlinkHistory1.equals(customBitlinkHistory2));
        System.assert(customBitlinkHistory3.equals(customBitlinkHistory4));
        System.assertEquals(customBitlinkHistory1.hashCode(), customBitlinkHistory2.hashCode());
        System.assertEquals(customBitlinkHistory3.hashCode(), customBitlinkHistory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCustomBitlinkHistory customBitlinkHistory = new OASCustomBitlinkHistory();
        Map<String, String> propertymappings = customBitlinkHistory.getPropertyMappings();
        System.assertEquals('groupGuid', propertymappings.get('group_guid'));
        System.assertEquals('longUrl', propertymappings.get('long_url'));
        System.assertEquals('firstCreated', propertymappings.get('first_created'));
        System.assertEquals('isActive', propertymappings.get('is_active'));
    }
}