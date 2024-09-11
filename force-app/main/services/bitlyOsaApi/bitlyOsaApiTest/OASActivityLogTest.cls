@isTest
private class OASActivityLogTest {
    @isTest
    private static void equalsSameInstance() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = activityLog1;
        OASActivityLog activityLog3 = new OASActivityLog();
        OASActivityLog activityLog4 = activityLog3;

        System.assert(activityLog1.equals(activityLog2));
        System.assert(activityLog2.equals(activityLog1));
        System.assert(activityLog1.equals(activityLog1));
        System.assert(activityLog3.equals(activityLog4));
        System.assert(activityLog4.equals(activityLog3));
        System.assert(activityLog3.equals(activityLog3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = OASActivityLog.getExample();
        OASActivityLog activityLog3 = new OASActivityLog();
        OASActivityLog activityLog4 = new OASActivityLog();

        System.assert(activityLog1.equals(activityLog2));
        System.assert(activityLog2.equals(activityLog1));
        System.assert(activityLog3.equals(activityLog4));
        System.assert(activityLog4.equals(activityLog3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = new OASActivityLog();

        System.assertEquals(false, activityLog1.equals('foo'));
        System.assertEquals(false, activityLog2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = new OASActivityLog();
        OASActivityLog activityLog3;

        System.assertEquals(false, activityLog1.equals(activityLog3));
        System.assertEquals(false, activityLog2.equals(activityLog3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = new OASActivityLog();

        System.assertEquals(activityLog1.hashCode(), activityLog1.hashCode());
        System.assertEquals(activityLog2.hashCode(), activityLog2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASActivityLog activityLog1 = OASActivityLog.getExample();
        OASActivityLog activityLog2 = OASActivityLog.getExample();
        OASActivityLog activityLog3 = new OASActivityLog();
        OASActivityLog activityLog4 = new OASActivityLog();

        System.assert(activityLog1.equals(activityLog2));
        System.assert(activityLog3.equals(activityLog4));
        System.assertEquals(activityLog1.hashCode(), activityLog2.hashCode());
        System.assertEquals(activityLog3.hashCode(), activityLog4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASActivityLog activityLog = new OASActivityLog();
        Map<String, String> propertymappings = activityLog.getPropertyMappings();
        System.assertEquals('actionDescription', propertymappings.get('action_description'));
        System.assertEquals('actionLogin', propertymappings.get('action_login'));
        System.assertEquals('orgGuid', propertymappings.get('org_guid'));
        System.assertEquals('countryCode', propertymappings.get('country_code'));
        System.assertEquals('subRegion', propertymappings.get('sub_region'));
        System.assertEquals('bitlyAdmin', propertymappings.get('bitly_admin'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASActivityLog activityLog = new OASActivityLog();
        System.assertEquals(new Map<String, String>(), activityLog.metadata);
        System.assertEquals(null, activityLog.actionDescription);
        System.assertEquals(null, activityLog.actionLogin);
        System.assertEquals(null, activityLog.ts);
        System.assertEquals(null, activityLog.user);
        System.assertEquals(null, activityLog.action);
        System.assertEquals(null, activityLog.orgGuid);
        System.assertEquals(null, activityLog.id);
        System.assertEquals(null, activityLog.countryCode);
        System.assertEquals(null, activityLog.region);
        System.assertEquals(null, activityLog.subRegion);
        System.assertEquals(null, activityLog.city);
        System.assertEquals(null, activityLog.isp);
        System.assertEquals(null, activityLog.bitlyAdmin);
    }
}